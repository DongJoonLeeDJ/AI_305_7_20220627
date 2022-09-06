CREATE TABLE branchtbl (
    area        NCHAR(3) NOT NULL,
    detail_area NCHAR(5) NOT NULL,
    b_name      NCHAR(10) NOT NULL
);

ALTER TABLE branchtbl ADD CONSTRAINT branch_pk PRIMARY KEY ( b_name );

CREATE TABLE carinfotbl (
    brand    NCHAR(12) NOT NULL,
    category NCHAR(8) NOT NULL,
    model    NVARCHAR2(12) NOT NULL,
    cc       INTEGER NOT NULL,
    boarding INTEGER NOT NULL
);

ALTER TABLE carinfotbl ADD CONSTRAINT carinfotbl_pk PRIMARY KEY ( model );

CREATE TABLE customertbl (
    c_name   NCHAR(5) NOT NULL,
    c_phone  INTEGER NOT NULL,
    c_age    INTEGER,
    c_gender NCHAR(2)
);

ALTER TABLE customertbl ADD CONSTRAINT customer_pk PRIMARY KEY ( c_name );

CREATE TABLE dealertbl (
    d_name    NCHAR(5) NOT NULL,
    position  NCHAR(4),
    d_phone   INTEGER NOT NULL,
    workplace NCHAR(6) NOT NULL
);

ALTER TABLE dealertbl ADD CONSTRAINT dealer_pk PRIMARY KEY ( d_name );

CREATE TABLE stocked_cartbl (
    s_number         INTEGER NOT NULL,
    model            NVARCHAR2(12) NOT NULL,
    p_year           INTEGER NOT NULL,
    km               INTEGER NOT NULL,
    price            INTEGER NOT NULL,
    trouble          NCHAR(6),
    carinfotbl_model NVARCHAR2(12) NOT NULL
);

ALTER TABLE stocked_cartbl ADD CONSTRAINT stocked_car_pk PRIMARY KEY ( s_number );

CREATE TABLE tradetbl (
    t_number                INTEGER NOT NULL,
    s_number                INTEGER NOT NULL,
    c_name                  NCHAR(5) NOT NULL,
    model                   NVARCHAR2(12) NOT NULL,
    price                   INTEGER NOT NULL,
    insureance              NCHAR(2),
    trade_date              DATE NOT NULL,
    d_name                  NCHAR(5) NOT NULL,
    b_name                  NCHAR(10) NOT NULL,
    stocked_cartbl_s_number INTEGER NOT NULL,
    carinfotbl_model        NVARCHAR2(12) NOT NULL,
    customertbl_c_name      NCHAR(5) NOT NULL,
    dealertbl_d_name        NCHAR(5) NOT NULL,
    branchtbl_b_name        NCHAR(10) NOT NULL
);

ALTER TABLE tradetbl ADD CONSTRAINT tradetbl_pk PRIMARY KEY ( t_number );

ALTER TABLE stocked_cartbl
    ADD CONSTRAINT stocked_cartbl_carinfotbl_fk FOREIGN KEY ( carinfotbl_model )
        REFERENCES carinfotbl ( model );

ALTER TABLE tradetbl
    ADD CONSTRAINT tradetbl_branchtbl_fk FOREIGN KEY ( branchtbl_b_name )
        REFERENCES branchtbl ( b_name );

ALTER TABLE tradetbl
    ADD CONSTRAINT tradetbl_carinfotbl_fk FOREIGN KEY ( carinfotbl_model )
        REFERENCES carinfotbl ( model );

ALTER TABLE tradetbl
    ADD CONSTRAINT tradetbl_customertbl_fk FOREIGN KEY ( customertbl_c_name )
        REFERENCES customertbl ( c_name );

ALTER TABLE tradetbl
    ADD CONSTRAINT tradetbl_dealertbl_fk FOREIGN KEY ( dealertbl_d_name )
        REFERENCES dealertbl ( d_name );

ALTER TABLE tradetbl
    ADD CONSTRAINT tradetbl_stocked_cartbl_fk FOREIGN KEY ( stocked_cartbl_s_number )
        REFERENCES stocked_cartbl ( s_number );
        
-- insert ����

-- ��������
insert into carinfotbl values('���','������','K5',2000,5);
insert into carinfotbl values('���','��������','K3',1600,5);
insert into carinfotbl values('���','������','K8',3470,5);
insert into carinfotbl values('���','SUV','����Ƽ��',2000,5);
insert into carinfotbl values('���','SUV','�ҷ���',2500,7);
insert into carinfotbl values('���','SUV','ī�Ϲ�',3500,9);
insert into carinfotbl values('���','SUV','���Ϻ�',3000,6);
insert into carinfotbl values('���','������','���',1000,5);
insert into carinfotbl values('���','����SUV','�Ϸ�',1580,5);

insert into carinfotbl values('����','������','�縮���̵�',3800,7);
insert into carinfotbl values('����','������','�׷���',3300,5);
insert into carinfotbl values('����','������','�ҳ�Ÿ',2500,5);
insert into carinfotbl values('����','��������','�ƹݶ�',1580,5);
insert into carinfotbl values('����','SUV','��Ÿ��',2500,5);
insert into carinfotbl values('����','Ʈ��','����',2500,3);
insert into carinfotbl values('����','SUV','����',2000,5);

insert into carinfotbl values('���׽ý�','������','EQ900',3770,5);
insert into carinfotbl values('���׽ý�','������','G80',3770,5);
insert into carinfotbl values('���׽ý�','������','G70',2000,5);
insert into carinfotbl values('���׽ý�','������','G90',3770,5);

insert into carinfotbl values('�ֿ�','����SUV','Ƽ����',2000,5);
insert into carinfotbl values('�ֿ�','SUV','�ڶ���',1600,5);
insert into carinfotbl values('�ֿ�','Ʈ��','������',2200,5);

insert into carinfotbl values('������','������','����ũ',1000,5);
insert into carinfotbl values('������','����SUV','Ʈ����',1400,5);
insert into carinfotbl values('������','Ʈ��','�ݷζ�',3700,5);
insert into carinfotbl values('������','����SUV','Ʈ���Ϻ�����',1340,5);

insert into carinfotbl values('����','������','SM6',2000,5);
insert into carinfotbl values('����','������','SM7',3500,5);
insert into carinfotbl values('����','����SUV','QM3',1500,5);
insert into carinfotbl values('����','SUV','QM5',2000,5);
insert into carinfotbl values('����','SUV','QM6',2000,5);
insert into carinfotbl values('����','��������','SM3',1500,5);


insert into carinfotbl values('����','������','E-Ŭ����',3000,5);
insert into carinfotbl values('����','������','C-Ŭ����',2000,5);
insert into carinfotbl values('����','SUV','GLA-Ŭ����',2000,5);

insert into carinfotbl values('BMW','SUV','1�ø���',2000,5);
insert into carinfotbl values('BMW','SUV','2�ø���',2000,5);
insert into carinfotbl values('BMW','������','3�ø���',2000,5);
insert into carinfotbl values('BMW','������','4�ø���',2000,5);
insert into carinfotbl values('BMW','������','5�ø���',2000,5);
insert into carinfotbl values('BMW','������','6�ø���',3000,5);
insert into carinfotbl values('BMW','������','7�ø���',3000,5);

insert into carinfotbl values('�ƿ��','��������','A-3',2000,4);
insert into carinfotbl values('�ƿ��','������','A-4',2000,4);
insert into carinfotbl values('�ƿ��','������','A-5',2000,4);
insert into carinfotbl values('�ƿ��','������','A-6',5100,4);
insert into carinfotbl values('�ƿ��','������','A-7',3000,4);
insert into carinfotbl values('�ƿ��','������','A-8',4000,5);

insert into carinfotbl values('����','SUV','V60',2000,5);
insert into carinfotbl values('����','SUV','V90',2000,5);

insert into carinfotbl values('�����ٰ�','��������','����',2000,5);
insert into carinfotbl values('�����ٰ�','����SUV','Ƽ����',2000,5);
insert into carinfotbl values('�����ٰ�','������','�Ļ�Ʈ',2000,5);

select * from carinfotbl;

--�Ź�����

-- ������ ����
create sequence idSEQ;

-- fk Į�� ����
alter table stocked_cartbl drop column carinfotbl_model;

insert into stocked_cartbl values(idSEQ.nextval,'K5',2017,66570,1250,'');
insert into stocked_cartbl values(idSEQ.nextval,'���',2020,5420,980,'');
insert into stocked_cartbl values(idSEQ.nextval,'�ҳ�Ÿ',2016,12500,700,'ħ��');
insert into stocked_cartbl values(idSEQ.nextval,'V60',2018,39650,1180,'����');
insert into stocked_cartbl values(idSEQ.nextval,'Ƽ����',2017,89360,1650,'');
insert into stocked_cartbl values(idSEQ.nextval,'������',2019,33570,2020,'');
insert into stocked_cartbl values(idSEQ.nextval,'����',2015,99870,1990,'');
insert into stocked_cartbl values(idSEQ.nextval,'�ƹݶ�',2017,156570,300,'����');
insert into stocked_cartbl values(idSEQ.nextval,'�ƹݶ�',2010,76020,720,'');
insert into stocked_cartbl values(idSEQ.nextval,'�ƹݶ�',2011,62570,210,'����');
insert into stocked_cartbl values(idSEQ.nextval,'�ƹݶ�',2019,27700,1690,'');
insert into stocked_cartbl values(idSEQ.nextval,'K3',2021,4210,2230,'');
insert into stocked_cartbl values(idSEQ.nextval,'K3',2019,20630,2020,'');
insert into stocked_cartbl values(idSEQ.nextval,'�ҳ�Ÿ',2017,61690,1520,'');
insert into stocked_cartbl values(idSEQ.nextval,'�ҳ�Ÿ',2019,1050,2840,'');
insert into stocked_cartbl values(idSEQ.nextval,'�ҳ�Ÿ',2018,36320,2590,'');
insert into stocked_cartbl values(idSEQ.nextval,'SM5',2010,60020,180,'����');
insert into stocked_cartbl values(idSEQ.nextval,'SM5',2018,13877,1600,'');
insert into stocked_cartbl values(idSEQ.nextval,'SM5',2016,133695,1230,'');
insert into stocked_cartbl values(idSEQ.nextval,'SM6',2017,84253,1250,'');
insert into stocked_cartbl values(idSEQ.nextval,'A-6',2011,13560,960,'');
insert into stocked_cartbl values(idSEQ.nextval,'E-Ŭ����',2018,27670,4420,'');
insert into stocked_cartbl values(idSEQ.nextval,'E-Ŭ����',2013,73550,1190,'����');
insert into stocked_cartbl values(idSEQ.nextval,'GLA-Ŭ����',2017,51770,2890,'');
insert into stocked_cartbl values(idSEQ.nextval,'����Ƽ��',2020,4470,2150,'');
insert into stocked_cartbl values(idSEQ.nextval,'����Ƽ��',2012,51710,1170,'');
insert into stocked_cartbl values(idSEQ.nextval,'�ҷ���',2019,86440,2790,'');
insert into stocked_cartbl values(idSEQ.nextval,'�ҷ���',2018,104690,1920,'');
insert into stocked_cartbl values(idSEQ.nextval,'ī�Ϲ�',2020,64470,3250,'');

select * from stocked_cartbl;

-- ���� ����

insert into dealertbl values('�賲��','�븮',01088885555,'����');
insert into dealertbl values('���߰�','���',01012345678,'�ұ���');
insert into dealertbl values('��ħ��','����',01098765432,'�ؿ����');
insert into dealertbl values('�ֹ���','����',01011223344,'�������ŵ�����');
insert into dealertbl values('���浹','�븮',01011112222,'�����');
insert into dealertbl values('�Ӱ���','����',01033334444,'������');
insert into dealertbl values('������','�븮',01055556666,'������');
insert into dealertbl values('�質��','���',01077778888,'������');
insert into dealertbl values('����','����',01099990000,'������');
insert into dealertbl values('���Һ�','����',01099887766,'ĥ����');
insert into dealertbl values('��å��','����',01033557799,'��ȭ����');
insert into dealertbl values('������','���',01088664422,'������');
insert into dealertbl values('�վ�Ÿ','�븮',01055556666,'�����������');
insert into dealertbl values('�����','����',01054324566,'��������');
insert into dealertbl values('������','���',01011579826,'õ����');
insert into dealertbl values('������','����',01023456666,'���ֽ�û��');
insert into dealertbl values('������','�븮',01055556666,'������');
insert into dealertbl values('�ҷ���','�븮',01021572646,'ĥ����');
insert into dealertbl values('��Ʈ��','���',01054568121,'������');
insert into dealertbl values('������','����',01017863667,'������');
insert into dealertbl values('������','���',01028726412,'�ϻ���');
insert into dealertbl values('������','����',01032418763,'������');
insert into dealertbl values('����','���',01044566117,'������');
insert into dealertbl values('�ֽֿ�','����',01051452458,'��������');
insert into dealertbl values('�Ŵ���','����',01033556779,'������');
insert into dealertbl values('������','���',01012344557,'������');
insert into dealertbl values('�Ǻ���','�븮',01051561231,'������');
insert into dealertbl values('�躥��','���',01015758997,'������');
insert into dealertbl values('��ڹ�','�븮',01024587257,'������');
insert into dealertbl values('�轺��','����',01057157232,'��õ������');
insert into dealertbl values('�̶���','���',01034418888,'�Ʒü���');
insert into dealertbl values('�ڻ���','����',01042187251,'������');
insert into dealertbl values('Ȳ����','����',01024751699,'�Ƚ���');
insert into dealertbl values('ȫ����','���',01032781166,'������');
insert into dealertbl values('��ȯ��','�븮',01015213478,'�����');
insert into dealertbl values('������','���',01024680014,'������');
insert into dealertbl values('������','�븮',01015712477,'������');
insert into dealertbl values('�̼���','���',01022478211,'������');
insert into dealertbl values('�����','����',01091175213,'�д���');
insert into dealertbl values('���Ծ�','�븮',01058777114,'������');
insert into dealertbl values('������','����',01033775122,'��������');
insert into dealertbl values('������','����',01044447414,'������');
insert into dealertbl values('����Ʈ','����',01033669999,'���뱸����');
insert into dealertbl values('�ȿ���','����',01088811114,'���ְ�����');
insert into dealertbl values('������','���',01071242323,'������');
insert into dealertbl values('������','���',01062626262,'���ҽ�Ƽ��');
insert into dealertbl values('����Ŭ','�븮',01033347183,'������');
insert into dealertbl values('������','����',01066666115,'�ұ���');
insert into dealertbl values('������','����',01077447745,'�������');
insert into dealertbl values('������','���',01099881122,'�������');

-- column ũ�� ����
alter table dealertbl
    modify( workplace nchar(8) null);
    
select * from dealertbl;

-- ���� ���
insert into branchtbl values('�뱸','����','���뱸����');
insert into branchtbl values('�뱸','����','�Ƚ���');
insert into branchtbl values('�뱸','����','������');
insert into branchtbl values('�뱸','������','������');
insert into branchtbl values('�뱸','������','������');
insert into branchtbl values('�뱸','����','����');
insert into branchtbl values('�뱸','�ϱ�','ĥ����');
insert into branchtbl values('�뱸','�޼���','������');
insert into branchtbl values('�뱸','����','�����');

insert into branchtbl values('����','������','������');
insert into branchtbl values('����','����','�ұ���');
insert into branchtbl values('����','��õ��','�����������');
insert into branchtbl values('����','������','������');
insert into branchtbl values('����','������','������');
insert into branchtbl values('����','������','������');
insert into branchtbl values('����','���빮��','������');
insert into branchtbl values('����','���빮��','�������');

insert into branchtbl values('��õ','����Ȧ��','������');
insert into branchtbl values('��õ','����','������');
insert into branchtbl values('��õ','����','������');
insert into branchtbl values('��õ','��籸','�����');

insert into branchtbl values('�λ�','�ؿ�뱸','���ҽ�Ƽ��');
insert into branchtbl values('�λ�','������','������');
insert into branchtbl values('�λ�','������','��������');
insert into branchtbl values('�λ�','���ϱ�','�ٴ�����');
insert into branchtbl values('�λ�','�λ�����','������');

insert into branchtbl values('����','���걸','�����');
insert into branchtbl values('����','�ϱ�','������');
insert into branchtbl values('����','����','������');

insert into branchtbl values('����','�����','������');
insert into branchtbl values('����','����','������');
insert into branchtbl values('����','������','������');

insert into branchtbl values('���','���ֱ�','������');
insert into branchtbl values('���','�ϱ�','��ȭ����');

insert into branchtbl values('���','���ֽ�','���ֽ�û��');
insert into branchtbl values('���','���̽�','������');
insert into branchtbl values('���','��õ��','��õ���ŵ�����');

insert into branchtbl values('�泲','â����','������');
insert into branchtbl values('�泲','���ؽ�','����������');
insert into branchtbl values('�泲','������','������');
insert into branchtbl values('�泲','�뿵��','�뿵��');

insert into branchtbl values('����','�����','������');
insert into branchtbl values('����','���ֽ�','�ϻ���');
insert into branchtbl values('����','�ͻ��','�ͻ���');
insert into branchtbl values('����','������','������');

insert into branchtbl values('����','�����','������');
insert into branchtbl values('����','������','������');
insert into branchtbl values('����','��õ��','��õ��');
insert into branchtbl values('����','���ֽ�','������');

insert into branchtbl values('���','û�ֽ�','�����');
insert into branchtbl values('���','���ֽ�','������');
insert into branchtbl values('���','��õ��','��õ������');
insert into branchtbl values('���','��õ��','��õ��');

insert into branchtbl values('�泲','õ�Ƚ�','õ����');
insert into branchtbl values('�泲','�ƻ��','�ƻ���');
insert into branchtbl values('�泲','���ֽ�','������');
insert into branchtbl values('�泲','����','�Ʒü���');

insert into branchtbl values('���','������','������');
insert into branchtbl values('���','������','�д���');
insert into branchtbl values('���','�����ν�','��������');
insert into branchtbl values('���','�����ֽ�','��������');
insert into branchtbl values('���','����','�ϻ���');
insert into branchtbl values('���','������','������');
insert into branchtbl values('���','���ν�','������');
insert into branchtbl values('���','���ý�','������');

insert into branchtbl values('����','��õ��','�Ҿ���');
insert into branchtbl values('����','���ֽ�','�������ŵ�����');
insert into branchtbl values('����','������','������');

insert into branchtbl values('����','��������','��������');
insert into branchtbl values('����','���ֽ�','���ְ�����');
insert into branchtbl values('����','������','������');

select * from branchtbl;

-- �� ���
INSERT INTO customertbl VALUES (
    '�����',
    '01073211713',
    '28',
    '��'
);

-- customer #2
INSERT INTO customertbl VALUES (
    '�̵���',
    '01022720189',
    '32',
    '��'
);

-- customer #3
INSERT INTO customertbl VALUES (
    '������',
    '01097792756',
    '24',
    '��'
);

-- customer #4
INSERT INTO customertbl VALUES (
    '�ֹμ�',
    '01053185577',
    '54',
    '��'
);

-- customer #5
INSERT INTO customertbl VALUES (
    '��ä��',
    '01023187072',
    '41',
    '��'
);

-- customer #6
INSERT INTO customertbl VALUES (
    '���¾�',
    '01026264123',
    '33',
    '��'
);

-- customer #7
INSERT INTO customertbl VALUES (
    '�谡��',
    '01074761733',
    '30',
    '��'
);

select * from customertbl;

-- ������ ����
create sequence tseq;

-- Į�� ����
alter table tradetbl drop column model;
alter table tradetbl drop column price;
alter table tradetbl drop column stocked_cartbl_s_number;
alter table tradetbl drop column carinfotbl_model;
alter table tradetbl drop column branchtbl_b_name;
alter table tradetbl drop column customertbl_c_name;
alter table tradetbl drop column dealertbl_d_name;

-- column ũ�� ����
alter table tradetbl
    modify(INSUREANCE nchar(3));

-- �ŷ� ����
insert into tradetbl
values(tseq.nextval,9,'�����','����','2020-05-25','�賲��','����');
insert into tradetbl
values(tseq.nextval,15,'�̵���','�̰���','2022-04-21','�ֹ���','�������ŵ�����');
insert into tradetbl
values(tseq.nextval,3,'������','����','2021-08-31','�վ�Ÿ','�����������');
insert into tradetbl
values(tseq.nextval,22,'�ֹμ�','����','2021-10-11','ȫ����','������');
insert into tradetbl
values(tseq.nextval,26,'��ä��','����','2022-02-05','������','������');
insert into tradetbl
values(tseq.nextval,14,'�谡��','�̰���','2020-09-13','������','�������');
insert into tradetbl
values(tseq.nextval,8,'���¾�','����','2019-12-27','������','������');

select * from tradetbl;
