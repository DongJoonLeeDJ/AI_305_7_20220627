-- ���̺��� 2�� ����� �� �ܷ�Ű�� ���߿� �ִ� ���
create table p
(
code int primary key,
name varchar2(100));
create table c
(
num int primary key,
name varchar2(100),
pcode int );

-- c ���̺��� pcode�� p ���̺��� code�� �����ϴ� �ܷ�Ű�ε�... �Ǽ��� �߰� �� ��.
-- �� �� c ���̺��� pcode�� �ܷ�Ű�� �����ϴ� ������� �ִ�.

--1. drop table Ű����� ���̺��� ������ ���������� �ٽ� �� �� �ִ�.
-- ���� : drop table Ű����� rollback�� �� ��
-- ��, �� �� �߸������ϸ� �ǵ��� �� ����.
drop table p;
drop table c;

create table c
(
num int primary key,
name varchar2(100),
pcode int,
foreign key (pcode) references p(code) );


drop table c;
-- 2. �������� �ʰ� �ܷ�Ű�� �����ϴ� ���
alter table c add constraint fk_p foreign key(pcode) references p(code);

-- alter Ű����
-- ���̺��� ������ �� ����
--��(=�÷�, column)�� �߰��ϰų� �����ϰų� ������ �� �� ����
--alter table student add constraint fk_stu 
--foreign key(code) references major(code);

-- c ���̺� testname�̶�� ���� �߰� �� ��
alter table c add testname varchar2(1000);

select * from p;

insert into p values(1,'�İ�');
insert into p values(2,'ȭ��');

insert into c values(1,'�̵���',1,'djlee');
insert into c values(2,'������',1,'kimjk');
insert into c values(3,'������',2,'leehm');
insert into c values(4,'��ȣ��',2,'choihj');

select * from c;

commit;
--�Ǽ��� �� ������ rollback�ϸ� ���������� commit�� �������� �Ѿ
delete from c;-- c ���̺� ������ �� ����

--�Ǽ��� �̸� �� �ٲ㵵 rollback�ϸ� ���������� commit�� �������� �Ѿ

update c set name='djlee' ;
rollback; --������ commit�� �������� ���ư�

-- join
select p.name, c.name from p join c on p.code=c.pcode;

select * from c;
select * from p;

alter table c add age int;
update c set age= 20; --��� ����� ���̸� 20��� ��

select * from c;


--order by
-- ����

select * from c order by age ; --��������(������ �� ���� ��), ���� asc�� ���̱⵵ ��.
select * from c order by age desc;--��������(�����ڰ� �� ���� ��)


--group by
-- �з����� ���� ��
-- as Ű���� �̿��ؼ� �÷��� �ٲ� �� �ְ� as ���� ���⸸���ε� �÷��� ���� ����
-- �÷��� ���� ������ �ֵ���ǥ("")�� ���� ��
select pcode, sum(age) as �ѳ���, avg(age) ���, max(age) "�ְ� ����", min(age) "�ּ� ����" from c group by pcode;

--having
-- group by ���� �ٴ� ���ǹ�(where�̶� ����)
-- ��ճ��̰� 30�� �Ѵ� pcode�� ǥ��
select pcode from c group by pcode having avg(age)>30;

--��ø����
-- select �� �ȿ� �Ǵٸ� select���� ���� ��
-- �ְ� ���̰� ���� ����� �̸��� ã������.
select max(age) from c;

select * from c where age=(select max(age) from c);
select name �ְ����� from c where age=(select max(age) from c);

--view
-- select ������� �̿��ؼ� ���� ���� ���̺�
create view find_max_age as select max(age) maxage from c;

select * from find_max_age;


select name from c where age = (select * from find_max_age);

--���ڼ� üũ
-- length �Լ� : ������ ���� üũ�ϴ� �Լ�
-- dual : �ӽ����̺�. �����ϰ� �Լ��� ����� �˰� ���� �� ���̴� �ӽ����̺�
-- lengthb : ���ڿ��� ����Ʈ���� üũ
select length('kim') from dual; -- ���� : 3
select length('������') from dual; --���� : 3
select lengthb('������') from dual; --9byte
select lengthb('kim') from dual; -- 3byte
























