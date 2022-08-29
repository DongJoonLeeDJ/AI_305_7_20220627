create trigger trg_deletedMemberTBL
    after delete
    on membertbl
    for each row
BEGIN
    insert into deletedMemberTBL
        values (:old.memberID, :old.memberName,:old.memberAddress, SYSDATE());
end;

SELECT
    * FROM deletememberTBL;