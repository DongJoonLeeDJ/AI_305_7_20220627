//4. �¾ ������ �Է��ϰ� ���̸� �����ϴ� �Լ�
#include<stdio.h>
int calcAge()
{
	int year;
	printf("��⵵ �¾?");
	scanf_s("%d", &year);
	return 2023 - year;//�ѱ��� ����
}
int main()
{
	int age = calcAge();
	printf("�� ���̴� %d���Դϴ�.\n", age);
	return 0;
}