-- 함수
-- gender_num 이용해서 성별 보여주기
create or replace function get_gender_type(p_user_gender_num number) 
return varchar2 
is 
v_gender_type varchar2(9);
begin
select gender_type into v_gender_type from gender where gender_num =p_user_gender_num;
return v_gender_type;
end;
