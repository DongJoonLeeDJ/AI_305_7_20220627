select * from food;
select * from food_category;

select code 분류코드, name 분류명 from food_category;

create table food_Truck
(
   num int primary key,
   name varchar2(100) not null,
   price int,
   foodcode number not null, --food_cotegory랑 타입이 똑같아야 함
    foreign key(foodcode) REFERENCES food_category(code)
);

--sequence(시퀀스)
-- 오라클, mssql 에 있는 것
-- mysql에는 없어서 비슷한 걸 따로 만들어 줘야 함

create SEQUENCE food_rownum;
-- 시퀀스는 일종의 변수
-- for문의 i 처럼 값이 순차적으로 늘어나는 것
-- 내가 수동적으로 값을 넣지 않아도 자동으로 값이 증가함
-- nextval : ++i 랑 같음. 즉 증가된 값을 집어넣어 줌
insert into food_truck values(food_rownum.nextval, '민트덮밥', 5000,5);

select * from food_truck;
--num 1은 어디갔냐면 ㅜㅜ...
-- insert into 할 때 오류가 나면서 num값이 들어가려다가 못 들어가고 그냥 증가됨

-- 오류 없이 한 방에 잘 insert하면 1부터 값이 들어가는 걸 볼 수 있다.
create sequence dj;
insert into food_truck values(dj.nextval, '딸기카레', 4000,5);

--ORA-02291: 무결성 제약조건(C##SCOTT.SYS_C008363)이 위배되었습니다- 부모 키가 없습니다
--insert into food_truck values(food_rownum.nextval, '오렌지찌개', 3000, 50);

insert into food_truck values(food_rownum.nextval, '진짜스펀지케이크', 300, 7);

select * from food_truck;
insert into food_truck values(food_rownum.nextval, '타이어', 30000, 7);


-- join
-- 두 테이블에서 공통되는 키 값을 가져와서 
-- 그 값이 겹치는 걸 보여준다.
select food_truck.name 음식명, price, food_category.name 분류 
from food_truck join food_category on food_truck.foodcode=food_category.code;


select food_truck.name 음식명, price, food_category.name 분류 
from food_truck join food_category on food_truck.foodcode=food_category.code order by food_truck.price;



