#include<stdio.h>
int main()
{
	//���� ü��
	//%d => decimal(10����) => ����
	//���� : �Ҽ����� ���� ����
	//-3 -2 -1 0 1 2 3...
	//%f : float => �Ǽ�
	//%c : ���� (1����)
	//%s : ���ڿ�(= ���� ���� ����)
	printf("%d ", 1 + 1);
	printf("%f ", 1.0 / 3);
	printf("%f ", 1 / 3);
	printf("%d ", 1 / 3);
	printf("%c ", 'A');
	printf("%d ", 'A');
	printf("%s    ", "�̵���");
	printf("%c   ", '��');
	printf("%c%c", "��"[0],"��"[1]);

	printf("�� �̸��� %s�Դϴ�.", "�̵���");
	return 0;
}