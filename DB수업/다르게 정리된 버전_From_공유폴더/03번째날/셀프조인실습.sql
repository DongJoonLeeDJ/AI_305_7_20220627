-- 최소 2개의 컬럼
-- 1개 컬럼추가 되야 함
-- id랑 같은 타입의 컬럼이어야 되고(number라면 둘 다 number)
-- id에서 있는 값을 추가해줘야 함
create table mysamsungpeople (
id number primary key,
name varchar2(30) not null, -- 공백을 허용하지 않음
boss_is number);


insert into mysamsungpeople values(1,'이건희',1);
insert into mysamsungpeople values(2,'홍라희',2);
insert into mysamsungpeople values(3,'이부진',1);
insert into mysamsungpeople values(4,'이재용',1);
insert into mysamsungpeople values(5,'신라호텔',3);
insert into mysamsungpeople values(6,'삼성전자',4);
insert into mysamsungpeople values(7,'수원삼성',4);
insert into mysamsungpeople values(8,'삼성라이온즈',4);

-- 컬럼명 변경
alter table mysamsungpeople rename column boss_is to boss_id;

select a.name boss, b.name name 
from mysamsungpeople a join mysamsungpeople b 
on a.id=b.boss_id;






