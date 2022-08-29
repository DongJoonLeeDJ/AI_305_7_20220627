-- 회원 탈퇴
create table deletedMemberTBL(
    memberID CHAR(8) not null,
    memberPW CHAR(20) not null,
    memberName NCHAR(5) not null,
    memberBirthDate DATE,
    memberAddress NVARCHAR2(20),
    memberMobile CHAR(13) not null,
    memberEmail VARCHAR(30),
    deletedDate DATE
);

-- trigger 생성
create or replace TRIGGER trg_deletedMemberTBL
    after delete -- 삭제 후 작동하게 지정
    on memberTBL -- 트리거를 부착할 테이블
    for each row -- 각 행마다 적용
begin
    -- :old 테이블의 내용을 백업 테이블에 삽입
    insert into deletedMemberTBL
    values(:old.memberID, :old.memberPW, :old.memberName, :old.memberBirthDate, :old.memberAddress, :old.memberMobile, :old.memberEmail, SYSDATE());
end;