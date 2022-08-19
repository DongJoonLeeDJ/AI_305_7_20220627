/*drop table table1;*/
-- /**/ 이것들도 다 주석
-- // 이거 주석 아님

CREATE TABLE STUDENT (
NAME VARCHAR2(20),
AGE NUMBER,
HAKBEON VARCHAR2(20) PRIMARY KEY);
commit;
-- number, varchar2
-- 숫자랑 문자열
INSERT INTO STUDENT(HAKBEON, NAME, AGE) VALUES('10','이동준',17);
INSERT INTO STUDENT(HAKBEON, NAME, AGE) VALUES('11','안서준',19);
INSERT INTO STUDENT(HAKBEON, NAME, AGE) VALUES('12','김혜민',15);
INSERT INTO STUDENT(HAKBEON, NAME, AGE) VALUES('13','이범식',16);
INSERT INTO STUDENT(HAKBEON, NAME, AGE) VALUES('14','오세룡',33);
INSERT INTO STUDENT VALUES('최호준',35,'30');

SELECT * FROM STUDENT;
commit;
rollback;

TRUNCATE table student;

drop table student;


--drop - 테이블을 완전삭제 복구 안 됨
--truncate - 테이블에 있는 내용을 완전히 삭제하고 테이블 자체는 그냥 있음
--delete 테이블에 있는 내용 삭제하고 복구도 됨

commit; --insert, update, delete 전 후로 해주는 게 좋다. 
rollback; -- 직전에 commit한 부분으로 돌아갈 수 있다.
--연속으로 돌아가진 못 함. 즉 2단계 전으로 돌아가긴 안 됨


-- 나이가 10대인 학생만 조회
select * from student;
select * from student where age >=10 and age<=19;
select * from student where age>9 and age<20;

-- * 대신에 다른 걸 서도 됨

select name from student where age>9 and age<20;
select name as 이름 from student where age>9 and age<20;
select name 이름 from student where age>9 and age<20;
select name as "이 름" from student where age>9 and age<20;
select name "이 름" from student where age>9 and age<20;

delete from student where name='최호준';

insert into student values ('박지호', 10, '123');

select * from student;

update student set age=20 where name='박지호';

--crud
-- pk

-- 관계를 표현함에 있어서 매우 중요한 요소인 fk를 할 것
-- 2개 이상의 테이블을 하나로 보이게 해주는 join에 대해서 다뤄볼 것

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




