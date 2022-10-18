 drop table testtable;
create table testtable (
mynum int primary key,
name varchar(100) );
insert into testtable values(1,'박지호');
insert into testtable values(2,'오세룡');
select * from testtable;
update testtable set name='박지호(여성)'
 where name='박지호'; 
delete from testtable where name='오세룡';
 