-- 1. attendetbl���� ��� ���� ������ �����Ͷ�
SELECT * FROM attendetbl;
-- 2. gradeomrtbl���� ��� ���� ������ �����Ͷ�
select * from gradeomrtbl;
-- 3.  attendetbl���� class ���� ��������
select class from attendetbl;
-- 4. attendetbl���� class, attendename ���� ��������
select class, attendename from attendetbl;
-- 5. attendetbl���� attendename, class ���� ��������. �� �̸��� ������ ���ϴ´�� �ٲ� �� ����!
select attendename, class from attendetbl;
-- 6. �� �̸� ��Ī ����. ��Ī Ȥ�� �߰��� ���� ���� �ÿ��� ū ����ǥ("")�� �����ֱ�. as�� �ٿ��� �ǰ� ���� ����!
select class �й�, attendename �̸�, attendename "�л� �̸�" from attendetbl;
-- 7. 20912825 �л��� 20912213 �л��� �������� �Ǻ�
select * FROM gradeomrtbl WHERE class=20912825 or class=20912213;
-- 8. attendetbl �й� ������������ ����
select class, attendename from attendetbl order by class;
-- 9. attendetbl �̸� ������������ ����
select class, attendename from attendetbl order by attendename;
-- 10. ���� ���� ���̵� ������ ���� �̹� ������ ���� Ȯ��
select avg(score) as "��� ����" from gradeomrtbl;
-- 11. ä�� ����(gradeomrtbl)�� attendetbl�� ��Ī. �й� ������������ ����. 59�� �߿� 45��и� ���. 14���� ����.
select attendetbl.class, attendename, score
from attendetbl
inner JOIN gradeomrtbl
on attendetbl.class=gradeomrtbl.class
order by class;
-- 12. 59�� ���� ������ ��� ����ϰ� �ʹ�. left outer join=left join
select attendetbl.class, attendename, score
from attendetbl
left outer join gradeomrtbl
on attendetbl.class=gradeomrtbl.class
order by class;
-- 13. �������� �˾ƺ���! * is null
select attendetbl.class, attendename, score
from attendetbl
left outer join gradeomrtbl
on attendetbl.class=gradeomrtbl.class
where score is null
order by class;
-- 14. 2ȸ�� ���� ���̺� �߰�+