select * from p;
select * from c;

-- ��ø ����
-- ������ �ȿ� �� �ٸ� �������� ���� ��

--ex) ���̰� �ְ� ���� ����� �̸��� ���ϰ� �ʹ�.
--1. age �߿��� ���� ū ���� ���Ѵ�.
select max(age) from c;
--select max(age), name from c;
--select name from c;
--select * from c where age=36;

select * from c where age=(select max(age) from c);



-- ���� ���̺�
select max(age) maxAge from c;
-- �� ����
create view find_max_age_view as select max(age) maxAge from c;

select * from find_max_age_view;

select * from c where age=(select * from find_max_age_view);


select * from p;
select * from c;
-- ����
select c.name, p.name from c join p on c.pcode=p.code;

create view student as select num, c.name �̸�, p.name �а�, testname �����̸�, age ���� from c join p on c.pcode=p.code;

--c ���̺� �ִ� ������� �� �� �˱� ���� ������ ���� ���̺�
select * from student;







