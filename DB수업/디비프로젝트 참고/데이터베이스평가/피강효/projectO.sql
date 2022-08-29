-- 생성자 Oracle SQL Developer Data Modeler 21.4.2.059.0838
--   위치:        2022-05-26 09:21:40 KST
--   사이트:      Oracle Database 11g
--   유형:      Oracle Database 11g



-- predefined type, no DDL - MDSYS.SDO_GEOMETRY

-- predefined type, no DDL - XMLTYPE

CREATE TABLE buy (
    대분류  NVARCHAR2(10) NOT NULL,
    상품명  NVARCHAR2(10) NOT NULL,
    금액   INTEGER NOT NULL,
    상품코드 INTEGER
);

ALTER TABLE buy ADD CONSTRAINT buy__un UNIQUE ( 상품코드 );

CREATE TABLE employees (
    사번 NVARCHAR2(10) NOT NULL,
    부서 NVARCHAR2(10) NOT NULL,
    직급 NVARCHAR2(10) NOT NULL,
    이름 NVARCHAR2(10) NOT NULL,
    연차 NVARCHAR2(10)
);

ALTER TABLE employees ADD CONSTRAINT employees__un UNIQUE ( 사번,
                                                            이름 );

CREATE TABLE items (
    대분류    NVARCHAR2(10) NOT NULL,
    이율_퍼센트 INTEGER NOT NULL
);

ALTER TABLE items ADD CONSTRAINT items__un UNIQUE ( 대분류 );

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
    상품코드 INTEGER NOT NULL,
    수량   INTEGER NOT NULL
);

ALTER TABLE buy
    ADD CONSTRAINT buy_items_fk FOREIGN KEY ( 대분류 )
        REFERENCES items ( 대분류 );

ALTER TABLE sell
    ADD CONSTRAINT sell_buy_fk FOREIGN KEY ( 상품코드 )
        REFERENCES buy ( 상품코드 );

ALTER TABLE sell
    ADD CONSTRAINT sell_member_fk FOREIGN KEY ( id )
        REFERENCES member ( id );

--데이터 입력방식 엑셀에서 데이터 저장후 데이터 입포트 방식
--테이블확인
select * from buy;--금액항목은 회사가 생산업체에서 구입하는 가격
select * from employees;
select * from items;--buy의 가격과 이율을 합하여 판매가 산정
select * from member;
select * from sell;
--직원정보중 사번을 시퀀스를 사용하여 101부터 시작하여 부여
create sequence idnum
    start with 101 increment by 1;
select (IDNUM.nextval)"사번","부서","직급","이름","연차" from employees;
--회원별로 판매원가를 산출
select s.id,s."상품코드",b."대분류",b."상품명",b."금액",s."수량",(b."금액"*s."수량")"판매원가" from sell s
inner join buy b on s."상품코드" = b."상품코드" order by id;
--세액을 더하여 판매가 산출
select s.id,s."상품코드",b."대분류",b."상품명",b."금액",s."수량",(b."금액"*s."수량")"판매원가",(("이율_퍼센트"+100)/100)"이율_계산용",
(b."금액"*s."수량")*(("이율_퍼센트"+100)/100)"판매가" from sell s
inner join buy b on s."상품코드" = b."상품코드"
inner join items i on b."대분류"=i."대분류" order by id;
--위 데이터의 문장이 너무 길어지기에 하나의 뷰로 만들자
create or replace view V_order as
select s.id,s."상품코드",b."대분류",b."상품명",b."금액",s."수량",(b."금액"*s."수량")"판매원가",(("이율_퍼센트"+100)/100)"이율_계산용",
(b."금액"*s."수량")*(("이율_퍼센트"+100)/100)"판매가" from sell s
inner join buy b on s."상품코드" = b."상품코드"
inner join items i on b."대분류"=i."대분류" order by id;
--각회원의 총구매액 산출
select * from v_order;

create or replace view v_grade as
select id,sum(판매원가)"총판매원가",sum(판매가)"총판매가"  from v_order group by id order by id;
--총판매가를 기준으로 회원테이블에 등급을 부여하자
--부여목적 회원들의 다음달 구매시 등급에 따른 할인적용  
--만 미만 일반 3만 이하 실버 5만 이하 골드 10만 이하 플레티넘 그이상 다이아 **page297참고
select id,"총판매원가","총판매가", 
    case when ("총판매가">100000) then '다이아'
         when ("총판매가">50000) then '플레티넘'
         when ("총판매가">30000) then '골드'
         when ("총판매가">10000) then '실버'    
    else '일반'
    end as "고객등급" from v_grade order by "총판매가" desc;
--이번달의 수익
select (sum("총판매가")-sum("총판매원가"))"금월 수익" from v_grade; 
--고객등급과 맴버테이블을 합쳐서 새로운 맴버 테이블작성(기존 맴버테이블은 신규 회원의 가입시 데이터가 추가되기에 그냥둠)
create table Mgrade as
select m.id,m.name,m.address,m.telnum,v."고객등급" from member m
inner join (select id,"총판매원가","총판매가", 
    case when ("총판매가">100000) then '다이아'
         when ("총판매가">50000) then '플레티넘'
         when ("총판매가">30000) then '골드'
         when ("총판매가">10000) then '실버'    
    else '일반'
end as "고객등급" from v_grade) v on m.id=v.id;    
select * from Mgrade;
--마지막으로 연산시 사용되었던 view와 sequence 삭제
drop view v_grade;
drop view v_order;
drop sequence idnum;



