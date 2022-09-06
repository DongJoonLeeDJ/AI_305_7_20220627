--create table exFunc
--(
--   num int primary key,
--   name varchar2(100),
--   belong varchar2(100)
--);
--
--insert into exFunc values(1, '�̵���', '�ӱ�');
--insert into exFunc values(2, '������', '������');
--insert into exFunc values(3, '�ȼ���', '�ӱ�');
--
--select * from exFunc where belong='�ӱ�';

-- �Լ� ���̺� ��ȯ
-- ���ǻ� ��ȸ�ؼ� ��ȯ�ϱ�
 -- 1. Object Type�� ����
CREATE OR REPLACE TYPE find_belong AS OBJECT 
( 
    name varchar2(100)
); 
/
-- 2. ��ȯ ���̺� ����
CREATE OR REPLACE TYPE table_find_belong 
AS TABLE OF find_belong; 
/
-- 3. ���������� ���̺� �Լ� ����
CREATE OR REPLACE FUNCTION fn_get_human (p_belong varchar2) 
    RETURN table_find_belong 
    PIPELINED 
IS 
    v_name find_belong; 
BEGIN 
    FOR rec IN ( 
        SELECT name
          FROM exFunc 
         WHERE belong = p_belong 
    ) LOOP 
        v_name := find_belong( rec.name);         
        PIPE ROW(v_name); 
    END LOOP; 
       
    RETURN; 
END;