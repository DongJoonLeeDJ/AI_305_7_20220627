exec add_student(6,'박보규',2,'parkbk',25);
select * from c;

--dual 임시테이블
--함수성능테스트할 때 쓰임

select getGwaName(1) from dual;

select name, getgwaname(pcode) from c;