create table deletedmemberTBL(
    memberID char(8),
    memberName nchar(5),
    memeberAddress nvarchar2(20),
    deletedate date
);
drop table deletedmemberTBL;
create trigger trg_deletedmemberTBL
    after delete
    on memberTBL
    for each row
begin
    insert into deletedmemberTBL
        VALUES (:old.memberID, :old.memberName,:old.memberAddress,SYSDATE());
end;

drop trigger SHOP.TRG_DELETEDMEMBER;

delete from memberTBL where memberName = '¥Á≈¡¿Ã';

SELECT
    * FROM deletedmembertbl;
