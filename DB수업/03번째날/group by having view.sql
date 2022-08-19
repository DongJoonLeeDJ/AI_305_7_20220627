
select * from mydbstudent;
-- 학교의 평균 나이
select avg(age) from mydbstudent;
-- 학과별 평균 나이
select hakgwacode, avg(age) from mydbstudent group by hakgwacode;

-- 학과별 평균 나이를 출력하되, 30살 넘는 과만 표시하기
select hakgwacode, avg(age) from mydbstudent group by hakgwacode 
having avg(age)>30;


select * from mydbstudent;
-- 제일 연장자를 뽑는 방법(중첩질의)
select * from mydbstudent where age = (select max(age) from mydbstudent);

select mydbhakgwa.name, avgage from mydbhakgwa join (
select hakgwacode, avg(age) avgage from mydbstudent group by hakgwacode) a 
on mydbhakgwa.code = a.hakgwacode;

-- 만약 view 생성 안 되면 system 계정으로 접속해서
--아래 쿼리를 실행한다.
grant create view to c##scott;

create view max_age as (select max(age) maxAge from mydbstudent);

select * from max_age; -- 가상 테이블을 만듦
--이러한 가상 테이블을 뷰라고 부른다.
--중첩질의 등에서 쓰기 위해 많이 활용된다.
-- select 문 등이 매우 복잡해질 경우  그 것들을 좀 단순화할 때 많이 쓰임

select * from mydbstudent where age=(select * from max_age);

-- 만약 최연장자의 학과를 출력하라고 한다면?
create view max_age_student as select * from mydbstudent where age=(select * from max_age);

select mydbhakgwa.name from max_age_student join mydbhakgwa on 
max_age_student.hakgwacode = mydbhakgwa.code;

select * from max_age_student;

delete from max_age_student;

select * from mydbstudent;

select * from max_age;

delete from max_age;

update max_age set maxage=100;


update max_age_student set name='이동준마누라';
