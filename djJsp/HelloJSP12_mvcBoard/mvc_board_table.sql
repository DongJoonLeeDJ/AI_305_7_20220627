-- bId : 게시글의 고유 번호(기본키)
create table mvc_board (
bId int not null auto_increment,
bName varchar(45) default null,
bTitle varchar(100) default null,
bContent varchar(300) default null,
bDate timestamp null default current_timestamp, /*기본 값 : 현재 시간*/
bHit int default 0, 
bGroup int default null,
bStep int default null,
bIndent int default null,
primary key(bId)
); 