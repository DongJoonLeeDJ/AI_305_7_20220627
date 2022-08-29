-- 유저 생성
create user shop2 identified by 1234
    default tablespace users
    temporary tablespace TEMP;

-- 권한 부여
grant connect,resource,dba to shop2;