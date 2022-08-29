-- ������ Oracle SQL Developer Data Modeler 21.4.2.059.0838
--   ��ġ:        2022-05-26 09:21:40 KST
--   ����Ʈ:      Oracle Database 11g
--   ����:      Oracle Database 11g



-- predefined type, no DDL - MDSYS.SDO_GEOMETRY

-- predefined type, no DDL - XMLTYPE

CREATE TABLE buy (
    ��з�  NVARCHAR2(10) NOT NULL,
    ��ǰ��  NVARCHAR2(10) NOT NULL,
    �ݾ�   INTEGER NOT NULL,
    ��ǰ�ڵ� INTEGER
);

ALTER TABLE buy ADD CONSTRAINT buy__un UNIQUE ( ��ǰ�ڵ� );

CREATE TABLE employees (
    ��� NVARCHAR2(10) NOT NULL,
    �μ� NVARCHAR2(10) NOT NULL,
    ���� NVARCHAR2(10) NOT NULL,
    �̸� NVARCHAR2(10) NOT NULL,
    ���� NVARCHAR2(10)
);

ALTER TABLE employees ADD CONSTRAINT employees__un UNIQUE ( ���,
                                                            �̸� );

CREATE TABLE items (
    ��з�    NVARCHAR2(10) NOT NULL,
    ����_�ۼ�Ʈ INTEGER NOT NULL
);

ALTER TABLE items ADD CONSTRAINT items__un UNIQUE ( ��з� );

CREATE TABLE member (
    id      NVARCHAR2(10) NOT NULL,
    name    NVARCHAR2(10) NOT NULL,
    address NVARCHAR2(10),
    telnum  NVARCHAR2(30) NOT NULL
);

ALTER TABLE member ADD CONSTRAINT member_pk PRIMARY KEY ( id );

ALTER TABLE member ADD CONSTRAINT member__un UNIQUE ( id );

CREATE TABLE sell (
    id   NVARCHAR2(10) NOT NULL,
    ��ǰ�ڵ� INTEGER NOT NULL,
    ����   INTEGER NOT NULL
);

ALTER TABLE buy
    ADD CONSTRAINT buy_items_fk FOREIGN KEY ( ��з� )
        REFERENCES items ( ��з� );

ALTER TABLE sell
    ADD CONSTRAINT sell_buy_fk FOREIGN KEY ( ��ǰ�ڵ� )
        REFERENCES buy ( ��ǰ�ڵ� );

ALTER TABLE sell
    ADD CONSTRAINT sell_member_fk FOREIGN KEY ( id )
        REFERENCES member ( id );

--������ �Է¹�� �������� ������ ������ ������ ����Ʈ ���
--���̺�Ȯ��
select * from buy;--�ݾ��׸��� ȸ�簡 �����ü���� �����ϴ� ����
select * from employees;
select * from items;--buy�� ���ݰ� ������ ���Ͽ� �ǸŰ� ����
select * from member;
select * from sell;
--���������� ����� �������� ����Ͽ� 101���� �����Ͽ� �ο�
create sequence idnum
    start with 101 increment by 1;
select (IDNUM.nextval)"���","�μ�","����","�̸�","����" from employees;
--ȸ������ �Ǹſ����� ����
select s.id,s."��ǰ�ڵ�",b."��з�",b."��ǰ��",b."�ݾ�",s."����",(b."�ݾ�"*s."����")"�Ǹſ���" from sell s
inner join buy b on s."��ǰ�ڵ�" = b."��ǰ�ڵ�" order by id;
--������ ���Ͽ� �ǸŰ� ����
select s.id,s."��ǰ�ڵ�",b."��з�",b."��ǰ��",b."�ݾ�",s."����",(b."�ݾ�"*s."����")"�Ǹſ���",(("����_�ۼ�Ʈ"+100)/100)"����_����",
(b."�ݾ�"*s."����")*(("����_�ۼ�Ʈ"+100)/100)"�ǸŰ�" from sell s
inner join buy b on s."��ǰ�ڵ�" = b."��ǰ�ڵ�"
inner join items i on b."��з�"=i."��з�" order by id;
--�� �������� ������ �ʹ� ������⿡ �ϳ��� ��� ������
create or replace view V_order as
select s.id,s."��ǰ�ڵ�",b."��з�",b."��ǰ��",b."�ݾ�",s."����",(b."�ݾ�"*s."����")"�Ǹſ���",(("����_�ۼ�Ʈ"+100)/100)"����_����",
(b."�ݾ�"*s."����")*(("����_�ۼ�Ʈ"+100)/100)"�ǸŰ�" from sell s
inner join buy b on s."��ǰ�ڵ�" = b."��ǰ�ڵ�"
inner join items i on b."��з�"=i."��з�" order by id;
--��ȸ���� �ѱ��ž� ����
select * from v_order;

create or replace view v_grade as
select id,sum(�Ǹſ���)"���Ǹſ���",sum(�ǸŰ�)"���ǸŰ�"  from v_order group by id order by id;
--���ǸŰ��� �������� ȸ�����̺� ����� �ο�����
--�ο����� ȸ������ ������ ���Ž� ��޿� ���� ��������  
--�� �̸� �Ϲ� 3�� ���� �ǹ� 5�� ���� ��� 10�� ���� �÷�Ƽ�� ���̻� ���̾� **page297����
select id,"���Ǹſ���","���ǸŰ�", 
    case when ("���ǸŰ�">100000) then '���̾�'
         when ("���ǸŰ�">50000) then '�÷�Ƽ��'
         when ("���ǸŰ�">30000) then '���'
         when ("���ǸŰ�">10000) then '�ǹ�'    
    else '�Ϲ�'
    end as "�����" from v_grade order by "���ǸŰ�" desc;
--�̹����� ����
select (sum("���ǸŰ�")-sum("���Ǹſ���"))"�ݿ� ����" from v_grade; 
--����ް� �ɹ����̺��� ���ļ� ���ο� �ɹ� ���̺��ۼ�(���� �ɹ����̺��� �ű� ȸ���� ���Խ� �����Ͱ� �߰��Ǳ⿡ �׳ɵ�)
create table Mgrade as
select m.id,m.name,m.address,m.telnum,v."�����" from member m
inner join (select id,"���Ǹſ���","���ǸŰ�", 
    case when ("���ǸŰ�">100000) then '���̾�'
         when ("���ǸŰ�">50000) then '�÷�Ƽ��'
         when ("���ǸŰ�">30000) then '���'
         when ("���ǸŰ�">10000) then '�ǹ�'    
    else '�Ϲ�'
end as "�����" from v_grade) v on m.id=v.id;    
select * from Mgrade;
--���������� ����� ���Ǿ��� view�� sequence ����
drop view v_grade;
drop view v_order;
drop sequence idnum;



