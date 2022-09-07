create table MyDbStudent(
hakbeon varchar2(30) primary key,
name varchar2(60),
age number,
HakGwaCode char(3) not null
);

create table MyDbHakgwa(
Code char(3) primary key,
name varchar2(30)
);

alter table MyDbStudent add CONSTRAINT fk_code foreign key(HakGwaCode) REFERENCES MyDbHakgwa(Code);

insert into mydbhakgwa values('0a1','컴공');
insert into mydbhakgwa values('0b1','아동가족학');
insert into mydbhakgwa values('0c1','심리학');
insert into mydbhakgwa values('0d1','화공');

insert into mydbstudent values('abc111','이용희',28,'0a1');
insert into mydbstudent values('abc112','장태연',20,'0a1');
insert into mydbstudent values('abc113','박지호',23,'0b1');
insert into mydbstudent values('abc114','차승화',25,'0c1');
insert into mydbstudent values('abc115','조영탁',29,'0d1');

select * from mydbstudent;
select * from mydbhakgwa;

select mydbstudent.hakbeon 학번, mydbstudent.name 이름, mydbstudent.age 나이, mydbhakgwa.name 학과명
 from mydbstudent join mydbhakgwa on mydbstudent.hakgwacode=mydbhakgwa.code;

commit;