#include<stdio.h>
//2. 1���� �Լ�ȭ�ؼ� main���� ȣ���ϱ�
//(�Ű����� ��ȯ�� ����)
void season()
{
	int month;
	printf("�� ����?");
	scanf_s("%d", &month);
	if (month == 12 || month == 1 || month == 2)
		printf("�ܿ�\n");
	else if (month >= 3 && month <= 5)
		printf("��\n");
	else if (month >= 6 && month <= 8)
		printf("����\n");
	else if (month >= 9 && month <= 11)
		printf("����\n");
	else
		printf("����\n");
}
int main()
{
	season();
	return 0;
}