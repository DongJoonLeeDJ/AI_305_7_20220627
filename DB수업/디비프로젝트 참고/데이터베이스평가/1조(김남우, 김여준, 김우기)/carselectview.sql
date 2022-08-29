-- ������ b_name�� ������ workplace ����

alter table dealertbl
    add constraint fk_dealertbl_branchtbl
    foreign key(workplace)
    references branchtbl(b_name);
-- ���� �߻�
-- ������ �ٸ� ���� ����
update dealertbl set workplace='���ҽ�Ƽ��' where workplace='�ؿ����';

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
