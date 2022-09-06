--set serveroutput on; -- dbms output(콘솔로그)때문에 하는 것
--이건 다 하고 나서  주석처리하거나 다른 파일에서 그냥 실행하기

-- 아주 심플한 함수 
-- djlee 라는 텍스트 반환하는 함수

create or replace function mytest_func return varchar  is
v_test varchar2(100);
begin v_test :='이동준';
return v_test;
end;
/
select mytest_func() from dual; --dual 임시테이블, 함수 기능테스트시 쓰임

select * from simple_test_table where name=mytest_func();

select * from simple_test_table;

