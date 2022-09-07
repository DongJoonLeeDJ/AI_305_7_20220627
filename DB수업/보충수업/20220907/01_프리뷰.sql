select * from p;
select * from c;

-- 중첩 질의
-- 쿼리문 안에 또 다른 쿼리문이 들어가는 것

--ex) 나이가 최고 많은 사람의 이름을 구하고 싶다.
--1. age 중에서 가장 큰 값을 구한다.
select max(age) from c;
--select max(age), name from c;
--select name from c;
--select * from c where age=36;

select * from c where age=(select max(age) from c);



-- 가상 테이블
select max(age) maxAge from c;
-- 뷰 생성
create view find_max_age_view as select max(age) maxAge from c;

select * from find_max_age_view;

select * from c where age=(select * from find_max_age_view);


select * from p;
select * from c;
-- 조인
select c.name, p.name from c join p on c.pcode=p.code;

create view student as select num, c.name 이름, p.name 학과, testname 영어이름, age 나이 from c join p on c.pcode=p.code;

--c 테이블에 있는 내용들을 좀 더 알기 쉽게 정리한 가상 테이블
select * from student;







