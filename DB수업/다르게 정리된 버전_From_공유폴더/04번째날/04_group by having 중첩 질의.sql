-- group by
-- 음식들을 foodcode별로 묶어보자.
select * from food_truck;

--전체 평균 가격
select avg(price) from food_truck;
--전체 최고 가격
select max(price) from food_truck;

--분류(=foodcode)별 평균 가격
select foodcode, avg(price) from food_truck group by foodcode;
--분류별(=foodcode) 최고가 음식 가격
select foodcode, max(price) from food_truck group by foodcode;

--주의사항
--그냥 group by만 쓰면
-- 나머지 값들은 다 짤려버림(mysql)
-- oracle은 아예 안 됨
--select foodcode, name from food_truck GROUP by foodcode;

-- having
-- group by한 다음에 조건문 쓰는 것
-- group by 뒤의 where절인 것
select foodcode, max(price) from food_truck group by foodcode 
having max(price)>10000; --max값이 만원이 넘는 것만 보여주는 것

select foodcode, max(price) from food_truck group by foodcode 
having max(price)<10000; --max값이 만원이 미만인 것만 보여줌


-- 중첩 질의
-- 최고가의 음식을 찾고 싶다면?
-- price값이 max(price)랑 동일한 것의 데이터를 출력
select * from food_truck where price=(select max(price) from food_truck);
-- 쿼리문 안에 또 다른 쿼리문이 들어간 것



-- view
-- view : 가상 테이블
-- select문으로 만들어진 가상의 테이블
-- create table 문으로 만들어진 정식 테이블이 아니고
-- 기존테이블들을 이용해서 자료조회하고, 그 조회된 자료가지고 만들어진 가상의 테이블

-- food_truck의 최고가만 저장하는 테이블을 만듦
create view find_max_price as select max(price) max_price from food_truck;
select * from find_max_price;

-- view를 잘 이용하면 중첩 질의가 더 간략해줄 수 있다.
select * from food_truck where price=(select * from find_max_price);



