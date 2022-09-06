--create table exFunc
--(
--   num int primary key,
--   name varchar2(100),
--   belong varchar2(100)
--);
--
--insert into exFunc values(1, '이동준', '머글');
--insert into exFunc values(2, '오세룡', '마법사');
--insert into exFunc values(3, '안서준', '머글');
--
--select * from exFunc where belong='머글';

-- 함수 테이블 반환
-- 출판사 조회해서 반환하기
 -- 1. Object Type을 생성
CREATE OR REPLACE TYPE find_belong AS OBJECT 
( 
    name varchar2(100)
); 
/
-- 2. 반환 테이블 정의
CREATE OR REPLACE TYPE table_find_belong 
AS TABLE OF find_belong; 
/
-- 3. 파이프라인 테이블 함수 생성
CREATE OR REPLACE FUNCTION fn_get_human (p_belong varchar2) 
    RETURN table_find_belong 
    PIPELINED 
IS 
    v_name find_belong; 
BEGIN 
    FOR rec IN ( 
        SELECT name
          FROM exFunc 
         WHERE belong = p_belong 
    ) LOOP 
        v_name := find_belong( rec.name);         
        PIPE ROW(v_name); 
    END LOOP; 
       
    RETURN; 
END;