--1. 지금 학생 테이블이 있는 데 여기엔 컴공이랑 화공이 있다.
--학과 1개만 더 추가해보고 그 학과 가진 학생 2명 추가해보세요.
select * from student;
select * from major;
insert into major values('멸공','103');

insert into student values ('김보규',22,'99','103');
insert into student values ('김진규',32,'199','103');


--2. 학과코드가 001인 학생의 이름과 나이만 출력해보세요.
select name,age from student where code='001';

--3. 학과코드가 102(혹은 002)인 학생의 나이를 모두 20살로 통일하세요.
update student set age=20 where code='102';

--4. 성이 이씨인 학생을 지워보세요. (like 라는 키워드를 이용해야 할 것)
delete from student where name like '이%';
-- 그냥 이름이 이 인 학생
-- 이준 이이
-- 이동준, 이 세계를 구해줘 이 세카이 등... 이로 시작하는 모두가 삭제됨

--참고
-- 나이 제일 많은 사람 삭제
-- 중첩 질의(질의문=쿼리문 안에 쿼리문)
select max(age) from student;
delete from student where age = (select max(age) from student);

select * from student;



