-- select user_id, user_name, get_gender_type(user_gender_num) from user_info;
-- select get_gender_type('����') from dual;
--'����'
--'����'
--'unknown'

--create view user_info_with_gender as 
--select USER_NUM, USER_ID, USER_PASSWORD, USER_NICKNAME, USER_NAME, USER_BIRTH, USER_EMAIL, USER_PHONENUM, USER_REGDATE, USER_PROFILE_NAME, USER_PROFILE_PATH, USER_GENDER_NUM, USER_PREFER_NUM, USER_COUNT_POST, USER_COUNT_COMMENT, USER_COUNT_LIKE, USER_COUNT_FOLLOWING, USER_COUNT_FOLLOWER, get_gender_type(user_gender_num) gender from user_info;

--select * from user_info_with_gender;

CREATE OR REPLACE TYPE find_users_gender AS OBJECT 
( 
    user_num NUMBER(38,0),
    user_id varchar2(255) ,
    user_password varchar2(255) , 
    user_nickname varchar2(255)  , 
    user_name varchar2(255)  ,
    user_birth varchar2(255)  ,
    user_email varchar2(255)  ,
    user_phonenum varchar(255) ,
    user_regdate varchar2(255)  ,
    user_profile_name varchar2(255),
    user_profile_path varchar2(255) ,
    user_gender_num  NUMBER(38,0),
    user_prefer_num  NUMBER(38,0),
    USER_COUNT_POST NUMBER(38,0),
    USER_COUNT_COMMENT NUMBER(38,0),
    USER_COUNT_LIKE NUMBER(38,0),
    USER_COUNT_FOLLOWING NUMBER(38,0),
    USER_COUNT_FOLLOWER NUMBER(38,0),
    gender varchar2(9)
); 
/
-- 2. ��ȯ ���̺� ����
CREATE OR REPLACE TYPE table_find_users_gender 
AS TABLE OF find_users_gender; 
/
-- 3. ���������� ���̺� �Լ� ����
CREATE OR REPLACE FUNCTION fn_get_user_param_gen (p_gender varchar2) 
    RETURN table_find_users_gender 
    PIPELINED 
IS 
    v_gen find_users_gender; 
BEGIN 
    FOR rec IN ( 
        SELECT USER_NUM, USER_ID, USER_PASSWORD, USER_NICKNAME, USER_NAME, USER_BIRTH, USER_EMAIL, USER_PHONENUM, USER_REGDATE, USER_PROFILE_NAME, USER_PROFILE_PATH, USER_GENDER_NUM, USER_PREFER_NUM, USER_COUNT_POST, USER_COUNT_COMMENT, USER_COUNT_LIKE, USER_COUNT_FOLLOWING, USER_COUNT_FOLLOWER, gender
          FROM user_info_with_gender 
         WHERE gender = p_gender 
    ) LOOP 
        v_gen := find_users_gender(rec.USER_NUM, rec.USER_ID, rec.USER_PASSWORD, rec.USER_NICKNAME, rec.USER_NAME, rec.USER_BIRTH, rec.USER_EMAIL, rec.USER_PHONENUM, rec.USER_REGDATE, rec.USER_PROFILE_NAME, rec.USER_PROFILE_PATH, rec.USER_GENDER_NUM, rec.USER_PREFER_NUM, rec.USER_COUNT_POST, rec.USER_COUNT_COMMENT, rec.USER_COUNT_LIKE, rec.USER_COUNT_FOLLOWING, rec.USER_COUNT_FOLLOWER, rec.gender );         
        PIPE ROW(v_gen); 
    END LOOP; 
       
    RETURN; 
END;












