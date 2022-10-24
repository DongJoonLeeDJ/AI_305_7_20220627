#실제 게시글 썼을 때 들어가는 값
insert into mvc_board(bId, bName, bTitle, bContent,
bHit, bGroup, bStep, bIndent) values 
(nextval('mvc_board'), '이름','제목','게시글내용',0,
currval('mvc_board'),0,0);

select * from mvc_board;