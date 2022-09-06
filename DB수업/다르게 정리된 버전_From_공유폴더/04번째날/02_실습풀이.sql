--1. 음식 이름이 민트가 들어간 것 삭제
delete from food where name like '%민트%';
--2. 음식 이름에 하와이안이 들어간 것 삭제
delete from food where name like '%하와이안%';
--3. 가격이 10000원 넘는 것 삭제
delete from food where price > 10000;
--4. 음식가격이 5000원 이하인 것의
--레시피를 'msg추가' 이라고 변경
update food set recipe = 'msg추가' where price<=5000;
--5. 가격이 저렴한 순서로 정렬해서 보여주기
select * from food order by price; 
--굳이 명시적으로 적고 싶다면 끝에 asc를 붙이면 됨
select * from food order by price asc;



