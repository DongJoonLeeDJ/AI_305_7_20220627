select * from dual; --dual , 더미 데이터, SQL에서의 함수 기능 테스트 할 때 쓰임
select lengthb('장') from dual; --바이트크기 체크
select lengthb('a') from dual;
select lengthb('1') from dual;
select length('장') from dual; --글자 길이 체크