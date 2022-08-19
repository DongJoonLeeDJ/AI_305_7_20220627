create table Employee (
sabeon number primary key,
name varchar2(20) not null,
age int,
JikGeup varchar2(30),
HP varchar2(13) unique
);
-- int = integer,   number - 부동소수점과 고정소수점 지정 가능
insert into Employee values(1,'최호준',30,'사장',null);
insert into Employee values(101,'이동준',34,'신입','010-2940-1613');

select * from Employee;

insert into Employee (sabeon, name, age, jikgeup) values (2,'박지호',50,'회장');
insert into Employee (hp,sabeon, name, age, jikgeup) values 
('010-1234-4321',3,'차승화',40,'부회장');

update Employee set age=20,hp='010-xxxx-yyyy' where sabeon=2;
select * from Employee;
select * from Employee order by sabeon; -- asc : 오름차순, 생략가능
select * from Employee order by age desc; --desc : 내림차순

commit;
set autocommit on; -- 자동커밋기능 켜기

select name, jikgeup as 직급 from Employee;



-- 컬럼명 변경
-- alter table mysamsungpeople rename column boss_is to boss_id;







