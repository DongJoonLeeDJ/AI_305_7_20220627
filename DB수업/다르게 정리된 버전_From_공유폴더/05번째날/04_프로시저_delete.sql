-- 삭제
create or replace procedure delete_person
( mynum in int )
is begin delete from simple_test_table where num=mynum;
end delete_person;
/
select * from simple_test_table;