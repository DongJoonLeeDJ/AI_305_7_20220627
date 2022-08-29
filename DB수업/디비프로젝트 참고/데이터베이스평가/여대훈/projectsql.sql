drop table usertbl CASCADE CONSTRAINTS;
drop table ordertbl CASCADE CONSTRAINTS;
drop table movietbl CASCADE CONSTRAINTS;
drop table favortbl CASCADE CONSTRAINTS;
drop table credittbl CASCADE CONSTRAINTS;

CREATE SEQUENCE ODNUM;
create sequence MVNUM;
drop SEQUENCE odnum;
drop SEQUENCE mvnum;

INSERT INTO usertbl VALUES('LSG','�̽±�',1987,'lsg@hmail.net','');
INSERT INTO usertbl VALUES('KBS','�����',1979,'kbs@hmail.net','');
INSERT INTO usertbl VALUES('KKH','���ȣ',1971,'kkh@hamil.net','');
INSERT INTO usertbl VALUES('JYP','������',1950,'jyp@kmail.net','');
INSERT INTO usertbl VALUES('SSK','���ð�','1979','ssk@kmail.net','');
INSERT INTO usertbl VALUES('LJB','�����','1963','ljb@kmail.net','');

insert into movietbl values(mvnum.nextval,'SF','����','�� �ϵ�','��� �ö��̼�','9000��');
insert into movietbl values(mvnum.nextval,'�׼�','��ü��Ż��','�����','�����','7000��');
insert into movietbl values(mvnum.nextval,'�ڹ̵�','����Ʈ','������','�̻��','6000��');
insert into movietbl values(mvnum.nextval,'������','�����ڵ�','�̺���','���ȣ','8000��');
insert into movietbl values(mvnum.nextval,'SF','�����̴���','�ص�� ���ʵ�','��ũ ����','7000��');
insert into movietbl values(mvnum.nextval,'����','����Ȳ��','������','���ȣ','6000��');
insert into movietbl values(mvnum.nextval,'�θǽ�','Ŭ����','�տ���','�����','5000��');
insert into movietbl values(mvnum.nextval,'�׼�','�μ���','������������ī������','ũ�������� ���','7000��');
insert into movietbl values(mvnum.nextval,'�ڹ̵�','��Ǫ�㽽','�ּ�ġ','�ּ�ġ','3000��');
insert into movietbl values(mvnum.nextval,'����','���˵���2','������','�̻��','12000��');

insert into ordertbl VALUES(odnum.nextval,'LSG','2','7000','22/02/01','ī�����');
insert into ordertbl VALUES(odnum.nextval,'LSG','3','6000','22/02/01','ī�����');
insert into ordertbl VALUES(odnum.nextval,'JYP','5','7000','22/02/05','������ü');
insert into ordertbl VALUES(odnum.nextval,'LJB','10','12000','22/02/07','ī�����');
insert into ordertbl VALUES(odnum.nextval,'SSK','7','5000','22/02/01','ī�����');

INSERT INTO credittbl VALUES('LSG','ī�����','�Ｚī��','1111-1111-1111','','');
INSERT INTO credittbl VALUES('KBS','ī�����','����ī��','2222-2222-1111','','');
INSERT INTO credittbl VALUES('KKH','������ü','','','����','3333-33-333333');
INSERT INTO credittbl VALUES('JYP','������ü','','','����','555-55-5555555');
INSERT INTO credittbl VALUES('SSK','ī�����','����ī��','1231-1231-1111','','');
INSERT INTO credittbl VALUES('LJB','ī�����','�ϳ�ī��','333-2222-1111','','');

INSERT INTO favortbl VALUES('LSG','�׼�','�̺���','������');
INSERT INTO favortbl VALUES('KBS','','�۰�ȣ','����ȣ');
INSERT INTO favortbl VALUES('KKH','SF','','');
INSERT INTO favortbl VALUES('JYP','�θǽ�','������������ī������','ũ�������� ���');
INSERT INTO favortbl VALUES('SSK','','�ι�Ʈ�ٿ���ִϾ�','');
INSERT INTO favortbl VALUES('LJB','����','������','');

SELECT * FROM credittbl;
SELECT * FROM favortbl;
SELECT * FROM movietbl;
SELECT * FROM ordertbl;
SELECT * FROM usertbl;
SELECT movie_title,movie_actor from movietbl; --��ȭ �˻�
SELECT User_name FROM usertbl;

select movie_title from movietbl where movie_catecory='�׼�';--ī�װ��� ��ȭ �˻�
select * from ordertbl where user_id = 'LSG'; --���̵�� ���� ���� �˻�
select user_id,user_name from usertbl where birthyear <=2002;--���� �˻�
select user_id, bank from credittbl where pay_info='������ü';--�������� ���� ��ü ���̵�
select user_id, card_co from credittbl where card_co='�Ｚī��';--�Ἴ���� �Ｚī�� ���̵� 

select user_id,birthyear from usertbl order by birthyear;
select user_id,birthyear from usertbl order by user_id desc, birthyear asc;

create table ord as (select user_name,mail from usertbl); 
drop TABLE ord;

select user_id, sum(price) from ordertbl group by user_id;--���̵� �� ��������
select count(bank) as "������ü �̿���" from credittbl;
select count(card_co) as "�ſ�ī�� �̿���" from credittbl;

create table movietbl2 as (select * from movietbl);
ALTER TABLE movietbl2 MODIFY(price NUMBER(5));
insert into movietbl2 values(mvnum.nextval,'SF','����','�� �ϵ�','��� �ö��̼�','9000');
insert into movietbl2 values(mvnum.nextval,'�׼�','��ü��Ż��','�����','�����','7000');
insert into movietbl2 values(mvnum.nextval,'�ڹ̵�','����Ʈ','������','�̻��','6000');
insert into movietbl2 values(mvnum.nextval,'������','�����ڵ�','�̺���','���ȣ','8000');
insert into movietbl2 values(mvnum.nextval,'SF','�����̴���','�ص�� ���ʵ�','��ũ ����','7000');
insert into movietbl2 values(mvnum.nextval,'����','����Ȳ��','������','���ȣ','6000');
insert into movietbl2 values(mvnum.nextval,'�θǽ�','Ŭ����','�տ���','�����','5000');
insert into movietbl2 values(mvnum.nextval,'�׼�','�μ���','������������ī������','ũ�������� ���','7000');
insert into movietbl2 values(mvnum.nextval,'�ڹ̵�','��Ǫ�㽽','�ּ�ġ','�ּ�ġ','3000');
insert into movietbl2 values(mvnum.nextval,'����','���˵���2','������','�̻��','12000');
--�帣�� ��ȭ �հ�ݾ��� ����ϱ����� ���̺� ����,����,���� ����
select movie_catecory, sum(price) from movietbl2 group by movie_catecory; --�帣�� ��ȭ �հ�ݾ�

DROP TABLE movietbl2; --���� ���̺� ����   

drop TABLE movietbl CASCADE CONSTRAINTS;--�θ� �ڽ� ������ ���̺� ����
SELECT * FROM RECYCLEBIN;--������ �˻�
FLASHBACK TABLE movietbl TO BEFORE DROP;--����
SELECT * FROM movietbl;

select * from ordertbl join credittbl
on ordertbl.user_id=credittbl.user_id
where ordertbl.user_id = 'LSG'; -- �ֹ�����, �������� 


select u.user_id, u.user_name, u.mail, o.user_id, o.movie_id, o.price,f.favor_category as"��ȣ�帣",f.favor_actor as"��ȣ���"
from usertbl u
join favortbl f
on u.user_id = f.user_id
join ordertbl o
on o.user_id=f.user_id; --3���̺� ����
        
create or replace view v_userINFO
as
select u.user_id, u.user_name, mail, c.card_co||c.card_num as"ī������", c.bank||c.account as"��������"
from usertbl u
join credittbl c
on u.user_id=c.user_id;
--�� ����
SELECT * FROM v_userinfo;





















