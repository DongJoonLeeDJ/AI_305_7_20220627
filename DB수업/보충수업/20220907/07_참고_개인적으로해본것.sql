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

insert into mydbhakgwa values('0a1','�İ�');
insert into mydbhakgwa values('0b1','�Ƶ�������');
insert into mydbhakgwa values('0c1','�ɸ���');
insert into mydbhakgwa values('0d1','ȭ��');

insert into mydbstudent values('abc111','�̿���',28,'0a1');
insert into mydbstudent values('abc112','���¿�',20,'0a1');
insert into mydbstudent values('abc113','����ȣ',23,'0b1');
insert into mydbstudent values('abc114','����ȭ',25,'0c1');
insert into mydbstudent values('abc115','����Ź',29,'0d1');

select * from mydbstudent;
select * from mydbhakgwa;

select mydbstudent.hakbeon �й�, mydbstudent.name �̸�, mydbstudent.age ����, mydbhakgwa.name �а���
 from mydbstudent join mydbhakgwa on mydbstudent.hakgwacode=mydbhakgwa.code;

commit;