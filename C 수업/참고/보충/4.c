#include<stdio.h>
int main()
{
	//3���� ������ �� �������� 0,1,2�� ���...
	//����Ǽ��� 3��... 3���� ������ �� �������� Ȥ��
	//0,1,2 �� �ϳ��� �ƴ� ��쿣 default��� ���� �д�.

	int n;
	scanf_s("%d", &n);
	switch (n%3)
	{
	case 0:
		printf("����");
		break;
	case 1:
		printf("����");
		break;
	case 2:
		printf("��");
		break;
	default:
		printf("�𸣰ڴ�.");
		break;
	}
	return 0;
}