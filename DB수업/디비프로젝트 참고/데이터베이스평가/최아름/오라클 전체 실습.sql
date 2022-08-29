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

insert into membertbl values('Dang','당탕이','경기 부천시 중동');
insert into membertbl values('Jee','지운이','서울 은평구 증산동');
insert into membertbl values('Han','한주연','인천 남구 주안동');
insert into membertbl values('Sang','상길이','경기 성남시 분당구');

insert into producttbl values('컴퓨터',10,'17/01/01','삼성',17);
insert into producttbl values('세탁기',20,'18/09/01','LG',3);
insert into producttbl values('냉장고',5,'19/02/01','대우',2);

select * from membertbl;
select * from producttbl;
-- 회원정보조회
select * from membertbl
where memberid='Dang';                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      
-- 회원 주소 변경
update membertbl
set memberaddress='경기 수원시'
where memberid='Dang';
--재고 관리
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
-- 테이블 열 삭제
alter table ordertbl drop column membertbl_memberid;
alter table ordertbl drop column producttbl_productname;
--오더테이블 테스트 데이터 삽입
insert into ordertbl values(idSEQ.NEXTVAL,1,'컴퓨터','Jee');
insert into ordertbl values(idSEQ.NEXTVAL,1,'세탁기','Jee');
insert into ordertbl values(idSEQ.NEXTVAL,1,'냉장고','Sang');

select * from ordertbl;

-- 주문 내역 조회
select * from ordertbl o
inner join membertbl m
on o.member_id=m.memberid
inner join producttbl p
on o.product_name=p.productname;

-- 뷰 생성
create or replace view v_order_all
as 
select * from ordertbl o
inner join membertbl m
on o.member_id=m.memberid
inner join producttbl p
on o.product_name=p.productname;

-- 오더테이블 칼럼이름 변경 amount->volume
alter table ordertbl rename column amount to volumne;

