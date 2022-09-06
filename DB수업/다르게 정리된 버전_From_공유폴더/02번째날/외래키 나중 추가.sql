alter table student add (code char(3));


-- 외래키 추후 추가하는 거
alter table student add constraint fk_stu 
foreign key(code) references major(code);


