-- fk 칼럼 삭제
alter table stocked_cartbl drop column carinfotbl_model;

-- column 크기 수정
alter table dealertbl
    modify( workplace nchar(8) null);
    
-- 칼럼 삭제
alter table tradetbl drop column model;
alter table tradetbl drop column price;
alter table tradetbl drop column stocked_cartbl_s_number;
alter table tradetbl drop column carinfotbl_model;
alter table tradetbl drop column branchtbl_b_name;
alter table tradetbl drop column customertbl_c_name;
alter table tradetbl drop column dealertbl_d_name;

-- column 크기 수정
alter table tradetbl
    modify(INSUREANCE nchar(3));

-- 딜러,고객 전화번호 칼럼 형식 변경
-- 입력된 테이블 삭제
drop table dealerTBL;
drop table customerTBL;

-- 딜러, 고객 테이블 전화번호 number->nvarchar2(11)
alter table dealerTBL
    modify(d_phone nvarchar2(11));
alter table customerTBL
    modify(c_phone nvarchar2(11));

-- costomertbl, dealertbl PK 수정
ALTER TABLE customertbl
DROP CONSTRAINT customer_PK;

alter table customertbl
add constraint PK_customer_c_phone primary key (c_phone);

ALTER TABLE dealertbl
DROP CONSTRAINT dealer_PK;

-- PK 지정위한 중복 내용 확인 및 중복 수정

SELECT D_phone, COUNT(d_phone) as "중복" FROM dealertbl
GROUP BY D_phone HAVING count(d_phone) > 1;

select * from dealertbl where d_phone = 1055556666;

update dealertbl set D_phone='01096531212' where d_name = '손아타';
update dealertbl set D_phone='01096531215' where d_name = '장음주';

alter table dealertbl
add constraint PK_dealer_d_phone primary key (d_phone);

-- 지점의 b_name과 딜러의 workplace 연결
-- 오류 발생
-- 지점이 다른 오류 수정
update dealertbl set workplace='센텀시티점' where workplace='해운대점';

alter table dealertbl
    add constraint fk_dealertbl_branchtbl
    foreign key(workplace)
    references branchtbl(b_name);


---------빠진 차량 정보
insert into carinfotbl values ('르노','중형차','SM5',2000,5);

-- 판매 차량 정보 (내부확인용) View
create or replace view v_SaleList
as select t.C_name, c.brand, c.model, c.category, st.price, t.trade_date, m.c_phone,t.insureance, t.d_name, b.area, b.b_name from tradetbl t
inner join stocked_cartbl st on t.s_number = st.s_number
inner join carinfotbl c on st.model = c.model
inner join customertbl m on m.c_name = t.c_name
inner join branchtbl b on b.b_name = t.b_name;

select * from v_SaleList;
--drop view v_SaleList;

-- 구매 내역 확인(고객 확인용)
create or replace view v_buyinfomation
as select t.t_number, t.trade_date, t.c_name, m.c_phone, c.brand, st.p_year, st.model, st.km,t.insureance,  st.price, t.d_name, t.b_name, d.d_phone  from tradetbl t
inner join stocked_cartbl st on t.s_number = st.s_number
inner join carinfotbl c on st.model = c.model
inner join customertbl m on m.c_name = t.c_name
inner join branchtbl b on b.b_name = t.b_name
inner join dealertbl d on d.workplace=b.b_name;

select * from v_buyinfomation;

--판매되지 않고 남은 차량 정보 view
create or replace view V_suppliedCAR
as select t1.s_number, c.brand, c.category, t1.model, t1.p_year,t1.km,t1.price 
from(select st.s_number, st.model, st.p_year, st.km, st.price from stocked_cartbl st
left outer join tradetbl t on t.s_number = st.s_number 
where t.t_number is null) t1
inner join carinfotbl c on t1.model = c.model;

select * from v_suppliedcar;

-- 1# : 거래와 고객의 정보
SELECT
    c.c_name   "고객명",
    insureance "보험",
    c_phone    "전화번호",
    trade_date "거래일",
    d_name     "직원명"
FROM customertbl c
    INNER JOIN tradetbl t ON c.c_name = t.c_name;
    
-- 2# : 거래된 차, 거래한 고객, 딜러 정보
SELECT
    c.c_name   "고객명",
    insureance "보험",
    c_phone    "전화번호",
    trade_date "거래일",
    d_name     "직원명",
    model      "외관명",
    price      "가격"
FROM tradetbl t
    INNER JOIN customertbl    c ON c.c_name = t.c_name
    INNER JOIN stocked_cartbl s ON t.s_number = s.s_number;
    
-- 3# : 민트급 차 목록
SELECT
    brand   "회사명",
    s.model "외관명",
    p_year  "출시년도",
    km      "주행거리",
    price   "가격"
FROM carinfotbl c
    RIGHT OUTER JOIN stocked_cartbl s ON c.model = s.model
WHERE trouble IS NULL
ORDER BY price;
    
-- 4# : 민트급 가장 싼 차와 폐차급 가장 비싼 차
SELECT * FROM stocked_cartbl
WHERE price IN ( (
        SELECT MAX(price)
        FROM stocked_cartbl
        WHERE trouble IS NOT NULL ),
        (SELECT MIN(price)
        FROM stocked_cartbl
        WHERE trouble IS NULL ) );

-- 5# 입고된 차 수
SELECT
    model    "외관명",
    COUNT(*) "입고 수"
FROM stocked_cartbl
GROUP BY model
ORDER BY COUNT(*) DESC;
    
-- 6# 랜덤 직원 조회
SELECT * FROM dealertbl SAMPLE ( 20 );
        
-- 7# 거래된 항목들의 평균 값
SELECT
    CAST(AVG(price) AS INT) "평균값"
FROM stocked_cartbl s
    INNER JOIN tradetbl t ON s.s_number = t.s_number;
    
-- 8# 거래된 항목들의 가장 싼 값의 차종과 가장 비싼 값의 차종
SELECT
    price "가격",
    model "외관명"
FROM stocked_cartbl s
    INNER JOIN tradetbl t ON s.s_number = t.s_number
WHERE price IN ( (
        SELECT MIN(price)
        FROM stocked_cartbl s
            INNER JOIN tradetbl t ON t.s_number = s.s_number),
        (SELECT MAX(price)
        FROM stocked_cartbl s
            INNER JOIN tradetbl t ON t.s_number = s.s_number ) )
ORDER BY price ASC;

-- #9 : 직원들을 직급별로 정렬하고 성씨 순으로 정렬한 읽기 전용 뷰 생성
CREATE VIEW v_dealertbl AS
    SELECT * FROM dealertbl
    ORDER BY(
            CASE
                WHEN position = '사원' THEN
                    1
                WHEN position = '대리' THEN
                    2
                WHEN position = '과장' THEN
                    3
                WHEN position = '차장' THEN
                    4
                ELSE
                    5
            END),
        position ASC, d_name ASC
WITH READ ONLY;

-- 10# 뷰 조회
SELECT * FROM v_dealertbl;
    
-- 11# 출력이 2000 이상, 4인승 이상, 민트급x 인 차 목록
SELECT * FROM stocked_cartbl s
    INNER JOIN carinfotbl c ON s.model = c.model
WHERE c.cc >= 2000
    AND c.boarding >= 4
    AND s.trouble IS NOT NULL;
    
-- 12# 같은 모델의 중고차들의 합이 8000 이하 차 내림차순 목록(차량 수, 외관명, 합계)
SELECT
    COUNT(model) "대 수",
    model        "외관명",
    SUM(price)   "합계"
FROM stocked_cartbl
GROUP BY model
HAVING SUM(price) <= 8000
ORDER BY SUM(price) DESC;
        
-- 13# 같은 차 별로 가격순
SELECT
    RANK()
    OVER(PARTITION BY model
         ORDER BY
             price DESC
    )       "가격 순위",
    model   "외관명",
    price   "가격",
    trouble "파손여부"
FROM stocked_cartbl;
    
-- 14# 같은 차들의 중앙값
SELECT DISTINCT
    model                    "외관명",
    PERCENTILE_CONT(0.5) WITHIN GROUP(ORDER BY price)
    OVER(PARTITION BY model) "중앙값"
FROM stocked_cartbl
ORDER BY "중앙값";

-- 15# 외관명으로 정렬 후 중앙값과 비교한 차 가격
SELECT
    model                      "외관명",
    price                      "가격",
    p_year                     "출시년도",
    trouble                    "파손여부",
    price - ( PERCENTILE_CONT(0.5) WITHIN GROUP(ORDER BY price)
              OVER(PARTITION BY model) ) "가격 차"
FROM stocked_cartbl;
    
-- 16# 가격 백분율
SELECT
    model       "외관명",
    price       "가격",
    p_year      "출시년도",
    trouble     "파손여부",
    round(CUME_DIST()
          OVER(ORDER BY price), 3) * 100 "백분율%"
FROM stocked_cartbl;

-- 모델별 평균 가격 view
create or replace view v_avgpricetbl
as select model, cast(avg(price) as number(7,2)) as "모델별 평균가격"
from stocked_cartbl group by model;
select * from v_avgpricetbl;

-- 모델별 평균 주행거리 view
create or replace view v_avgkmtbl
as select model, cast(avg(km) as number(7,2)) as "모델별 평균주행거리"
from stocked_cartbl group by model;
select * from v_avgkmtbl;

-- 서울 지역 딜러 view
create or replace view v_seoultbl
as select b.b_name, d.d_name, d.d_phone from dealertbl d inner join branchtbl b
on d.workplace=b.b_name where b.area='서울';
select * from v_seoultbl;

-- 대구 동구 딜러 view
create or replace view v_daeguetbl
as select b.b_name, d.d_name, d.d_phone, d.position
from dealertbl d inner join branchtbl b
on d.workplace=b.b_name where b.area='대구' and b.detail_area='동구';
select * from v_daeguetbl;

-- 지점이 같은 딜러 view
create or replace view v_samewp as
select d.d_name, d.position, d.d_phone, b.area, b.detail_area, b.b_name
from dealertbl d inner join branchtbl b on d.workplace=b.b_name
where b.b_name in(select workplace from dealertbl group by workplace having count(workplace)>1)
order by b.area, b.b_name, d.position;
select * from v_samewp;

-- 매출액 view
create or replace view v_setotal as
select count(t.c_name) as "판매건수", sum(s.price) as "매출액",
cast(avg(s.price) as number(7,2)) as "건당 매출액"
from tradetbl t inner join stocked_cartbl s on s.s_number=t.s_number;
select * from v_setotal;

-- 구매되지 않은 모델의 차량 정보 view
create or replace view v_stockm as
select s.s_number, s.model, s.p_year, s.km, s.price from stocked_cartbl s left outer join
(select t.t_number, t.c_name, s.s_number, s.model from tradetbl t inner join stocked_cartbl s on t.s_number=s.s_number) p
on s.model=p.model where p.c_name is null order by s.s_number;
select * from v_stockm;

-- 브랜드별 평균 배기량 view
create or replace view v_ccb as
select brand, cast(avg(CC) as number(7,2)) as "브랜드별 평균 배기량" 
from carinfotbl group by brand;
select * from v_ccb;

-- 평균 가격보다 비싼 차량 view
create or replace view v_price as
select * from stocked_cartbl where price>
(select  cast(avg(price) as number(7,2)) as "평균 가격" from stocked_cartbl);
select * from v_price;

-- 김씨 성을 가진 딜러 찾기
select b.area, b.b_name, d.d_name, d.d_phone
from dealertbl d inner join branchtbl b on d.workplace=b.b_name
where d_name like '김%' order by b.area;

-- 고객의 거래지역과 지점 찾기
select t.t_number, c.c_name, c.c_phone, t.insureance, t.trade_date, d.d_name, b.area, b.b_name
from customertbl c inner join tradetbl t on c.c_name=t.c_name
inner join dealertbl d on t.d_name=d.d_name  
inner join branchtbl b on d.workplace=b.b_name
order by t.t_number;

-- 사고이력이 있는 차량 view
create or replace view v_trouble as
select * from stocked_cartbl where trouble is not null;
select * from v_trouble;

-- 팔린 차량의 모델을 view로 확인하고 추가 입고
create or replace view v_sellmodel as
select s.model, count(s.model) as "판매수량" 
from tradetbl t inner join stocked_cartbl s on t.s_number=s.s_number
group by model;
select * from v_sellmodel;
-- 추가 차량 입고
insert into stocked_cartbl values(idSEQ.nextval,'E-클래스',2020,47518,4610,'');
insert into stocked_cartbl values(idSEQ.nextval,'아반떼',2018,84280,1280,'');
insert into stocked_cartbl values(idSEQ.nextval,'스포티지',2019,63286,1220,'반파');
insert into stocked_cartbl values(idSEQ.nextval,'소나타',2021,19045,3160,'');
insert into stocked_cartbl values(idSEQ.nextval,'소나타',2019,57107,2470,'');
select * from stocked_cartbl;
-- SELECT * FROM CARDB.stocked_cartbl;

-- 고객의 교환 요청에 따른 차량 교환 및 매출액 수정
select * from tradetbl t inner join stocked_cartbl s on t.s_number=s.s_number;
-- 침수차량임을 알게 된 박지유씨의 교환요청
update tradetbl set s_number=19 where c_name='박지유';
select * from tradetbl t inner join stocked_cartbl s on t.s_number=s.s_number;
-- select * from CARDB.tradetbl t inner join CARDB.stocked_cartbl s on t.s_number=s.s_number;
-- 매출액 수정
create or replace view v_setotalv2 as
select count(t.c_name) as "판매건수", sum(s.price) as "매출액",
cast(avg(s.price) as number(7,2)) as "건당 매출액"
from tradetbl t inner join stocked_cartbl s on s.s_number=t.s_number;
select * from v_setotalv2;

-- 구매자가 구매한 모델의 남은 차량
create or replace view v_hell as
select s.s_number, s.model, s.p_year, s.km, s.price, s.trouble, t.t_number, t.c_name 
from stocked_cartbl s full join tradetbl t on s.s_number=t.s_number
where t.c_name is not null or s.model in
(select s.model from stocked_cartbl s full join tradetbl t on s.s_number=t.s_number where t.c_name is not null);
select * from v_hell;
select * from v_hell where t_number is null;

-- 구매자가 구매한 모델
create or replace view v_smod as
select distinct(j1.model) from
(select * from stocked_cartbl s full join tradetbl t on s.s_number=t.s_number where t.t_number is null) J1
inner join
(select * from stocked_cartbl s inner join tradetbl t on s.s_number=t.s_number) J2
on J1.model=J2.model;
select * from v_smod;

-- 제약 추가하기(최소 주행거리, 차종 분류제한

ALTER TABLE stocked_cartbl
	ADD CONSTRAINT CK_km
	CHECK   (km >= 100) ;
    
ALTER TABLE carinfotbl
	ADD CONSTRAINT CK_category
	CHECK  (category IN ('경차','소형차','준중형차','중형차','소형SUV','SUV','트럭')) 
	ENABLE NOVALIDATE ;