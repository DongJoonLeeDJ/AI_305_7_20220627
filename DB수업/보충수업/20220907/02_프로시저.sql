-- ���ν���
-- ����� �ڵ�(=�ڵ并ġ)
-- select update insert, delete ���� ���� 
-- �� ���� �ڵ�� ������ �� �ִ�.

-- c ���̺� ���� �߰��ϴ� ���ν��� �����
-- in �Լ��� �Ű������� ���� ��
create or replace procedure add_student
(
mynum in int,
myname in  varchar2,
mypcode in int,
mytestname in varchar2,
myage in int
)
is begin 
insert into c values(mynum,myname,mypcode,mytestname,myage);
end add_student;
