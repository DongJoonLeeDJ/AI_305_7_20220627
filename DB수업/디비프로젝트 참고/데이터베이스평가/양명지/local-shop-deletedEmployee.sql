-- 직원 퇴사
create table deletedEmployeeTBL(
    employeeNumber CHAR(10) not null, 
    employeeName NCHAR(5) not null,
    employeeIDcard CHAR(14) not null,
    startDate DATE not null,
    resignationDate DATE not null
);

-- trigger 생성
create or replace TRIGGER trg_deletedEmployeeTBL
    after delete
    on employeeTBL
    for each row
begin
    insert into deletedEmployeeTBL
    values(:old.employeeNumber, :old.employeeName, :old.employeeIDcard, :old.startDate, SYSDATE());
end;