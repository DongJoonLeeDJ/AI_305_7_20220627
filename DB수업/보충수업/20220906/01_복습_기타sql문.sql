-- 테이블을 2개 만드는 데 외래키를 나중에 넣는 방법
create table p
(
code int primary key,
name varchar2(100));
create table c
(
num int primary key,
name varchar2(100),
pcode int );

-- c 테이블의 pcode는 p 테이블의 code를 참조하는 외래키인데... 실수로 추가 안 함.
-- 이 때 c 테이블의 pcode를 외래키로 지정하는 방법들이 있다.

--1. drop table 키워드로 테이블을 완전히 날려버리고 다시 할 수 있다.
-- 참고 : drop table 키워드는 rollback이 안 됨
-- 즉, 한 번 잘못실행하면 되돌릴 수 없다.
drop table p;
drop table c;

create table c
(
num int primary key,
name varchar2(100),
pcode int,
foreign key (pcode) references p(code) );


drop table c;
-- 2. 삭제하지 않고 외래키만 설정하는 방법
alter table c add constraint fk_p foreign key(pcode) references p(code);

-- alter 키워드
-- 테이블을 수정할 때 쓰임
--열(=컬럼, column)을 추가하거나 변경하거나 삭제할 때 등 쓰임
--alter table student add constraint fk_stu 
--foreign key(code) references major(code);

-- c 테이블에 testname이라는 열이 추가 된 것
alter table c add testname varchar2(1000);

select * from p;

insert into p values(1,'컴공');
insert into p values(2,'화공');

insert into c values(1,'이동준',1,'djlee');
insert into c values(2,'김진규',1,'kimjk');
insert into c values(3,'이현민',2,'leehm');
insert into c values(4,'최호준',2,'choihj');

select * from c;

commit;
--실수로 다 지워도 rollback하면 마지막으로 commit한 시점으로 넘어감
delete from c;-- c 테이블 데이터 다 지움

--실수로 이름 다 바꿔도 rollback하면 마지막으로 commit한 시점으로 넘어감

update c set name='djlee' ;
rollback; --마지막 commit한 지점으로 돌아감

-- join
select p.name, c.name from p join c on p.code=c.pcode;

select * from c;
select * from p;

alter table c add age int;
update c set age= 20; --모든 사람의 나이를 20살로 함

select * from c;


--order by
-- 정렬

select * from c order by age ; --오름차순(어린사람이 맨 위로 옴), 끝에 asc를 붙이기도 함.
select * from c order by age desc;--내림차순(연장자가 맨 위로 옴)


--group by
-- 분류별로 묶는 것
-- as 키워드 이용해서 컬럼명 바꿀 수 있고 as 없이 띄어쓰기만으로도 컬럼명 지정 가능
-- 컬럼명에 띄어쓰기 있으면 쌍따옴표("")로 묶을 것
select pcode, sum(age) as 총나이, avg(age) 평균, max(age) "최고 나이", min(age) "최소 나이" from c group by pcode;

--having
-- group by 절에 붙는 조건문(where이랑 같음)
-- 평균나이가 30을 넘는 pcode만 표시
select pcode from c group by pcode having avg(age)>30;

--중첩질의
-- select 문 안에 또다른 select문이 들어가는 것
-- 최고 나이가 많은 사람의 이름을 찾으세요.
select max(age) from c;

select * from c where age=(select max(age) from c);
select name 최고연장자 from c where age=(select max(age) from c);

--view
-- select 결과물을 이용해서 만든 가상 테이블
create view find_max_age as select max(age) maxage from c;

select * from find_max_age;


select name from c where age = (select * from find_max_age);

--글자수 체크
-- length 함수 : 문자의 길이 체크하는 함수
-- dual : 임시테이블. 간단하게 함수의 결과를 알고 싶을 때 붙이는 임시테이블
-- lengthb : 문자열의 바이트값을 체크
select length('kim') from dual; -- 길이 : 3
select length('김진규') from dual; --길이 : 3
select lengthb('김진규') from dual; --9byte
select lengthb('kim') from dual; -- 3byte
























