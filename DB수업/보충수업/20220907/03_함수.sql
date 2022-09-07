--함수
-- pcode를 매개변수로 하여서 과 정보 반환해주는 함수

create or replace function getGwaName (p_code int) return varchar2 
is v_name varchar2(100); 
begin 
select name into v_name from p where code=p_code;
return v_name;
end;