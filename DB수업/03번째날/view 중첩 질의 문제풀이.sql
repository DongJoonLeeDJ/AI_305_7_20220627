--1. 학과 1개 추가
insert into mydbhakgwa values ('003', '체육학과');

select * from mydbhakgwa;
select * from mydbstudent;

--2. 학생 5명 더 추가

insert into mydbstudent values('0000000004','이제영',35,'003');
insert into mydbstudent values('0000000006','이현민',25,'001');
insert into mydbstudent values('0000000007','노민영',15,'003');
insert into mydbstudent values('0000000008','이용희',27,'002');
insert into mydbstudent values('0000000009','장태연',17,'001');
insert into mydbstudent values('0000000010','장혜정',26,'003');

-- 학생별로 나이랑 학과가 출력되게 join
select mydbstudent.name, mydbhakgwa.name, age from mydbstudent join 
mydbhakgwa on mydbstudent.hakgwacode=mydbhakgwa.code;

--3. 평균 나이가 가장 많은 학과 출력

-- 학과별 평균 나이를 출력해보자.

-- 학과별 나이를 우선 출력
select mydbhakgwa.name, age from mydbstudent join 
mydbhakgwa on mydbstudent.hakgwacode=mydbhakgwa.code;

-- 학과랑 이름만 있는 이 테이블을 우선 뷰로 만든다.
create view age_by_student as select mydbhakgwa.name, age 
from mydbstudent join 
mydbhakgwa on mydbstudent.hakgwacode=mydbhakgwa.code;

select * from age_by_student;

-- 학과별 평균 나이를 출력
select name, avg(age) from age_by_student group by name;

-- 원본 값을 바꾸면 view의 값도 바뀜
-- 나이가 10대인 건 비현실적이어서 그냥 나이바꿈(큰 의미는 없음)
update mydbstudent set age = 20 where age<20;

-- 또 뷰를 만든다.
create view avg_age_gwa as 
select name, avg(age) avgAge from age_by_student group by name;

-- 학과별 평균 나이 출력하는 뷰까지 만들었음
select * from avg_age_gwa;


-- 가장 큰 나잇값 구함
select max(avgage) from avg_age_gwa;

-- 가장 큰 나잇값이랑 일치하는 행의 name파트 값을 구하는 것
select name from avg_age_gwa where avgage
=(select max(avgage) from avg_age_gwa);




