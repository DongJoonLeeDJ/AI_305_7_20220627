create table mykbmajor
(
name varchar2(30) not null,
code char(3) primary key,
regDate timestamp default sysdate
);
--drop table mykbmajor;
insert into mykbmajor(name, code) values('정보기술개발','001');
insert into mykbmajor(name, code) values('빅데이터AI','002');
select * from mykbmajor;

create table mykbstudent
(
   name varchar2(30),
   age int,
   hakbeon char(10),
   hakgwa_code char(3),
    regDate date default sysdate
);

alter table mykbstudent add constraint fk_mykb 
foreign key(hakgwa_code) references mykbmajor(code);

-- 실수로 빼먹은 pk 나중에 추가하기
alter table mykbstudent add constraint mypk primary key(hakbeon);


insert into mykbstudent (name,age,hakbeon,hakgwa_code) values
('이동준',34,'1234123412', '001');
insert into mykbstudent (name,age,hakbeon,hakgwa_code) values
('김동준',24,'1234123422', '001');
insert into mykbstudent (name,age,hakbeon,hakgwa_code) values
('박동준',29,'1234123432', '002');

select * from mykbstudent;


select mykbstudent.name, hakbeon, mykbmajor.name from 
mykbstudent join mykbmajor on 
mykbstudent.hakgwa_code = mykbmajor.code;
-- where mykbmajor.name='빅데이터AI'; --특정과만 출력

select mykbstudent.name, hakbeon, mykbmajor.name from 
mykbstudent join mykbmajor on 
mykbstudent.hakgwa_code = mykbmajor.code
 where mykbmajor.name='빅데이터AI'; --특정과만 출력



