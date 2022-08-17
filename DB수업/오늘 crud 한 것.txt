--이 코드가 SQL문의 가~~~~~~~~~~장 기본적인 코드
--모든 데이터를 조회해 볼 수 있는 코드
SELECT * FROM STUDENT; -- 주석

-- where 붙이고 내가 원하는 조건들을 적으면 된다.
SELECT * FROM STUDENT WHERE AGE>25; -- 25살 넘는 사람만 출력한 것

--SQL문의 조건문에선 같은지 체크할 때 =으로 한다.
SELECT * FROM STUDENT WHERE AGE>25 AND HAKBEON='3';
--나이가 25살 넘으면서 학번이 3번인 학생을 출력

-- 괄호 안에 있는 건 컬럼(=열) 이름
-- values 다음에 값들을 적으면 된다.
-- 순서대로 데이터를 넣는다는 보장만 있으면 컬럼명 생략 가능함

--문자열은 따옴표 안에 적는다.
INSERT INTO STUDENT (HAKBEON, NAME, AGE) VALUES ('1','이동준',34);

-- SQL의 핵심
-- CRUD
-- select = read = 조회
-- insert = create = 삽입
-- update = updtae = 수정
-- delete = delete = 삭제

select * from student;
update student set name='장태연' where hakbeon='1';

-- 전부 다 삭제하고 싶으면
--delete from student;

delete from student where age>30;


commit; --추가 수정 삭제할 때 마다 그 내용을 저장해주는 것(git의 commit과 유사)
--마지막으로 commit한 지점으로 돌아갈 수도 있다.

rollback; -- 내가 마지막으로 커밋한 지점으로 돌아갈 수 있다.
delete from student;





