-- 번호를 통해서 이름값을 반환해내는 함수

create or replace function func_getperson(v_num int)
return varchar is v_name varchar(100);
begin select name into v_name from simple_test_table where num=v_num;
return v_name;
exception when others then 
DBMS_OUTPUT.PUT_LINE('exception occurred! ('||sqlcode||'):'||sqlerrm);
return '';
end;

--set serveroutput on; DBMS_OUTPUT 때문에 쓰라고 한 거임...
