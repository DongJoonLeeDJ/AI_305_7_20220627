create user shop identified by "1234"
default tablespace "USERS"
temporary tablespace "TEMP";

grant "CONNECT" to shop;
grant "RESOURCE" to shop;
grant dba to shop;

CREATE TABLE membertbl (
    memberid      CHAR(8) NOT NULL,
    membername    NCHAR(5) NOT NULL,
    memberaddress NVARCHAR2(20)
);

CREATE TABLE producttbl (
    productname NCHAR(8) NOT NULL,
    cost        INTEGER NOT NULL,
    makedate    DATE,
    company     NCHAR(10),
    amount      INTEGER NOT NULL
);

insert into membertbl values('Dang','������','��� ��õ�� �ߵ�');
insert into membertbl values('Jee','������','���� ���� ���굿');
insert into membertbl values('Han','���ֿ�','��õ ���� �־ȵ�');
insert into membertbl values('Sang','�����','��� ������ �д籸');

insert into producttbl values('��ǻ��',10,'17/01/01','�Ｚ',17);
insert into producttbl values('��Ź��',20,'18/09/01','LG',3);
insert into producttbl values('�����',5,'19/02/01','���',2);

select * from membertbl;
select * from producttbl;
-- ȸ��������ȸ
select * from membertbl
where memberid='Dang';                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      
-- ȸ�� �ּ� ����
update membertbl
set memberaddress='��� ������'
where memberid='Dang';
--��� ����
select * from producttbl
order by amount;

ALTER TABLE membertbl ADD CONSTRAINT membertbl_pk PRIMARY KEY ( memberid );
ALTER TABLE producttbl ADD CONSTRAINT producttbl_pk PRIMARY KEY ( productname );
CREATE TABLE ordertbl (
    order_id               INTEGER NOT NULL,
    volumn                 INTEGER,
    product_name           NCHAR(8),
    member_id              CHAR(8)
);
ALTER TABLE ordertbl ADD CONSTRAINT ordertbl_pk PRIMARY KEY ( order_id );
ALTER TABLE ordertbl
    ADD CONSTRAINT ordertbl_membertbl_fk FOREIGN KEY ( membertbl_memberid )
        REFERENCES membertbl ( memberid );

ALTER TABLE ordertbl
    ADD CONSTRAINT ordertbl_producttbl_fk FOREIGN KEY ( producttbl_productname )
        REFERENCES producttbl ( productname );

create sequence idSEQ;
-- ���̺� �� ����
alter table ordertbl drop column membertbl_memberid;
alter table ordertbl drop column producttbl_productname;
--�������̺� �׽�Ʈ ������ ����
insert into ordertbl values(idSEQ.NEXTVAL,1,'��ǻ��','Jee');
insert into ordertbl values(idSEQ.NEXTVAL,1,'��Ź��','Jee');
insert into ordertbl values(idSEQ.NEXTVAL,1,'�����','Sang');

select * from ordertbl;

-- �ֹ� ���� ��ȸ
select * from ordertbl o
inner join membertbl m
on o.member_id=m.memberid
inner join producttbl p
on o.product_name=p.productname;

-- �� ����
create or replace view v_order_all
as 
select * from ordertbl o
inner join membertbl m
on o.member_id=m.memberid
inner join producttbl p
on o.product_name=p.productname;

-- �������̺� Į���̸� ���� amount->volume
alter table ordertbl rename column amount to volumne;

