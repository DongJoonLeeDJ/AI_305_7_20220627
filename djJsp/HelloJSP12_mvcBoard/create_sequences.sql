delimiter $$
create procedure create_sequence(in the_name text)
modifies sql data 
deterministic 
begin 
delete from sequences where name = the_name; 
insert into sequences values(the_name,0); 
end 
$$
# $$ 일종의 마침표 같은 것
# 프로시저나 함수 만들고 나서 같은 파일에 sql 문 쓰고 싶으면
# $$를 쓴다.
# 근데 그냥... 파일 새로 만듭시다.
select * from mvc_board;