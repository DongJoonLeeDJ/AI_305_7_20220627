drop table usertbl CASCADE CONSTRAINTS;
drop table ordertbl CASCADE CONSTRAINTS;
drop table movietbl CASCADE CONSTRAINTS;
drop table favortbl CASCADE CONSTRAINTS;
drop table credittbl CASCADE CONSTRAINTS;

CREATE SEQUENCE ODNUM;
create sequence MVNUM;
drop SEQUENCE odnum;
drop SEQUENCE mvnum;

INSERT INTO usertbl VALUES('LSG','이승기',1987,'lsg@hmail.net','');
INSERT INTO usertbl VALUES('KBS','김범수',1979,'kbs@hmail.net','');
INSERT INTO usertbl VALUES('KKH','김경호',1971,'kkh@hamil.net','');
INSERT INTO usertbl VALUES('JYP','조용필',1950,'jyp@kmail.net','');
INSERT INTO usertbl VALUES('SSK','성시경','1979','ssk@kmail.net','');
INSERT INTO usertbl VALUES('LJB','임재범','1963','ljb@kmail.net','');

insert into movietbl values(mvnum.nextval,'SF','베놈','톰 하디','루빈 플라이셔','9000원');
insert into movietbl values(mvnum.nextval,'액션','유체이탈자','윤계상','윤재근','7000원');
insert into movietbl values(mvnum.nextval,'코미디','엑시트','조정석','이상근','6000원');
insert into movietbl values(mvnum.nextval,'스릴러','내부자들','이병헌','우민호','8000원');
insert into movietbl values(mvnum.nextval,'SF','스파이더맨','앤드루 가필드','마크 웨브','7000원');
insert into movietbl values(mvnum.nextval,'범죄','성난황소','마동석','김민호','6000원');
insert into movietbl values(mvnum.nextval,'로맨스','클래식','손예진','곽재용','5000원');
insert into movietbl values(mvnum.nextval,'액션','인셉션','레오나르도디카프리오','크리스터퍼 놀란','7000원');
insert into movietbl values(mvnum.nextval,'코미디','쿵푸허슬','주성치','주성치','3000원');
insert into movietbl values(mvnum.nextval,'범죄','범죄도시2','마동석','이상용','12000원');

insert into ordertbl VALUES(odnum.nextval,'LSG','2','7000','22/02/01','카드결제');
insert into ordertbl VALUES(odnum.nextval,'LSG','3','6000','22/02/01','카드결제');
insert into ordertbl VALUES(odnum.nextval,'JYP','5','7000','22/02/05','계좌이체');
insert into ordertbl VALUES(odnum.nextval,'LJB','10','12000','22/02/07','카드결제');
insert into ordertbl VALUES(odnum.nextval,'SSK','7','5000','22/02/01','카드결제');

INSERT INTO credittbl VALUES('LSG','카드결제','삼성카드','1111-1111-1111','','');
INSERT INTO credittbl VALUES('KBS','카드결제','현대카드','2222-2222-1111','','');
INSERT INTO credittbl VALUES('KKH','계좌이체','','','국민','3333-33-333333');
INSERT INTO credittbl VALUES('JYP','계좌이체','','','농협','555-55-5555555');
INSERT INTO credittbl VALUES('SSK','카드결제','신한카드','1231-1231-1111','','');
INSERT INTO credittbl VALUES('LJB','카드결제','하나카드','333-2222-1111','','');

INSERT INTO favortbl VALUES('LSG','액션','이병헌','곽경택');
INSERT INTO favortbl VALUES('KBS','','송강호','봉준호');
INSERT INTO favortbl VALUES('KKH','SF','','');
INSERT INTO favortbl VALUES('JYP','로맨스','레오나르도디카프리오','크리스토퍼 놀란');
INSERT INTO favortbl VALUES('SSK','','로버트다우니주니어','');
INSERT INTO favortbl VALUES('LJB','범죄','마동석','');

SELECT * FROM credittbl;
SELECT * FROM favortbl;
SELECT * FROM movietbl;
SELECT * FROM ordertbl;
SELECT * FROM usertbl;
SELECT movie_title,movie_actor from movietbl; --영화 검색
SELECT User_name FROM usertbl;

select movie_title from movietbl where movie_catecory='액션';--카테고리로 영화 검색
select * from ordertbl where user_id = 'LSG'; --아이디로 결제 내역 검색
select user_id,user_name from usertbl where birthyear <=2002;--성인 검색
select user_id, bank from credittbl where pay_info='계좌이체';--결제수단 계좌 이체 아이디
select user_id, card_co from credittbl where card_co='삼성카드';--결세수단 삼성카드 아이디 

select user_id,birthyear from usertbl order by birthyear;
select user_id,birthyear from usertbl order by user_id desc, birthyear asc;

create table ord as (select user_name,mail from usertbl); 
drop TABLE ord;

select user_id, sum(price) from ordertbl group by user_id;--아이디별 총 결제내역
select count(bank) as "계좌이체 이용자" from credittbl;
select count(card_co) as "신용카드 이용자" from credittbl;

create table movietbl2 as (select * from movietbl);
ALTER TABLE movietbl2 MODIFY(price NUMBER(5));
insert into movietbl2 values(mvnum.nextval,'SF','베놈','톰 하디','루빈 플라이셔','9000');
insert into movietbl2 values(mvnum.nextval,'액션','유체이탈자','윤계상','윤재근','7000');
insert into movietbl2 values(mvnum.nextval,'코미디','엑시트','조정석','이상근','6000');
insert into movietbl2 values(mvnum.nextval,'스릴러','내부자들','이병헌','우민호','8000');
insert into movietbl2 values(mvnum.nextval,'SF','스파이더맨','앤드루 가필드','마크 웨브','7000');
insert into movietbl2 values(mvnum.nextval,'범죄','성난황소','마동석','김민호','6000');
insert into movietbl2 values(mvnum.nextval,'로맨스','클래식','손예진','곽재용','5000');
insert into movietbl2 values(mvnum.nextval,'액션','인셉션','레오나르도디카프리오','크리스터퍼 놀란','7000');
insert into movietbl2 values(mvnum.nextval,'코미디','쿵푸허슬','주성치','주성치','3000');
insert into movietbl2 values(mvnum.nextval,'범죄','범죄도시2','마동석','이상용','12000');
--장르별 영화 합계금액을 계산하기위해 테이블 복사,변경,수정 내용
select movie_catecory, sum(price) from movietbl2 group by movie_catecory; --장르별 영화 합계금액

DROP TABLE movietbl2; --복사 테이블 삭제   

drop TABLE movietbl CASCADE CONSTRAINTS;--부모 자식 관계의 테이블 삭제
SELECT * FROM RECYCLEBIN;--휴지통 검색
FLASHBACK TABLE movietbl TO BEFORE DROP;--복구
SELECT * FROM movietbl;

select * from ordertbl join credittbl
on ordertbl.user_id=credittbl.user_id
where ordertbl.user_id = 'LSG'; -- 주문내역, 결제정보 


select u.user_id, u.user_name, u.mail, o.user_id, o.movie_id, o.price,f.favor_category as"선호장르",f.favor_actor as"선호배우"
from usertbl u
join favortbl f
on u.user_id = f.user_id
join ordertbl o
on o.user_id=f.user_id; --3테이블 조인
        
create or replace view v_userINFO
as
select u.user_id, u.user_name, mail, c.card_co||c.card_num as"카드정보", c.bank||c.account as"계좌정보"
from usertbl u
join credittbl c
on u.user_id=c.user_id;
--뷰 생성
SELECT * FROM v_userinfo;





















