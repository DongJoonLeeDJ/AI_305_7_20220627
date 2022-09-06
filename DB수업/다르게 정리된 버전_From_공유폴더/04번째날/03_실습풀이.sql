insert into food_truck values(food_rownum.nextval, '비빔밥', 6000, 1);
insert into food_truck values(food_rownum.nextval, '청국장', 5500, 1);
insert into food_truck values(food_rownum.nextval, '김치전', 5000, 1);

insert into food_truck values(food_rownum.nextval, '취두부', 3000, 2);
insert into food_truck values(food_rownum.nextval, '도삭면', 4500, 2);
insert into food_truck values(food_rownum.nextval, '유산슬', 8000, 2);

insert into food_truck values(food_rownum.nextval, '초밥', 12000, 3);
insert into food_truck values(food_rownum.nextval, '오꼬노미 야끼', 2500, 3);
insert into food_truck values(food_rownum.nextval, '라멘', 9000, 3);

insert into food_truck values(food_rownum.nextval, '스파게티', 16000, 4);
insert into food_truck values(food_rownum.nextval, '스테이크', 57000, 4);
insert into food_truck values(food_rownum.nextval, '청어조림', 15000, 4);

insert into food_truck values(food_rownum.nextval, '오렌지탕', 18000, 5);
insert into food_truck values(food_rownum.nextval, '초코파이 찌개', 500, 5);
insert into food_truck values(food_rownum.nextval, '파인애플 매운탕', 1200, 5);

insert into food_truck values(food_rownum.nextval, '토룡탕', 12000, 6);
insert into food_truck values(food_rownum.nextval, '드래곤 덮밥', 650000, 6);
insert into food_truck values(food_rownum.nextval, '삼치 가시 찜', 500, 6);

insert into food_truck values(food_rownum.nextval, '마우스', 7500, 7);
insert into food_truck values(food_rownum.nextval, '키보드', 130000, 7);
insert into food_truck values(food_rownum.nextval, '모니터', 99000, 7);


insert into food_category values(8, '디저트');


insert into food_truck values(food_rownum.nextval, '아아', 3500, 8);
insert into food_truck values(food_rownum.nextval, '쉬폰케이크', 160000, 8);
insert into food_truck values(food_rownum.nextval, '아이스크림케이크', 85000, 8);
--join
select food_truck.name 음식명, price, food_category.name 분류 
from food_truck join food_category on food_truck.foodcode=food_category.code;

select food_truck.name 음식명, price, food_category.name 분류 
from food_truck join food_category on food_truck.foodcode=food_category.code order by food_truck.price desc;


