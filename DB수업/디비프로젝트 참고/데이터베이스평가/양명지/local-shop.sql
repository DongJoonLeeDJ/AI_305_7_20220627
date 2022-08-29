-- 테이블 생성(1) - 회원
create table memberTBL(
    memberID CHAR(8) not null,
    memberPW CHAR(20) not null,
    memberName NCHAR(5) not null,
    memberBirthDate CHAR(6) not null,
    memberAddress NVARCHAR2(20),
    memberMobile CHAR(13) not null,
    memberEmail VARCHAR(30)
);

select * from memberTBL;

-- alter table memberTBL
--     add memberEmail VARCHAR(30); -- 열 추가

-- alter table memberTBL
--     drop column memberEmail; -- 열 삭제

alter table memberTBL
    add memberMdate DATE; -- 열 추가

alter table memberTBL
    modify(memberBirthDate DATE); -- 열 데이터 형식 변경
    
select * from memberTBL;

-- 회원탈퇴
/*
create table deletedMemberTBL(
    memberID CHAR(8) not null,
    memberPW CHAR(20) not null,
    memberName NCHAR(5) not null,
    memberBirthDate DATE,
    memberAddress NVARCHAR2(20),
    memberMobile CHAR(13) not null,
    memberEmail VARCHAR(30),
    deletedDate DATE
);

create or replace TRIGGER trg_deletedMemberTBL
    after delete -- 삭제 후 작동하게 지정
    on memberTBL -- 트리거를 부착할 테이블
    for each row -- 각 행마다 적용
begin
    -- :old 테이블의 내용을 백업 테이블에 삽입
    insert into deletedMemberTBL
    values(:old.memberID, :old.memberName, :old.memberBirthDate, :old.memberAddress, :old.memberMobile, :old.memberEmail, SYSDATE());
end;

SQL 워크시트 새로 생성해서 작성 후 F5 눌러서 실행
*/

-- 테이블 생성(2) - 상품
create table productTBL(
    productName NCHAR(4) not null,
    cost NUMBER(7) not null,
    groupName NCHAR(4),
    makeDate DATE,
    company NCHAR(5) not null,
    amount NUMBER(3) not null
);

select * from productTBL;

-- 테이블 생성(3) - 구매 내역
create table buyTBL(
    idNum NUMBER(8),
    memberID CHAR(8) not null,
    productName NCHAR(4) not null,
    amount NUMBER(3),
    orderDate DATE not null
);

alter table buyTBL rename to orderTBL; -- 테이블 이름 변경

alter table orderTBL
    rename column idNum to orderNum; -- 열 이름 변경

select * from orderTBL;

-- 테이블 생성(4) - 판매자
create table sellerTBL(
    company NCHAR(5) not null,
    companyAddress NVARCHAR2(20),
    contackNumber CHAR(13) not null,
    homepage VARCHAR(30)
);

select * from sellerTBL;

-- 테이블 생성(5) - 직원
create table employeeTBL(
    employeeNumber CHAR(10) not null, 
    employeeName NCHAR(5) not null,
    employeeIDcard CHAR(14) not null,
    employeePosition NCHAR(5) not null,
    employeeSalary CHAR(5) not null,
    startDate DATE not null
);

-- 퇴사
/*
create table deletedEmployeeTBL(
    employeeNumber CHAR(10) not null, 
    employeeName NCHAR(5) not null,
    employeeIDcard CHAR(14) not null,
    startDate DATE not null,
    resignationDate DATE not null
);

create or replace TRIGGER trg_deletedEmployeeTBL
    after delete
    on employeeTBL
    for each row
begin
    insert into deletedEmployeeTBL
    values(:old.employeeNumber, :old.employeeName, :old.employeeIDcard, :old.startDate, SYSDATE());
end;
*/

-- 데이터 삽입

-- memberTBL
insert into memberTBL
values('LSG123','dltmdrl123','이승기','1987-01-13','경기 부천시 중동','010-1111-1111','LSG123@naver.com','2011-01-01');

insert into memberTBL
values('KBS123','rlaqjatn123','김범수','1966-03-08','서울 은평구 증산동','010-2222-2222','KBS123@gmail.com','2013-02-15');

insert into memberTBL
values('KKH123','rlarudgh123','김경호','1971-06-07','인천 남구 주안동','010-3333-4444','KKH123@hanmail.net','2017-10-21');

insert into memberTBL
values('JYP','whdydvlf123','조용필','1950-03-21','경기 성남시 분당구','010-4444-4444','JYP123@hanmail.net','2021-3-10');

select * from memberTBL;

update memberTBL
set memberMobile='010-3333-3333'
where memberID='KKH123'; -- 데이터 변경

-- 김경호 (KKH123) 변경 데이터 확인
select * from memberTBL where memberID='KKH123';

-- productTBL
insert into productTBL
values('티셔츠','10000','의류','2021-03-21','뉴발란스','13');

insert into productTBL
values('청바지','20000','의류','2021-07-03','폴햄','8');

insert into productTBL
values('운동화','30000','잡화','2020-12-18','나이키','7');

insert into productTBL
values('악세사리','40000','잡화','2017-03-01','로이드','21');

insert into productTBL
values('모니터','100000','전자','2022-01-01','삼성','3');

insert into productTBL
values('노트북','200000','전자','2019-5-13','LG','11');

insert into productTBL
values('메모리','50000','전자','2020-6-11','대우','33');

insert into productTBL
values('책','10000','서적','2022-03-01','북비','2');

select * from productTBL;

-- orderTBL
create SEQUENCE idSEQ
    start with 1
    increment by 1;

insert into orderTBL
values(idSEQ.NEXTVAL,'LSG123','노트북','2','2013-01-21');

insert into orderTBL
values(idSEQ.NEXTVAL,'LSG123','메모리','2','2013-01-21');

insert into orderTBL
values(idSEQ.NEXTVAL,'LSG123','악세사리','1','2013-01-22');

insert into orderTBL
values(idSEQ.NEXTVAL,'KBS123','티셔츠','13','2015-07-03');

insert into orderTBL
values(idSEQ.NEXTVAL,'KBS123','운동화','1','2019-01-18');

insert into orderTBL
values(idSEQ.NEXTVAL,'KKH123','모니터','1','2020-02-28');

insert into orderTBL
values(idSEQ.NEXTVAL,'KKH123','책','1','2022-05-25');

select * from orderTBL;

-- sellerTBL
insert into sellerTBL
values('뉴발란스','서울 금천구','1566-0086','new@balance.com');

insert into sellerTBL
values('폴햄','경기 양주시 평화로','1600-3424','pol@ham.com');

insert into sellerTBL
values('나이키','서울 강남구 테헤란로 152','080-022-0182','nike@nike.com');

insert into sellerTBL
values('로이드','서울 서초구 잠원동','1899-9500','lloyd@lloyd.com');

insert into sellerTBL
values('삼성','경기도 수원시 영통구','02-2255-0114','sam@sung.com');

insert into sellerTBL
values('LG','서울 강서구 마곡중앙10로','02-3777-1114','lg@lg.com');

insert into sellerTBL
values('대우','서울 종로구 명륜2가','02-123-3456','dae@woo.com');

insert into sellerTBL
values('북비','경기도 과천시 부림동','070-123-4567','book@book.com');

select * from sellerTBL;

-- employeeTBL
insert into employeeTBL
values('9912310001','나희도','691234-2111111','사장','2000','1999-12-31');

insert into employeeTBL
values('9912310002','백이진','641234-1222222','상무','1000','1999-12-31');

insert into employeeTBL
values('0103210001','문지웅','731234-1333333','부장','800','2001-03-21');

insert into employeeTBL
values('0705170001','안예린','751234-2122345','과장','500','2007-05-17');

insert into employeeTBL
values('1007120001','백이현','821234-1234567','대리','300','2010-07-12');

insert into employeeTBL
values('2105280001','서은하','891234-2216498','사원','200','2021-05-28');

insert into employeeTBL
values('2105280002','김유진','941234-2945612','사원','200','2021-05-28');

insert into employeeTBL
values('2106120001','김민정','991234-2123212','사원','200','2021-06-12');

insert into employeeTBL
values('2106120002','김성규','981234-1897561','사원','200','2021-06-12');

insert into employeeTBL
values('2106120003','고유림','001111-2234567','사원','200','2021-06-12');

insert into employeeTBL
values('2106120004','이성종','001212-1234567','사원','200','2021-06-12');

select * from employeeTBL;

-- primary key
alter table memberTBL
    add CONSTRAINT pk_memberTBL_memberID
    PRIMARY KEY (memberID);
    
alter table productTBL
    add CONSTRAINT pk_productTBL_productName
    PRIMARY KEY (productName); --

alter table orderTBL
    add CONSTRAINT pk_orderTBL_orderNum
    PRIMARY KEY (orderNum);
    
alter table sellerTBL
    add CONSTRAINT pk_sellerTBL_company
    PRIMARY KEY (company); --

alter table employeeTBL
    add CONSTRAINT pk_employeeTBL_employeeNumber
    PRIMARY KEY (employeeNumber);

-- foreign key
alter table orderTBL
    add CONSTRAINT fk_orderTBL_memberTBL
    FOREIGN KEY (memberID)
    REFERENCES memberTBL(memberID);

alter table orderTBL
    drop CONSTRAINT fk_orderTBL_memberTBL;

alter table orderTBL
    add CONSTRAINT fk_orderTBL_memberTBL
    FOREIGN KEY (memberID)
    REFERENCES memberTBL(memberID)
    on delete cascade; -- 백엔드 자바 주문 테이블 삭제, 회원 테이블

alter table orderTBL
    add CONSTRAINT fk_orderTBL_productTBL
    FOREIGN KEY (productName)
    REFERENCES productTBL(productName);
    
alter table productTBL
    add CONSTRAINT fk_productTBL_sellerTBL
    FOREIGN KEY (company)
    REFERENCES sellerTBL(company);
    
-- between
-- 재고 수량이 5미만인 상품
select productName as "상품명", amount as "재고 수량" 
from productTBL
where amount between 1 and 5;

select * from productTBL;

-- in
-- 의류, 잡화 상품 정보
select * from productTBL where groupName in('의류','잡화');

-- like
-- 김씨 성을 가진 사람의 정보
select * from memberTBL where memberName like '김%';

-- or
-- 서울과 경기에 사는 회원의 정보
select memberName, memberAddress
from memberTBL
where memberAddress like '서울%'
or memberAddress like '경기%';

-- and
-- 전자제품이면서 10만원 이하인 제품
select productName as "제품명", cost as "가격", groupName as "그룹명" 
from productTBL
where groupName='전자'
and cost<=100000;

-- 회원 정보 키 추가
alter table memberTBL
    add height NUMBER(3);

update memberTBL
set height='170'
where memberID='LSG123';

update memberTBL
set height='180'
where memberID='KBS123';

update memberTBL
set height='160'
where memberID='KKH123';

update memberTBL
set height='173'
where memberID='JYP';

-- 경기 사람의 키보다 키가 크거나 같은 사람   
-- any (OR)
select memberName as "사용자명", height as "키"
from memberTBL
where height >= ANY(select height from memberTBL where memberAddress like '경기%');

-- all (AND)
select memberName as "사용자명", height as "키"
from memberTBL
where height >= ALL(select height from memberTBL where memberAddress like '경기%');

-- join
-- group by

-- 사용자별 총 사용금액
select o.memberID as "사용자 아이디",SUM(p.cost*o.amount) as "총 사용금액"
from orderTBL o
inner join productTBL p on o.productName=p.productName
group by memberID;

select * from orderTBL;
select * from productTBL;

-- 이승기 (LSG123) 총 사용금액
select o.memberID as "사용자 아이디",SUM(p.cost*o.amount) as "총 사용금액"
from orderTBL o
inner join productTBL p on o.productName=p.productName
where memberID='LSG123'
group by memberID;

-- 회사별 판매 금액
select s.company as "회사명", SUM(p.cost*o.amount) as "총 판매금액"
from sellerTBL s
inner join productTBL p on s.company=p.company
inner join orderTBL o on p.productName=o.productName
group by s.company;

select * from sellerTBL;
select * from productTBL;
select * from orderTBL;

-- 총 구매액이 15만원 이상인 사용자
select m.memberID as "사용자 아이디", SUM(p.cost*o.amount) as "총 사용금액"
from memberTBL m
inner join orderTBL o on m.memberID=o.memberID
inner join productTBL p on o.productName=p.productName
group by m.memberID
having SUM(p.cost*o.amount)>150000;

-- roll up
-- 그룹별 판매금액
select p.groupName as "그룹명", SUM(p.cost*o.amount) as "판매 금액"
from productTBL p
inner join orderTBL o on p.productName=o.productName
group by rollup (p.groupName);

-- 3번째 주문 택배 발송 주문자 이름, 전화번호, 주소, 상품이름, 수량과 가격
select m.memberName, m.memberMobile, m.memberAddress, o.productName, o.amount, p.cost
from memberTBL m
inner join orderTBL o on m.memberID=o.memberID
inner join productTBL p on o.productName=p.productName
where o.orderNum=3;

select * from memberTBL;
select * from orderTBL;

-- 주문 내역 조회
select m.memberID as "사용자 아이디", o.productName as "상품명", o.amount as "구매수량", o.orderDate as "주문날짜"
from memberTBL m
inner join orderTBL o
on m.memberID=o.memberID;

-- view
create or replace view v_orderList
    as
    select m.memberID as "사용자 아이디", o.productName as "상품명", o.amount as "구매수량", o.orderDate as "주문날짜"
    from memberTBL m
    inner join orderTBL o
    on m.memberID=o.memberID; -- 뷰 생성

select * from v_orderList; -- 뷰 조회

-- outer join
-- order by
-- 전체 회원의 구매 기록
select m.memberID, m.memberName, o.productName, m.memberMobile
from memberTBL m
LEFT OUTER JOIN orderTBL o
on m.memberID=o.memberID
order by m.memberID;

-- trigger
-- 회원 탈퇴
insert into memberTBL
values('LJB','dlawoqja','임재범','1963-01-01','서울 은평구 증산동','010-0001-0002','','18-05-13'); -- 데이터 삽입

delete from memberTBL where memberID='LJB'; -- 데이터 삭제

select * from deletedMemberTBL; -- 백업 테이블 조회

-- 직원 퇴사
delete from employeeTBL where employeeNumber='2106120001'; -- 데이터 삭제

select * from deletedEmployeeTBL; -- 백업 테이블 조회
