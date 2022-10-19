drop table member;
-- member
-- 이름, id, 비번, 폰번호, 성별
create table member (
	name varchar(100) not null,
    id varchar(100) primary key,
    pw varchar(100) not null,
    hp varchar(50) unique,
    gender varchar(10)
);
-- 컬럼  추가
alter table member add hobby varchar(50);

select * from member;
select * from member where id='ldjgood12' and pw='1234asdf';
-- update member set name='이동준', hp='010-1234-4321', gender='man, pw='1234asdf' where id='ldjgood12'




