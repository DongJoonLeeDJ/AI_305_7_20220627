select * from food_truck;
select * from food_category;

-- 분류 '코드별로' 평균을 표시해보기
select foodcode, avg(price) from food_truck group by foodcode;
-- => 각 코드가 의미하는 바를 쉽게 유추할 수 없다.

--1. 음식 분류별 평균 표시하되, 분류명도 같이 출력되게 하기
-- 공통점 : 두 개의 테이블을 묶어서 매칭시키는 것

-- view 없이 푸는 방법(=중첩질의)
select name, avgprice from 
(select foodcode, avg(price) avgprice from food_truck 
group by foodcode) a
join 
food_category on a.foodcode=food_category.code;

--view 이용해서 푸는 방법
create view groupby_foodcode_avg as 
select foodcode, avg(price) avgprice from food_truck 
group by foodcode;


select name, avgprice from food_category join groupby_foodcode_avg 
on food_category.code=groupby_foodcode_avg.foodcode;

-- 1-2. 평균값이 비싼 순
select name, avgprice from food_category join groupby_foodcode_avg 
on food_category.code=groupby_foodcode_avg.foodcode 
order by avgprice desc;
-- 1-3. 평균값이 저렴한 순
select name, avgprice from food_category join groupby_foodcode_avg 
on food_category.code=groupby_foodcode_avg.foodcode 
order by avgprice asc; --asc는 생략이 가능함

-- 2. 분류별로 가장 비싼 음식들 표시하기

-- 1. group by 이용해서 각 코드별로 비싼 음식을 표시해야 함
--select foodcode, max(price) maxprice from food_truck group by foodcode;
--create view max_food as 
--select foodcode, max(price) maxprice from food_truck group by foodcode;
-- 1. join을 이용해서 각 음식의 카테고리명(=분류명)표시해야 함
-- distinct : 중복 제거 키워드(참고)
select distinct food_truck.name foodname, price, food_category.name categoryname 
from food_truck join food_category 
on food_truck.foodcode = food_category.code;

create view food_category_truck as 
select distinct food_truck.name foodname, price, food_category.name categoryname 
from food_truck join food_category 
on food_truck.foodcode = food_category.code;

--select * from max_food; -- 코드별 최고가
select * from food_category_truck; -- 각 음식별 카테고리 표시하는 것

-- 2. 음식을 카테고리명별로 분류하게 되었다.
-- 그러므로 카테고리명별로 max값을 다시 group by 한다.
select categoryname, max(price) maxprice from food_category_truck 
group by categoryname;

drop view max_food;
--view 만들 때 주의사항 : avg나 max 등 함수의 결과는 또 다른 이름으로 치환해야 함
create view max_food as select categoryname, max(price) maxprice from food_category_truck 
group by categoryname;

select * from max_food;
-- 1번과 2번을 join한다.
select foodname, price, max_food.categoryname from max_food join food_category_truck 
on max_food.categoryname=food_category_truck.categoryname and 
max_food.maxprice=food_category_truck.price;

--3. 분류별로 가장 저렴한 음식 표시
--1. 음식명, 카테고리명이 나오는 테이블 만들기(2번에서 만듦, food_category_truck)
--2. food_category_truck에 있는 음식을 group by해서 min값을 구한다.
select categoryname, min(price) minprice from food_category_truck 
group by categoryname;
create view min_food as 
select categoryname, min(price) minprice from food_category_truck 
group by categoryname;

-- 3번 정답
select foodname, price, min_food.categoryname from 
food_category_truck join min_food on 
food_category_truck.categoryname = min_food.categoryname and 
food_category_truck.price = min_food.minprice;

--4번 평균적으로 볼 때 음식이 가장 저렴한 편인 음식분류?
select * from groupby_foodcode_avg;

-- 코드별로 가격 묶었는 데, 각 코드에 매칭되는 이름도 추가(join 이용)
select name, groupby_foodcode_avg.foodcode, avgprice from 
groupby_foodcode_avg join food_category on 
groupby_foodcode_avg.foodcode=food_category.code;

create view group_avg_food as 
select name, groupby_foodcode_avg.foodcode, avgprice from 
groupby_foodcode_avg join food_category on 
groupby_foodcode_avg.foodcode=food_category.code;

select * from group_avg_food;

select * from group_avg_food where avgprice=
(select min(avgprice) from group_avg_food);

--5번 평균적으로 볼 때 음식이 가장 비싼편인 음식 분류?
select * from group_avg_food where avgprice=
(select max(avgprice) from group_avg_food);


