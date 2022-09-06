select func_getperson(1) from dual; --1번 학생의 이름 조회
select mytest_func() from dual;--이동준 이름 반환

--프로시저 안에 반환값 있는 함수를 매개변수로 넣을 수 있다.
exec add_person(50, func_getperson(1), '010-9999-9191');
exec add_person(100, mytest_func(), '010-2299-9191');

select * from simple_test_table;
