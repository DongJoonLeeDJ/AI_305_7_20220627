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

---------���� ���� ����
insert into carinfotbl values ('����','������','SM5',2000,5);


--�Ǹŵ��� �ʰ� ���� ���� ���� view
create or replace view V_suppliedCAR
as select t1.s_number, c.brand, c.category, t1.model, t1.p_year,t1.km,t1.price 
from(select st.s_number, st.model, st.p_year, st.km, st.price from stocked_cartbl st
left outer join tradetbl t on t.s_number = st.s_number 
where t.t_number is null) t1
inner join carinfotbl c on t1.model = c.model;

select * from v_suppliedcar;

-- ���� �߰��ϱ�(�ּ� ����Ÿ�, ���� �з�����

ALTER TABLE stocked_cartbl
	ADD CONSTRAINT CK_km
	CHECK   (km >= 100) ;
    
ALTER TABLE carinfotbl
	ADD CONSTRAINT CK_category
	CHECK  (category IN ('����','������','��������','������','����SUV','SUV','Ʈ��')) 
	ENABLE NOVALIDATE ;








