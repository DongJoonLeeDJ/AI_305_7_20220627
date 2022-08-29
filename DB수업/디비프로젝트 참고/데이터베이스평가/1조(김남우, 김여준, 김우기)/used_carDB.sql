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
        
-- insert 삽입

-- 차량정보
insert into carinfotbl values('기아','중형차','K5',2000,5);
insert into carinfotbl values('기아','준중형차','K3',1600,5);
insert into carinfotbl values('기아','중형차','K8',3470,5);
insert into carinfotbl values('기아','SUV','스포티지',2000,5);
insert into carinfotbl values('기아','SUV','소렌토',2500,7);
insert into carinfotbl values('기아','SUV','카니발',3500,9);
insert into carinfotbl values('기아','SUV','모하비',3000,6);
insert into carinfotbl values('기아','소형차','모닝',1000,5);
insert into carinfotbl values('기아','소형SUV','니로',1580,5);

insert into carinfotbl values('현대','대형차','펠리세이드',3800,7);
insert into carinfotbl values('현대','중형차','그랜저',3300,5);
insert into carinfotbl values('현대','중형차','소나타',2500,5);
insert into carinfotbl values('현대','준중형차','아반떼',1580,5);
insert into carinfotbl values('현대','SUV','산타페',2500,5);
insert into carinfotbl values('현대','트럭','포터',2500,3);
insert into carinfotbl values('현대','SUV','투싼',2000,5);

insert into carinfotbl values('제네시스','중형차','EQ900',3770,5);
insert into carinfotbl values('제네시스','중형차','G80',3770,5);
insert into carinfotbl values('제네시스','중형차','G70',2000,5);
insert into carinfotbl values('제네시스','중형차','G90',3770,5);

insert into carinfotbl values('쌍용','소형SUV','티볼리',2000,5);
insert into carinfotbl values('쌍용','SUV','코란도',1600,5);
insert into carinfotbl values('쌍용','트럭','렉스턴',2200,5);

insert into carinfotbl values('쉐보레','소형차','스파크',1000,5);
insert into carinfotbl values('쉐보레','소형SUV','트렉스',1400,5);
insert into carinfotbl values('쉐보레','트럭','콜로라도',3700,5);
insert into carinfotbl values('쉐보레','소형SUV','트레일블레이져',1340,5);

insert into carinfotbl values('르노','중형차','SM6',2000,5);
insert into carinfotbl values('르노','중형차','SM7',3500,5);
insert into carinfotbl values('르노','소형SUV','QM3',1500,5);
insert into carinfotbl values('르노','SUV','QM5',2000,5);
insert into carinfotbl values('르노','SUV','QM6',2000,5);
insert into carinfotbl values('르노','준중형차','SM3',1500,5);


insert into carinfotbl values('벤츠','중형차','E-클래스',3000,5);
insert into carinfotbl values('벤츠','중형차','C-클래스',2000,5);
insert into carinfotbl values('벤츠','SUV','GLA-클래스',2000,5);

insert into carinfotbl values('BMW','SUV','1시리즈',2000,5);
insert into carinfotbl values('BMW','SUV','2시리즈',2000,5);
insert into carinfotbl values('BMW','중형차','3시리즈',2000,5);
insert into carinfotbl values('BMW','중형차','4시리즈',2000,5);
insert into carinfotbl values('BMW','중형차','5시리즈',2000,5);
insert into carinfotbl values('BMW','중형차','6시리즈',3000,5);
insert into carinfotbl values('BMW','중형차','7시리즈',3000,5);

insert into carinfotbl values('아우디','준중형차','A-3',2000,4);
insert into carinfotbl values('아우디','중형차','A-4',2000,4);
insert into carinfotbl values('아우디','중형차','A-5',2000,4);
insert into carinfotbl values('아우디','중형차','A-6',5100,4);
insert into carinfotbl values('아우디','중형차','A-7',3000,4);
insert into carinfotbl values('아우디','중형차','A-8',4000,5);

insert into carinfotbl values('볼보','SUV','V60',2000,5);
insert into carinfotbl values('볼보','SUV','V90',2000,5);

insert into carinfotbl values('폭스바겐','준중형차','골프',2000,5);
insert into carinfotbl values('폭스바겐','소형SUV','티구안',2000,5);
insert into carinfotbl values('폭스바겐','중형차','파사트',2000,5);

select * from carinfotbl;

--매물정보

-- 시퀀스 생성
create sequence idSEQ;

-- fk 칼럼 삭제
alter table stocked_cartbl drop column carinfotbl_model;

insert into stocked_cartbl values(idSEQ.nextval,'K5',2017,66570,1250,'');
insert into stocked_cartbl values(idSEQ.nextval,'모닝',2020,5420,980,'');
insert into stocked_cartbl values(idSEQ.nextval,'소나타',2016,12500,700,'침수');
insert into stocked_cartbl values(idSEQ.nextval,'V60',2018,39650,1180,'반파');
insert into stocked_cartbl values(idSEQ.nextval,'티볼리',2017,89360,1650,'');
insert into stocked_cartbl values(idSEQ.nextval,'렉스턴',2019,33570,2020,'');
insert into stocked_cartbl values(idSEQ.nextval,'골프',2015,99870,1990,'');
insert into stocked_cartbl values(idSEQ.nextval,'아반떼',2017,156570,300,'반파');
insert into stocked_cartbl values(idSEQ.nextval,'아반떼',2010,76020,720,'');
insert into stocked_cartbl values(idSEQ.nextval,'아반떼',2011,62570,210,'대파');
insert into stocked_cartbl values(idSEQ.nextval,'아반떼',2019,27700,1690,'');
insert into stocked_cartbl values(idSEQ.nextval,'K3',2021,4210,2230,'');
insert into stocked_cartbl values(idSEQ.nextval,'K3',2019,20630,2020,'');
insert into stocked_cartbl values(idSEQ.nextval,'소나타',2017,61690,1520,'');
insert into stocked_cartbl values(idSEQ.nextval,'소나타',2019,1050,2840,'');
insert into stocked_cartbl values(idSEQ.nextval,'소나타',2018,36320,2590,'');
insert into stocked_cartbl values(idSEQ.nextval,'SM5',2010,60020,180,'대파');
insert into stocked_cartbl values(idSEQ.nextval,'SM5',2018,13877,1600,'');
insert into stocked_cartbl values(idSEQ.nextval,'SM5',2016,133695,1230,'');
insert into stocked_cartbl values(idSEQ.nextval,'SM6',2017,84253,1250,'');
insert into stocked_cartbl values(idSEQ.nextval,'A-6',2011,13560,960,'');
insert into stocked_cartbl values(idSEQ.nextval,'E-클래스',2018,27670,4420,'');
insert into stocked_cartbl values(idSEQ.nextval,'E-클래스',2013,73550,1190,'완파');
insert into stocked_cartbl values(idSEQ.nextval,'GLA-클래스',2017,51770,2890,'');
insert into stocked_cartbl values(idSEQ.nextval,'스포티지',2020,4470,2150,'');
insert into stocked_cartbl values(idSEQ.nextval,'스포티지',2012,51710,1170,'');
insert into stocked_cartbl values(idSEQ.nextval,'소렌토',2019,86440,2790,'');
insert into stocked_cartbl values(idSEQ.nextval,'소렌토',2018,104690,1920,'');
insert into stocked_cartbl values(idSEQ.nextval,'카니발',2020,64470,3250,'');

select * from stocked_cartbl;

-- 딜러 정보

insert into dealertbl values('김남우','대리',01088885555,'평리점');
insert into dealertbl values('이중고','사원',01012345678,'불광점');
insert into dealertbl values('박침수','차장',01098765432,'해운대점');
insert into dealertbl values('최반파','부장',01011223344,'원주혁신도시점');
insert into dealertbl values('정충돌','대리',01011112222,'상당점');
insert into dealertbl values('임과속','과장',01033334444,'광양점');
insert into dealertbl values('강음주','대리',01055556666,'영통점');
insert into dealertbl values('김나무','사원',01077778888,'오륜점');
insert into dealertbl values('정평가','차장',01099990000,'신일점');
insert into dealertbl values('장할부','부장',01099887766,'칠곡점');
insert into dealertbl values('한책임','과장',01033557799,'태화강점');
insert into dealertbl values('오정직','사원',01088664422,'수지점');
insert into dealertbl values('손아타','대리',01055556666,'가산디지털점');
insert into dealertbl values('유모닝','차장',01054324566,'서귀포점');
insert into dealertbl values('구랜저','사원',01011579826,'천안점');
insert into dealertbl values('구르즈','과장',01023456666,'경주시청점');
insert into dealertbl values('장음주','대리',01055556666,'만석점');
insert into dealertbl values('소렌토','대리',01021572646,'칠곡점');
insert into dealertbl values('이트럭','사원',01054568121,'둔촌점');
insert into dealertbl values('정세단','차장',01017863667,'거제점');
insert into dealertbl values('윤경차','사원',01028726412,'일산점');
insert into dealertbl values('박현대','과장',01032418763,'강릉점');
insert into dealertbl values('장기아','사원',01044566117,'범물점');
insert into dealertbl values('주쌍용','부장',01051452458,'가덕도점');
insert into dealertbl values('신대형','차장',01033556779,'세종점');
insert into dealertbl values('백중형','사원',01012344557,'목포점');
insert into dealertbl values('권볼보','대리',01051561231,'군산점');
insert into dealertbl values('김벤츠','사원',01015758997,'세곡점');
insert into dealertbl values('배앰배','대리',01024587257,'강릉점');
insert into dealertbl values('김스포','과장',01057157232,'진천음성점');
insert into dealertbl values('이똥차','사원',01034418888,'훈련소점');
insert into dealertbl values('박새차','차장',01042187251,'연남점');
insert into dealertbl values('황르노','부장',01024751699,'안심점');
insert into dealertbl values('홍보레','사원',01032781166,'구미점');
insert into dealertbl values('차환불','대리',01015213478,'산월점');
insert into dealertbl values('정디젤','사원',01024680014,'노은점');
insert into dealertbl values('공딜러','대리',01015712477,'연남점');
insert into dealertbl values('이세대','사원',01022478211,'성산점');
insert into dealertbl values('유사고','과장',01091175213,'분당점');
insert into dealertbl values('제규어','대리',01058777114,'남원점');
insert into dealertbl values('엄대파','과장',01033775122,'의정부점');
insert into dealertbl values('원폐차','차장',01044447414,'세곡점');
insert into dealertbl values('정사트','부장',01033669999,'동대구역점');
insert into dealertbl values('안운행','차장',01088811114,'제주공항점');
insert into dealertbl values('김포드','사원',01071242323,'죽전점');
insert into dealertbl values('이지엠','사원',01062626262,'센텀시티점');
insert into dealertbl values('박이클','대리',01033347183,'김포점');
insert into dealertbl values('정쿠페','과장',01066666115,'불광점');
insert into dealertbl values('곽연식','차장',01077447745,'장안평점');
insert into dealertbl values('양진단','사원',01099881122,'장안평점');

-- column 크기 수정
alter table dealertbl
    modify( workplace nchar(8) null);
    
select * from dealertbl;

-- 지점 목록
insert into branchtbl values('대구','동구','동대구역점');
insert into branchtbl values('대구','동구','안심점');
insert into branchtbl values('대구','동구','방촌점');
insert into branchtbl values('대구','수성구','범물점');
insert into branchtbl values('대구','수성구','만촌점');
insert into branchtbl values('대구','서구','평리점');
insert into branchtbl values('대구','북구','칠곡점');
insert into branchtbl values('대구','달서구','죽전점');
insert into branchtbl values('대구','남구','대명점');

insert into branchtbl values('서울','강남구','세곡점');
insert into branchtbl values('서울','은평구','불광점');
insert into branchtbl values('서울','금천구','가산디지털점');
insert into branchtbl values('서울','강동구','둔촌점');
insert into branchtbl values('서울','성동구','성수점');
insert into branchtbl values('서울','마포구','연남점');
insert into branchtbl values('서울','서대문구','아현점');
insert into branchtbl values('서울','동대문구','장안평점');

insert into branchtbl values('인천','미추홀구','숭의점');
insert into branchtbl values('인천','부평구','갈삼점');
insert into branchtbl values('인천','동구','만석점');
insert into branchtbl values('인천','계양구','계산점');

insert into branchtbl values('부산','해운대구','센텀시티점');
insert into branchtbl values('부산','연제구','연산점');
insert into branchtbl values('부산','강서구','가덕도점');
insert into branchtbl values('부산','사하구','다대포점');
insert into branchtbl values('부산','부산진구','전포점');

insert into branchtbl values('광주','광산구','산월점');
insert into branchtbl values('광주','북구','오륜점');
insert into branchtbl values('광주','남구','월산점');

insert into branchtbl values('대전','대덕구','신일점');
insert into branchtbl values('대전','서구','갈마점');
insert into branchtbl values('대전','유성구','노은점');

insert into branchtbl values('울산','울주군','범서점');
insert into branchtbl values('울산','북구','태화강점');

insert into branchtbl values('경북','경주시','경주시청점');
insert into branchtbl values('경북','구미시','구미점');
insert into branchtbl values('경북','김천시','김천혁신도시점');

insert into branchtbl values('경남','창원시','성산점');
insert into branchtbl values('경남','김해시','장유율하점');
insert into branchtbl values('경남','거제시','거제점');
insert into branchtbl values('경남','통영시','통영점');

insert into branchtbl values('전북','군산시','군산점');
insert into branchtbl values('전북','전주시','완산점');
insert into branchtbl values('전북','익산시','익산점');
insert into branchtbl values('전북','남원시','남원점');

insert into branchtbl values('전남','광양시','광양점');
insert into branchtbl values('전남','목포시','목포점');
insert into branchtbl values('전남','순천시','순천점');
insert into branchtbl values('전남','나주시','나주점');

insert into branchtbl values('충북','청주시','상당점');
insert into branchtbl values('충북','충주시','충주점');
insert into branchtbl values('충북','진천시','진천음성점');
insert into branchtbl values('충북','제천시','제천점');

insert into branchtbl values('충남','천안시','천안점');
insert into branchtbl values('충남','아산시','아산점');
insert into branchtbl values('충남','공주시','공주점');
insert into branchtbl values('충남','논산시','훈련소점');

insert into branchtbl values('경기','수원시','영통점');
insert into branchtbl values('경기','성남시','분당점');
insert into branchtbl values('경기','의정부시','의정부점');
insert into branchtbl values('경기','남양주시','남양주점');
insert into branchtbl values('경기','고양시','일산점');
insert into branchtbl values('경기','김포시','김포점');
insert into branchtbl values('경기','용인시','수지점');
insert into branchtbl values('경기','평택시','서정점');

insert into branchtbl values('강원','춘천시','소양점');
insert into branchtbl values('강원','원주시','원주혁신도시점');
insert into branchtbl values('강원','강릉시','강릉점');

insert into branchtbl values('제주','서귀포시','서귀포점');
insert into branchtbl values('제주','제주시','제주공항점');
insert into branchtbl values('세종','세종시','세종점');

select * from branchtbl;

-- 고객 목록
INSERT INTO customertbl VALUES (
    '김민준',
    '01073211713',
    '28',
    '남'
);

-- customer #2
INSERT INTO customertbl VALUES (
    '이도윤',
    '01022720189',
    '32',
    '남'
);

-- customer #3
INSERT INTO customertbl VALUES (
    '박지유',
    '01097792756',
    '24',
    '여'
);

-- customer #4
INSERT INTO customertbl VALUES (
    '최민석',
    '01053185577',
    '54',
    '남'
);

-- customer #5
INSERT INTO customertbl VALUES (
    '고채아',
    '01023187072',
    '41',
    '여'
);

-- customer #6
INSERT INTO customertbl VALUES (
    '신태양',
    '01026264123',
    '33',
    '남'
);

-- customer #7
INSERT INTO customertbl VALUES (
    '김가영',
    '01074761733',
    '30',
    '여'
);

select * from customertbl;

-- 시퀀스 생성
create sequence tseq;

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

-- 거래 정보
insert into tradetbl
values(tseq.nextval,9,'김민준','가입','2020-05-25','김남우','평리점');
insert into tradetbl
values(tseq.nextval,15,'이도윤','미가입','2022-04-21','최반파','원주혁신도시점');
insert into tradetbl
values(tseq.nextval,3,'박지유','가입','2021-08-31','손아타','가산디지털점');
insert into tradetbl
values(tseq.nextval,22,'최민석','가입','2021-10-11','홍보레','구미점');
insert into tradetbl
values(tseq.nextval,26,'고채아','가입','2022-02-05','김포드','죽전점');
insert into tradetbl
values(tseq.nextval,14,'김가영','미가입','2020-09-13','곽연식','장안평점');
insert into tradetbl
values(tseq.nextval,8,'신태양','가입','2019-12-27','박현대','강릉점');

select * from tradetbl;
