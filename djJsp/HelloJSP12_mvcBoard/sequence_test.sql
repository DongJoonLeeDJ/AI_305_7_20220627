select * from sequences;
call create_sequence('test');
select nextval('test'); # 현재 값+1하고 그 값 읽어 옴
select currval('test'); # 현재 값 읽어 옴

