-- 1. 음식 10개추가

--컬럼이랑 이런 것들 다 그대로 집어넣기
insert into food(num,name,price) values(7,'오리구이',30000);
insert into food(num,name,price) values(8,'소고기구이',50000);
--데이터만 집어넣기
insert into food values(9,'오리찜',15000);
--내가 정한 순서대로 넣기
insert into food(num,price,name) values (10, 9000, '오삼덮밥');
--내가 집어넣고 싶은 데이터만 넣기
insert into food(num,name) values(11,'우엉무침');

insert into food(num,name,price) values(12,'민트초코덮밥',null);
insert into food values(13,'하와이안피자위의 파인애플',null);

insert into food values(14, '연어초밥',12000);
insert into food values(15, '된장찌개',5000);
insert into food values(16, '돼지국밥', 8000);

select * from food;

-- 만약 num의 순서대로 하고 싶다면?
select * from food order by num;  --끝에 asc는 생략 가능
select * from food order by num asc;  --이 두개는 똑같은 코드
--asc : 오름차순 정렬, 생략가능
--desc:내림차순, 내림차순하고 싶으면 생략 하면 안 됨


--비싼 순서대로 정렬하고 싶다면?
--desc는 내림차순을 의미한다.
select * from food order by price desc;

--null값이 아닌 것만 조회하고 싶다면?
select * from food where price is not null;

--null값이 아닌 것만 조회하고 싶다면+가격비싼 순?
select * from food where price is not null order by price desc;


--2. 메뉴 명에 김치라는 것이 들어가는 것만 조회
select * from food where name like '%김치%';
-- like 구문 문자열에서 쓰임
-- %기호의 뜻은 0글자 이상
-- 즉 '김치' 뿐 아니라 '민트초코 김치' 아니면 '김치 찌개' 등
-- 김치라는 단어 앞뒤에 뭐가 오든지 간에 김치가 포함되면
-- 다 조회한다.

-- 3. 가격이 5000~7000원 사이인 것만 조회
select * from food where price>=5000 and price <=7000;

--4. 가격이 null값인 걸 1000원으로 조정
update food set price=1000 where price is null;

--5. num값이 1번인 메뉴의 이름을 '맛있는 불고기' 라고 바꾸기 
update food set name='맛있는 불고기' where num=1;

--다 풀고나서 commit
commit;