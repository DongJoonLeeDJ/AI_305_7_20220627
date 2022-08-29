-- fk Į�� ����
alter table stocked_cartbl drop column carinfotbl_model;

-- column ũ�� ����
alter table dealertbl
    modify( workplace nchar(8) null);
    
-- Į�� ����
alter table tradetbl drop column model;
alter table tradetbl drop column price;
alter table tradetbl drop column stocked_cartbl_s_number;
alter table tradetbl drop column carinfotbl_model;
alter table tradetbl drop column branchtbl_b_name;
alter table tradetbl drop column customertbl_c_name;
alter table tradetbl drop column dealertbl_d_name;

-- column ũ�� ����
alter table tradetbl
    modify(INSUREANCE nchar(3));

-- ����,�� ��ȭ��ȣ Į�� ���� ����
-- �Էµ� ���̺� ����
drop table dealerTBL;
drop table customerTBL;

-- ����, �� ���̺� ��ȭ��ȣ number->nvarchar2(11)
alter table dealerTBL
    modify(d_phone nvarchar2(11));
alter table customerTBL
    modify(c_phone nvarchar2(11));

-- costomertbl, dealertbl PK ����
ALTER TABLE customertbl
DROP CONSTRAINT customer_PK;

alter table customertbl
add constraint PK_customer_c_phone primary key (c_phone);

ALTER TABLE dealertbl
DROP CONSTRAINT dealer_PK;

-- PK �������� �ߺ� ���� Ȯ�� �� �ߺ� ����

SELECT D_phone, COUNT(d_phone) as "�ߺ�" FROM dealertbl
GROUP BY D_phone HAVING count(d_phone) > 1;

select * from dealertbl where d_phone = 1055556666;

update dealertbl set D_phone='01096531212' where d_name = '�վ�Ÿ';
update dealertbl set D_phone='01096531215' where d_name = '������';

alter table dealertbl
add constraint PK_dealer_d_phone primary key (d_phone);

-- ������ b_name�� ������ workplace ����
-- ���� �߻�
-- ������ �ٸ� ���� ����
update dealertbl set workplace='���ҽ�Ƽ��' where workplace='�ؿ����';

alter table dealertbl
    add constraint fk_dealertbl_branchtbl
    foreign key(workplace)
    references branchtbl(b_name);


---------���� ���� ����
insert into carinfotbl values ('����','������','SM5',2000,5);

-- �Ǹ� ���� ���� (����Ȯ�ο�) View
create or replace view v_SaleList
as select t.C_name, c.brand, c.model, c.category, st.price, t.trade_date, m.c_phone,t.insureance, t.d_name, b.area, b.b_name from tradetbl t
inner join stocked_cartbl st on t.s_number = st.s_number
inner join carinfotbl c on st.model = c.model
inner join customertbl m on m.c_name = t.c_name
inner join branchtbl b on b.b_name = t.b_name;

select * from v_SaleList;
--drop view v_SaleList;

-- ���� ���� Ȯ��(�� Ȯ�ο�)
create or replace view v_buyinfomation
as select t.t_number, t.trade_date, t.c_name, m.c_phone, c.brand, st.p_year, st.model, st.km,t.insureance,  st.price, t.d_name, t.b_name, d.d_phone  from tradetbl t
inner join stocked_cartbl st on t.s_number = st.s_number
inner join carinfotbl c on st.model = c.model
inner join customertbl m on m.c_name = t.c_name
inner join branchtbl b on b.b_name = t.b_name
inner join dealertbl d on d.workplace=b.b_name;

select * from v_buyinfomation;

--�Ǹŵ��� �ʰ� ���� ���� ���� view
create or replace view V_suppliedCAR
as select t1.s_number, c.brand, c.category, t1.model, t1.p_year,t1.km,t1.price 
from(select st.s_number, st.model, st.p_year, st.km, st.price from stocked_cartbl st
left outer join tradetbl t on t.s_number = st.s_number 
where t.t_number is null) t1
inner join carinfotbl c on t1.model = c.model;

select * from v_suppliedcar;

-- 1# : �ŷ��� ���� ����
SELECT
    c.c_name   "����",
    insureance "����",
    c_phone    "��ȭ��ȣ",
    trade_date "�ŷ���",
    d_name     "������"
FROM customertbl c
    INNER JOIN tradetbl t ON c.c_name = t.c_name;
    
-- 2# : �ŷ��� ��, �ŷ��� ��, ���� ����
SELECT
    c.c_name   "����",
    insureance "����",
    c_phone    "��ȭ��ȣ",
    trade_date "�ŷ���",
    d_name     "������",
    model      "�ܰ���",
    price      "����"
FROM tradetbl t
    INNER JOIN customertbl    c ON c.c_name = t.c_name
    INNER JOIN stocked_cartbl s ON t.s_number = s.s_number;
    
-- 3# : ��Ʈ�� �� ���
SELECT
    brand   "ȸ���",
    s.model "�ܰ���",
    p_year  "��ó⵵",
    km      "����Ÿ�",
    price   "����"
FROM carinfotbl c
    RIGHT OUTER JOIN stocked_cartbl s ON c.model = s.model
WHERE trouble IS NULL
ORDER BY price;
    
-- 4# : ��Ʈ�� ���� �� ���� ������ ���� ��� ��
SELECT * FROM stocked_cartbl
WHERE price IN ( (
        SELECT MAX(price)
        FROM stocked_cartbl
        WHERE trouble IS NOT NULL ),
        (SELECT MIN(price)
        FROM stocked_cartbl
        WHERE trouble IS NULL ) );

-- 5# �԰�� �� ��
SELECT
    model    "�ܰ���",
    COUNT(*) "�԰� ��"
FROM stocked_cartbl
GROUP BY model
ORDER BY COUNT(*) DESC;
    
-- 6# ���� ���� ��ȸ
SELECT * FROM dealertbl SAMPLE ( 20 );
        
-- 7# �ŷ��� �׸���� ��� ��
SELECT
    CAST(AVG(price) AS INT) "��հ�"
FROM stocked_cartbl s
    INNER JOIN tradetbl t ON s.s_number = t.s_number;
    
-- 8# �ŷ��� �׸���� ���� �� ���� ������ ���� ��� ���� ����
SELECT
    price "����",
    model "�ܰ���"
FROM stocked_cartbl s
    INNER JOIN tradetbl t ON s.s_number = t.s_number
WHERE price IN ( (
        SELECT MIN(price)
        FROM stocked_cartbl s
            INNER JOIN tradetbl t ON t.s_number = s.s_number),
        (SELECT MAX(price)
        FROM stocked_cartbl s
            INNER JOIN tradetbl t ON t.s_number = s.s_number ) )
ORDER BY price ASC;

-- #9 : �������� ���޺��� �����ϰ� ���� ������ ������ �б� ���� �� ����
CREATE VIEW v_dealertbl AS
    SELECT * FROM dealertbl
    ORDER BY(
            CASE
                WHEN position = '���' THEN
                    1
                WHEN position = '�븮' THEN
                    2
                WHEN position = '����' THEN
                    3
                WHEN position = '����' THEN
                    4
                ELSE
                    5
            END),
        position ASC, d_name ASC
WITH READ ONLY;

-- 10# �� ��ȸ
SELECT * FROM v_dealertbl;
    
-- 11# ����� 2000 �̻�, 4�ν� �̻�, ��Ʈ��x �� �� ���
SELECT * FROM stocked_cartbl s
    INNER JOIN carinfotbl c ON s.model = c.model
WHERE c.cc >= 2000
    AND c.boarding >= 4
    AND s.trouble IS NOT NULL;
    
-- 12# ���� ���� �߰������� ���� 8000 ���� �� �������� ���(���� ��, �ܰ���, �հ�)
SELECT
    COUNT(model) "�� ��",
    model        "�ܰ���",
    SUM(price)   "�հ�"
FROM stocked_cartbl
GROUP BY model
HAVING SUM(price) <= 8000
ORDER BY SUM(price) DESC;
        
-- 13# ���� �� ���� ���ݼ�
SELECT
    RANK()
    OVER(PARTITION BY model
         ORDER BY
             price DESC
    )       "���� ����",
    model   "�ܰ���",
    price   "����",
    trouble "�ļտ���"
FROM stocked_cartbl;
    
-- 14# ���� ������ �߾Ӱ�
SELECT DISTINCT
    model                    "�ܰ���",
    PERCENTILE_CONT(0.5) WITHIN GROUP(ORDER BY price)
    OVER(PARTITION BY model) "�߾Ӱ�"
FROM stocked_cartbl
ORDER BY "�߾Ӱ�";

-- 15# �ܰ������� ���� �� �߾Ӱ��� ���� �� ����
SELECT
    model                      "�ܰ���",
    price                      "����",
    p_year                     "��ó⵵",
    trouble                    "�ļտ���",
    price - ( PERCENTILE_CONT(0.5) WITHIN GROUP(ORDER BY price)
              OVER(PARTITION BY model) ) "���� ��"
FROM stocked_cartbl;
    
-- 16# ���� �����
SELECT
    model       "�ܰ���",
    price       "����",
    p_year      "��ó⵵",
    trouble     "�ļտ���",
    round(CUME_DIST()
          OVER(ORDER BY price), 3) * 100 "�����%"
FROM stocked_cartbl;

-- �𵨺� ��� ���� view
create or replace view v_avgpricetbl
as select model, cast(avg(price) as number(7,2)) as "�𵨺� ��հ���"
from stocked_cartbl group by model;
select * from v_avgpricetbl;

-- �𵨺� ��� ����Ÿ� view
create or replace view v_avgkmtbl
as select model, cast(avg(km) as number(7,2)) as "�𵨺� �������Ÿ�"
from stocked_cartbl group by model;
select * from v_avgkmtbl;

-- ���� ���� ���� view
create or replace view v_seoultbl
as select b.b_name, d.d_name, d.d_phone from dealertbl d inner join branchtbl b
on d.workplace=b.b_name where b.area='����';
select * from v_seoultbl;

-- �뱸 ���� ���� view
create or replace view v_daeguetbl
as select b.b_name, d.d_name, d.d_phone, d.position
from dealertbl d inner join branchtbl b
on d.workplace=b.b_name where b.area='�뱸' and b.detail_area='����';
select * from v_daeguetbl;

-- ������ ���� ���� view
create or replace view v_samewp as
select d.d_name, d.position, d.d_phone, b.area, b.detail_area, b.b_name
from dealertbl d inner join branchtbl b on d.workplace=b.b_name
where b.b_name in(select workplace from dealertbl group by workplace having count(workplace)>1)
order by b.area, b.b_name, d.position;
select * from v_samewp;

-- ����� view
create or replace view v_setotal as
select count(t.c_name) as "�ǸŰǼ�", sum(s.price) as "�����",
cast(avg(s.price) as number(7,2)) as "�Ǵ� �����"
from tradetbl t inner join stocked_cartbl s on s.s_number=t.s_number;
select * from v_setotal;

-- ���ŵ��� ���� ���� ���� ���� view
create or replace view v_stockm as
select s.s_number, s.model, s.p_year, s.km, s.price from stocked_cartbl s left outer join
(select t.t_number, t.c_name, s.s_number, s.model from tradetbl t inner join stocked_cartbl s on t.s_number=s.s_number) p
on s.model=p.model where p.c_name is null order by s.s_number;
select * from v_stockm;

-- �귣�庰 ��� ��ⷮ view
create or replace view v_ccb as
select brand, cast(avg(CC) as number(7,2)) as "�귣�庰 ��� ��ⷮ" 
from carinfotbl group by brand;
select * from v_ccb;

-- ��� ���ݺ��� ��� ���� view
create or replace view v_price as
select * from stocked_cartbl where price>
(select  cast(avg(price) as number(7,2)) as "��� ����" from stocked_cartbl);
select * from v_price;

-- �达 ���� ���� ���� ã��
select b.area, b.b_name, d.d_name, d.d_phone
from dealertbl d inner join branchtbl b on d.workplace=b.b_name
where d_name like '��%' order by b.area;

-- ���� �ŷ������� ���� ã��
select t.t_number, c.c_name, c.c_phone, t.insureance, t.trade_date, d.d_name, b.area, b.b_name
from customertbl c inner join tradetbl t on c.c_name=t.c_name
inner join dealertbl d on t.d_name=d.d_name  
inner join branchtbl b on d.workplace=b.b_name
order by t.t_number;

-- ����̷��� �ִ� ���� view
create or replace view v_trouble as
select * from stocked_cartbl where trouble is not null;
select * from v_trouble;

-- �ȸ� ������ ���� view�� Ȯ���ϰ� �߰� �԰�
create or replace view v_sellmodel as
select s.model, count(s.model) as "�Ǹż���" 
from tradetbl t inner join stocked_cartbl s on t.s_number=s.s_number
group by model;
select * from v_sellmodel;
-- �߰� ���� �԰�
insert into stocked_cartbl values(idSEQ.nextval,'E-Ŭ����',2020,47518,4610,'');
insert into stocked_cartbl values(idSEQ.nextval,'�ƹݶ�',2018,84280,1280,'');
insert into stocked_cartbl values(idSEQ.nextval,'����Ƽ��',2019,63286,1220,'����');
insert into stocked_cartbl values(idSEQ.nextval,'�ҳ�Ÿ',2021,19045,3160,'');
insert into stocked_cartbl values(idSEQ.nextval,'�ҳ�Ÿ',2019,57107,2470,'');
select * from stocked_cartbl;
-- SELECT * FROM CARDB.stocked_cartbl;

-- ���� ��ȯ ��û�� ���� ���� ��ȯ �� ����� ����
select * from tradetbl t inner join stocked_cartbl s on t.s_number=s.s_number;
-- ħ���������� �˰� �� ���������� ��ȯ��û
update tradetbl set s_number=19 where c_name='������';
select * from tradetbl t inner join stocked_cartbl s on t.s_number=s.s_number;
-- select * from CARDB.tradetbl t inner join CARDB.stocked_cartbl s on t.s_number=s.s_number;
-- ����� ����
create or replace view v_setotalv2 as
select count(t.c_name) as "�ǸŰǼ�", sum(s.price) as "�����",
cast(avg(s.price) as number(7,2)) as "�Ǵ� �����"
from tradetbl t inner join stocked_cartbl s on s.s_number=t.s_number;
select * from v_setotalv2;

-- �����ڰ� ������ ���� ���� ����
create or replace view v_hell as
select s.s_number, s.model, s.p_year, s.km, s.price, s.trouble, t.t_number, t.c_name 
from stocked_cartbl s full join tradetbl t on s.s_number=t.s_number
where t.c_name is not null or s.model in
(select s.model from stocked_cartbl s full join tradetbl t on s.s_number=t.s_number where t.c_name is not null);
select * from v_hell;
select * from v_hell where t_number is null;

-- �����ڰ� ������ ��
create or replace view v_smod as
select distinct(j1.model) from
(select * from stocked_cartbl s full join tradetbl t on s.s_number=t.s_number where t.t_number is null) J1
inner join
(select * from stocked_cartbl s inner join tradetbl t on s.s_number=t.s_number) J2
on J1.model=J2.model;
select * from v_smod;

-- ���� �߰��ϱ�(�ּ� ����Ÿ�, ���� �з�����

ALTER TABLE stocked_cartbl
	ADD CONSTRAINT CK_km
	CHECK   (km >= 100) ;
    
ALTER TABLE carinfotbl
	ADD CONSTRAINT CK_category
	CHECK  (category IN ('����','������','��������','������','����SUV','SUV','Ʈ��')) 
	ENABLE NOVALIDATE ;