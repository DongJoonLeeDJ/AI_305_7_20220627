-- 프로시저
-- 압축된 코드(=코드뭉치)
-- select update insert, delete 여러 개를 
-- 한 줄의 코드로 실행할 수 있다.

-- c 테이블에 값을 추가하는 프로시저 만들기
-- in 함수의 매개변수와 같은 것
create or replace procedure add_student
(
mynum in int,
myname in  varchar2,
mypcode in int,
mytestname in varchar2,
myage in int
)
is begin 
insert into c values(mynum,myname,mypcode,mytestname,myage);
end add_student;
