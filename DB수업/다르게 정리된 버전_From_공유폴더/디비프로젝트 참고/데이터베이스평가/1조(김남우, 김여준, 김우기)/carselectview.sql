-- 지점의 b_name과 딜러의 workplace 연결

alter table dealertbl
    add constraint fk_dealertbl_branchtbl
    foreign key(workplace)
    references branchtbl(b_name);
-- 오류 발생
-- 지점이 다른 오류 수정
update dealertbl set workplace='센텀시티점' where workplace='해운대점';

-- 모델별 평균 가격 view
create or replace view v_avgpricetbl
as select model, cast(avg(price) as number(7,2)) as "모델별 평균가격"
from stocked_cartbl group by model;
select * from v_avgpricetbl;

-- 모델별 평균 주행거리 view
create or replace view v_avgkmtbl
as select model, cast(avg(km) as number(7,2)) as "모델별 평균주행거리"
from stocked_cartbl group by model;
select * from v_avgkmtbl;

-- 서울 지역 딜러 view
create or replace view v_seoultbl
as select b.b_name, d.d_name, d.d_phone from dealertbl d inner join branchtbl b
on d.workplace=b.b_name where b.area='서울';
select * from v_seoultbl;

-- 대구 동구 딜러 view
create or replace view v_daeguetbl
as select b.b_name, d.d_name, d.d_phone, d.position
from dealertbl d inner join branchtbl b
on d.workplace=b.b_name where b.area='대구' and b.detail_area='동구';
select * from v_daeguetbl;

-- 지점이 같은 딜러 view
create or replace view v_samewp as
select d.d_name, d.position, d.d_phone, b.area, b.detail_area, b.b_name
from dealertbl d inner join branchtbl b on d.workplace=b.b_name
where b.b_name in(select workplace from dealertbl group by workplace having count(workplace)>1)
order by b.area, b.b_name, d.position;
select * from v_samewp;

-- 매출액 view
create or replace view v_setotal as
select count(t.c_name) as "판매건수", sum(s.price) as "매출액",
cast(avg(s.price) as number(7,2)) as "건당 매출액"
from tradetbl t inner join stocked_cartbl s on s.s_number=t.s_number;
select * from v_setotal;

-- 구매되지 않은 모델의 차량 정보 view
create or replace view v_stockm as
select s.s_number, s.model, s.p_year, s.km, s.price from stocked_cartbl s left outer join
(select t.t_number, t.c_name, s.s_number, s.model from tradetbl t inner join stocked_cartbl s on t.s_number=s.s_number) p
on s.model=p.model where p.c_name is null order by s.s_number;
select * from v_stockm;

-- 브랜드별 평균 배기량 view
create or replace view v_ccb as
select brand, cast(avg(CC) as number(7,2)) as "브랜드별 평균 배기량" 
from carinfotbl group by brand;
select * from v_ccb;

-- 평균 가격보다 비싼 차량 view
create or replace view v_price as
select * from stocked_cartbl where price>
(select  cast(avg(price) as number(7,2)) as "평균 가격" from stocked_cartbl);
select * from v_price;

-- 김씨 성을 가진 딜러 찾기
select b.area, b.b_name, d.d_name, d.d_phone
from dealertbl d inner join branchtbl b on d.workplace=b.b_name
where d_name like '김%' order by b.area;

-- 고객의 거래지역과 지점 찾기
select t.t_number, c.c_name, c.c_phone, t.insureance, t.trade_date, d.d_name, b.area, b.b_name
from customertbl c inner join tradetbl t on c.c_name=t.c_name
inner join dealertbl d on t.d_name=d.d_name  
inner join branchtbl b on d.workplace=b.b_name
order by t.t_number;

-- 사고이력이 있는 차량 view
create or replace view v_trouble as
select * from stocked_cartbl where trouble is not null;
select * from v_trouble;

-- 팔린 차량의 모델을 view로 확인하고 추가 입고
create or replace view v_sellmodel as
select s.model, count(s.model) as "판매수량" 
from tradetbl t inner join stocked_cartbl s on t.s_number=s.s_number
group by model;
select * from v_sellmodel;
-- 추가 차량 입고
insert into stocked_cartbl values(idSEQ.nextval,'E-클래스',2020,47518,4610,'');
insert into stocked_cartbl values(idSEQ.nextval,'아반떼',2018,84280,1280,'');
insert into stocked_cartbl values(idSEQ.nextval,'스포티지',2019,63286,1220,'반파');
insert into stocked_cartbl values(idSEQ.nextval,'소나타',2021,19045,3160,'');
insert into stocked_cartbl values(idSEQ.nextval,'소나타',2019,57107,2470,'');
select * from stocked_cartbl;
-- SELECT * FROM CARDB.stocked_cartbl;

-- 고객의 교환 요청에 따른 차량 교환 및 매출액 수정
select * from tradetbl t inner join stocked_cartbl s on t.s_number=s.s_number;
-- 침수차량임을 알게 된 박지유씨의 교환요청
update tradetbl set s_number=19 where c_name='박지유';
select * from tradetbl t inner join stocked_cartbl s on t.s_number=s.s_number;
-- select * from CARDB.tradetbl t inner join CARDB.stocked_cartbl s on t.s_number=s.s_number;
-- 매출액 수정
create or replace view v_setotalv2 as
select count(t.c_name) as "판매건수", sum(s.price) as "매출액",
cast(avg(s.price) as number(7,2)) as "건당 매출액"
from tradetbl t inner join stocked_cartbl s on s.s_number=t.s_number;
select * from v_setotalv2;

-- 구매자가 구매한 모델의 남은 차량
create or replace view v_hell as
select s.s_number, s.model, s.p_year, s.km, s.price, s.trouble, t.t_number, t.c_name 
from stocked_cartbl s full join tradetbl t on s.s_number=t.s_number
where t.c_name is not null or s.model in
(select s.model from stocked_cartbl s full join tradetbl t on s.s_number=t.s_number where t.c_name is not null);
select * from v_hell;
select * from v_hell where t_number is null;

-- 구매자가 구매한 모델
create or replace view v_smod as
select distinct(j1.model) from
(select * from stocked_cartbl s full join tradetbl t on s.s_number=t.s_number where t.t_number is null) J1
inner join
(select * from stocked_cartbl s inner join tradetbl t on s.s_number=t.s_number) J2
on J1.model=J2.model;
select * from v_smod;
