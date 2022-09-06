-- costomertbl, dealertbl PK 수정
ALTER TABLE customertbl
DROP CONSTRAINT customer_PK;

alter table customertbl
add constraint PK_customer_c_phone primary key (c_phone);

ALTER TABLE dealertbl
DROP CONSTRAINT dealer_PK;

-- PK 지정위한 중복 내용 확인 및 중복 수정

SELECT D_phone, COUNT(d_phone) as "중복" FROM dealertbl
GROUP BY D_phone HAVING count(d_phone) > 1;

select * from dealertbl where d_phone = 1055556666;

update dealertbl set D_phone='01096531212' where d_name = '손아타';
update dealertbl set D_phone='01096531215' where d_name = '장음주';

alter table dealertbl
add constraint PK_dealer_d_phone primary key (d_phone);

-- 판매 차량 정보 (내부확인용) View
create or replace view v_SaleList
as select t.C_name, c.brand, c.model, c.category, st.price, t.trade_date, m.c_phone,t.insureance, t.d_name, b.area, b.b_name from tradetbl t
inner join stocked_cartbl st on t.s_number = st.s_number
inner join carinfotbl c on st.model = c.model
inner join customertbl m on m.c_name = t.c_name
inner join branchtbl b on b.b_name = t.b_name;

select * from v_SaleList;
--drop view v_SaleList;

-- 구매 내역 확인(고객 확인용)
create or replace view v_buyinfomation
as select t.t_number, t.trade_date, t.c_name, m.c_phone, c.brand, st.p_year, st.model, st.km,t.insureance,  st.price, t.d_name, t.b_name, d.d_phone  from tradetbl t
inner join stocked_cartbl st on t.s_number = st.s_number
inner join carinfotbl c on st.model = c.model
inner join customertbl m on m.c_name = t.c_name
inner join branchtbl b on b.b_name = t.b_name
inner join dealertbl d on d.workplace=b.b_name;

select * from v_buyinfomation;

---------빠진 차량 정보
insert into carinfotbl values ('르노','중형차','SM5',2000,5);


--판매되지 않고 남은 차량 정보 view
create or replace view V_suppliedCAR
as select t1.s_number, c.brand, c.category, t1.model, t1.p_year,t1.km,t1.price 
from(select st.s_number, st.model, st.p_year, st.km, st.price from stocked_cartbl st
left outer join tradetbl t on t.s_number = st.s_number 
where t.t_number is null) t1
inner join carinfotbl c on t1.model = c.model;

select * from v_suppliedcar;

-- 제약 추가하기(최소 주행거리, 차종 분류제한

ALTER TABLE stocked_cartbl
	ADD CONSTRAINT CK_km
	CHECK   (km >= 100) ;
    
ALTER TABLE carinfotbl
	ADD CONSTRAINT CK_category
	CHECK  (category IN ('경차','소형차','준중형차','중형차','소형SUV','SUV','트럭')) 
	ENABLE NOVALIDATE ;








