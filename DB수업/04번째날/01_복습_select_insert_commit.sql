--ctrl + enter 하면 한 줄 실행
--여러 줄 선택하고 ctrl+enter하면 여러 줄 실행
-- C 언어처럼 세미콜론(;) 단위로 1줄이 된다.
create table food  -- 테이블 생성
(
   num int primary key,
   name varchar2(50),
   price int
);


insert into food(num,name,price) values(1,'불고기',7000);
insert into food(num,name,price) values(2,'김치찌개',6000);

SELECT * FROM FOOD;

-- name이랑 price만 나오게 하기
select name, price from food;

--메뉴만 보여 주고 싶다면?
select name from food;


-- 테이블명이나 컬럼명을 애초에 한글로 만들어도 되는가?
-- 되긴 되는 데 어떤 오류가 있을지 모르므로 안 하는 게 좋다.
/*
create table 임시테이블
(
   이름 varchar2(500),
   번호 int primary key
);
select * from 임시테이블;

insert into 임시테이블 values('박지호',1);
*/

-- 실제 컬럼(=열)명은 name이더라도, 그 이름을 한글 이름으로 '표시'가능
-- name부분을 메뉴라는 컬럼(=열)으로 표시함
select name 메뉴 from food;

-- 6000원대로 먹을 수 있는 음식만 조회해보자
-- price가 6000 이상 7000미만인 값만 나온다.
select * from food where price >=6000 and price <7000;

--김치제육을 김치+제육으로 변경
--이름을 통해서 조회해도 되지만
--그렇게 되면 모든 김치제육이 김치+제육으로 바뀜
--그래서 이렇게 특정 데이터 하나만 조회해서 변경할 때 쓰는 게
--pk이다.(primary key)

--주의사항 ctrl키 누르고 방향키 누르지 말기
--가장 최근에 실행한 sql문 하나만 남는다
update food set name='김치+제육' where num=3;
--update문의 가장 큰 주의사항!!!!!!!!!
--끝에 where절을 안 적게 되면
--모든 데이터가 다 일괄적으로 변경이 된다.
--만약 여기서 where문 없으면 모든 음식메뉴가(name값)
--김치+제육이 되버린다.


--결과 확인
select * from food;

--insert할 때 모든 컬럼의 순서를 알고 있다면
--생략하고 values부터 적을 수 있다.
--이 테이블은 숫자,문자열,숫자의 순서인데,
--순서를 알고 있다면 food 뒤에 컬럼명 생략 가능
--
insert into food values(4, '무생채', 2000);

--food뒤에 컬럼명 적는 이유
--1. 명시적으로 컬럼들을 보여주기 위해서(위의 insert문 참고)
--2. 내가 원하는 순서대로 데이터 넣기 위해서
insert into food(price,name,num) values(10000, '황제정식',5);
--3. 내가 원하는 데이터만 넣기 위해서
insert into food(num,name) values (6,'랜덤메뉴');

select * from food;
-- git의 commit처럼 내가 작성한 insert, update, delete문을 저장하는 것
--commit해주지 않고 이 프로그램을 꺼버리면 내가 작성한
--insert update delete가 적용이 안 됨. 즉 저장 안 하고 끈거랑 같음
commit;




