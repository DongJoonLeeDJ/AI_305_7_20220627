--학과테이블도 만들기
create table major (name varchar2(20), code char(3) primary key);
insert into major values('컴공','001');
insert into major values('화공','102');
--학생 테이블에 새로운 컬럼추가해보기
-- 학과코드를 추가할 것
--주의사항!!!!!!!!!!!!!!
--학과코드 추가할 때 major테이블의 code랑 자료형, 크기가 모두 맞아야 함
alter table student add (code char(3));
-- 외래키 추가
-- 제약조건 이름은 아무렇게나 적어도 됨
-- major의 code 컬럼을 참고(reference)해서 만들었다.
alter table student add constraint fk_stu 
foreign key(code) references major(code);

-- 001은 존재하는 학과이므로 이현민 추가 가능
insert into student values('이현민',23,'100','001');
-- 777, 666은 없는 과라서 추가 불가능
insert into student values('이동준1',34,'109','777');
insert into student values('이동준2',34,'110','666');


--학생 테이블에 있는 학과코드를 이용해서 학과를 출력해보기
--조인
select student.name "학생명", major.name "학과명", hakbeon from 
student join major on student.code=major.code;




