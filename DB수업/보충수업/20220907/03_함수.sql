--�Լ�
-- pcode�� �Ű������� �Ͽ��� �� ���� ��ȯ���ִ� �Լ�

create or replace function getGwaName (p_code int) return varchar2 
is v_name varchar2(100); 
begin 
select name into v_name from p where code=p_code;
return v_name;
end;