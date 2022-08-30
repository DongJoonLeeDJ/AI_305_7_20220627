--in : 매개변수를 의미
--myname, mypn에도 in이 붙어야 함
create or replace procedure add_person
(
mynum in int, 
myname varchar2, 
mypn varchar2
)
is begin 
insert into simple_test_table values(mynum,myname,mypn);
end add_person;