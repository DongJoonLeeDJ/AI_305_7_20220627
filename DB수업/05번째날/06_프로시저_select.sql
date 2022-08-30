-- select procedure는 cursor라는 걸 반환해줌
-- cursor라는 걸 통해서 결과를 출력
-- cursor란? sql 결과를 저장하는 메모리의 위치를 가리키는 포인터

--o_cursor : 반환값(=반환 커서)
create or replace  procedure person_select(
myname in varchar2,
o_cursor out sys_refcursor )
is begin open o_cursor 
for
select num,name,phone_number from simple_test_table where 
name=myname;
exception when others then 
dbms_output.put_line('sql error : ' || sqlerrm);
end person_select;
