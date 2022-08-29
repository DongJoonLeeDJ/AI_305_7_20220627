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
insert into carinfotbl values('쉐보레','소형차','스파크',1000,5);

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

--매물정보

create sequence idSEQ;

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
















