select * from food;

show autocommit;


-- commit : 저장
--데이터 추가 수정 삭제하기 전에 commit하고
-- 만약에 추가 수정 삭제를 잘못했다면 rollback
-- 주의사항
--1. rollback(=되돌리기)은 내가 최근에 commit한 지점으로만 돌아감
--2. autocommit 기능이 켜져있다면 rollback이 안 먹힘
--왜냐면 insert update delete를 함과 동시에 commit이 된다.

commit;
update food set name='딸기카레'; --모든 음식명을 딸기카레로 바꿈
select * from food;
rollback; --마지막으로 commit한 지점으로 돌림



