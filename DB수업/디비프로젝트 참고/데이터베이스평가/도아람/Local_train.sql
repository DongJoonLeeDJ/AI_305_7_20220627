CREATE TABLE membertbl (
    membernumber INTEGER NOT NULL,
    membername   NVARCHAR2(10) NOT NULL,
    birthday     INTEGER,
    memberemail  VARCHAR2(30),
    mobile1      INTEGER NOT NULL,
    mobile2      INTEGER NOT NULL
);

delete from membertbl;

alter table membertbl
    modify (mobile1 CHAR(3));
    
alter table membertbl
    modify (mobile2 CHAR(8));

CREATE TABLE seattbl (
    carnumber INTEGER NOT NULL,
    seat1     INTEGER NOT NULL,
    seat2     INTEGER,
    seat3     INTEGER,
    seat4     INTEGER
);

CREATE TABLE paytbl (
    membernumber INTEGER NOT NULL,
    bankname     VARCHAR2(6) NOT NULL,
    cardnumber   INTEGER NOT NULL,
    validity     DATE NOT NULL,
    password     INTEGER NOT NULL
);
delete from paytbl;

alter table paytbl
    modify (validity char(40));

alter session set NLS_DATE_FORMAT = 'YYYY/MM/DD';
    
alter table paytbl
    modify (bankname varchar2(20));
    

CREATE TABLE reservetbl (
    membernumber  INTEGER,
    tdate         DATE NOT NULL,
    person        INTEGER default 1 NOT NULL
);

delete from reservetbl;

alter table reservetbl
    modify (trainname char(20));

alter table reservetbl
    add (trainname char(20), trainnumber integer, startstation nvarchar2(10), finishstation nvarchar2(10), starttime char(5), finishtime char(5));
        
select * from reservetbl;

CREATE TABLE traintbl (
    trainname     CHAR(10),
    trainnumber   INTEGER NOT NULL,
    startstation  NVARCHAR2(10) NOT NULL,
    finishstation NVARCHAR2(10) NOT NULL,
    starttime     CHAR(5) NOT NULL,
    finishtime    CHAR(5) NOT NULL,
    price         INTEGER NOT NULL
);

alter table traintbl
    modify (trainname nvarchar2(20));

alter table traintbl
    rename column price to price1;
    
alter table traintbl
    add price2 integer;
    
alter table seattbl
    add class nvarchar2(5) not null;
    
alter table seattbl
    modify (seat1 varchar2(5));
    
alter table seattbl
    modify (seat2 varchar2(5));
    
alter table seattbl
    modify (seat3 varchar2(5));
    
alter table seattbl
    modify (seat4 varchar2(5));
    
alter table seattbl
    add (membernumber integer);
    
ALTER TABLE membertbl ADD CONSTRAINT membertbl_pk PRIMARY KEY ( membernumber );
ALTER TABLE paytbl ADD CONSTRAINT paytbl_pk PRIMARY KEY ( membernumber );
ALTER TABLE reservetbl ADD CONSTRAINT reservetbl_pk PRIMARY KEY ( membernumber );
ALTER TABLE seattbl ADD CONSTRAINT seattbl_pk PRIMARY KEY ( membernumber );

ALTER TABLE paytbl
    ADD CONSTRAINT paytbl_membertbl_fk 
    FOREIGN KEY ( membernumber )
    REFERENCES membertbl ( membernumber );

ALTER TABLE reservetbl
    ADD CONSTRAINT reservetbl_membertbl_fk 
    FOREIGN KEY ( membernumber )
    REFERENCES membertbl ( membernumber );
    
ALTER TABLE seattbl
    ADD CONSTRAINT seattbl_membertbl_fk
    FOREIGN KEY ( membernumber )
    REFERENCES membertbl ( membernumber );

insert into membertbl values(123456, '도아람', 19990106, 'doaram123@naver.com', 010, 12345678);
insert into membertbl values(456789, '이승기', 19791125, 'leeseunggy@naver.com', 010, 11111111);
insert into membertbl values(198473, '김범수', 19870324, 'kimbumsu@naver.com', 010, 22222222);
insert into membertbl values(254841, '김경호', 19710525, 'kimgeongho@naver.com', 010, 33333333);
insert into membertbl values(844715, '성시경', 19830428, 'sungsigeong@naver.com', 010, 44444444);


select membernumber "회원번호", membername "이름", membertbl.birthday "생년월일", membertbl.memberemail "이메일", mobile1||mobile2 "전화번호"
from membertbl;

insert into traintbl values('KTX', 045, '서울역', '동대구역', '16:00', '17:51', 60300, 43100);
insert into traintbl values('SRT', 324, '부산역', '신경주역', '10:15', '10:42', 10100, '');
insert into traintbl values('무궁화호', 1207, '수원역', '경산역', '08:34', '12:11', 19300, '');
insert into traintbl values('ITX-새마을', 1032, '대전역', '서울역', '12:44', '14:29', 16000, '');
insert into traintbl values('무궁화호', 1779, '동대구역', '태화강역', '17:08', '18:31', 7700, '');
insert into traintbl values('KTX', 432, '광주송정역', '정읍역', '19:29', '19:46', 13200, 8400);
insert into traintbl values('KTX', 207, '천안아산역', '밀양역', '09:45', '11:30', 46800, 33400);
insert into traintbl values('SRT', 334, '서대구역', '수서역', '15:44', '17:13', 36400, '');
insert into traintbl values('무궁화호', 1362, '부산역', '구미역', '21:17', '23:21', 10700, '');
insert into traintbl values('KTX-이음', 841, '서울역', '정동진역', '07:01', '09:12', 34000, 28300);

select * from traintbl;

select trainname "기차이름", trainnumber "기차번호", startstation "출발역", finishstation "도착역", starttime "출발시간", finishtime "도착시간", price1 "특실가격", price2 "일반실가격"
from traintbl;

insert into paytbl values(123456, '농협',1234567891234254, '06/22', 1234);
insert into paytbl values(456789, '국민',1547895412357895, '12/25', 4567);
insert into paytbl values(198473, '신한',7151784521482354, '03/24', 5748);
insert into paytbl values(254841, '카카오',5474521457893551, '05/24', 8441);
insert into paytbl values(844715, '대구',4512486217651268, '07/22', 9541);

select * from paytbl;

select membernumber "회원번호", bankname "은행", cardnumber "카드번호", validity "유효기간", password "비밀번호"
from paytbl;

insert into reservetbl values(123456, '2022-09-22', 1, 'KTX', 045, '서울역', '동대구역', '16:00', '17:51');
insert into reservetbl values(456789, '2022-05-25', 2, 'KTX-이음', 841, '서울역', '정동진역', '07:01', '09:12');
insert into reservetbl values(198473, '2022-07-13', 1, '무궁화호', 1779, '동대구역', '태화강역', '17:08', '18:31');
insert into reservetbl values(254841, '2022-06-01', 3, 'SRT', 324, '부산역', '신경주역', '10:15', '10:42');
insert into reservetbl values(844715, '2022-06-17', 4, 'KTX', 207, '천안아산역', '밀양역', '09:45', '11:30');

select * from reservetbl;

select * from seattbl;

insert into seattbl values(045, '15C','','','','일반실',123456);
insert into seattbl values(841, '24A','25B','','','특실',456789);
insert into seattbl values(1779, '08D','','','','일반실',198473);
insert into seattbl values(324, '42A','43B','44C','','일반실',254841);
insert into seattbl values(207, '30A','31B','32C','33D','특실',844715);

select m.membernumber as "회원번호", r.trainname as "기차이름", r.trainnumber as "기차번호", s.class as "차실", r.startstation as "출발역", r.finishstation as "도착역", r.starttime as "출발시간", r.finishtime as "도착시간", r.person as "인원", s.seat1 || s.seat2 || s.seat3 || s.seat4 as "좌석"
from membertbl m
inner join reservetbl r
    on m.membernumber=r.membernumber
inner join seattbl s
    on r.membernumber=s.membernumber;
    
select * from membertbl;
select * from traintbl;
select * from reservetbl;