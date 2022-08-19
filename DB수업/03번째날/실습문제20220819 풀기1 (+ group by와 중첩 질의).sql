create table mydbhakgwa (
code char(3) primary key,
name varchar2(30) );
--code는 반드시 pk로 해야 함
--다른 테이블이 참조하려는 컬럼은 pk로 둬야 함
create table mydbstudent
( hakbeon varchar2(10),
name varchar2(60),
age int,
hakgwacode char(3),
foreign key(hakgwacode) references mydbhakgwa(code));


-- 학과 데이터부터 넣어야 함
-- 왜냐면 학과 데이터가 없는 데 학생을 추가할 수 없다.
insert into mydbhakgwa values ('001', '컴공');
insert into mydbhakgwa values ('002', '아동가족');

insert into mydbstudent values('0000000001', '이동준', 34, '001');
insert into mydbstudent values('0000000002', '이제영', 35, '002');
insert into mydbstudent values('0000000003', '김혜민', 24, '001');
insert into mydbstudent values('0000000004', '이범식', 44, '001');
insert into mydbstudent values('0000000005', '박지호', 14, '002');


select mydbstudent.name 학생명, hakbeon, mydbhakgwa.name 학과명 from 
mydbstudent join mydbhakgwa on mydbstudent.hakgwacode=mydbhakgwa.code;


-- 학교의 평균 나이
select avg(age) from mydbstudent;
-- 학과별 평균 나이
select hakgwacode, avg(age) from mydbstudent group by hakgwacode;

-- 학과별 평균 나이를 출력하되, 30살 넘는 과만 표시하기
select hakgwacode, avg(age) from mydbstudent group by hakgwacode 
having avg(age)>30;

select mydbhakgwa.name, avgage from mydbhakgwa join (
select hakgwacode, avg(age) avgage from mydbstudent group by hakgwacode) a 
on mydbhakgwa.code = a.hakgwacode;



