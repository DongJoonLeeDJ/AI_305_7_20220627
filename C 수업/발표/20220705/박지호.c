#include<stdio.h>
int main()
{

	//3. ��Ÿ����� ��Ģ ��Ÿ����� ��Ģ ��� ����ϱ� (a^2 + b^2 = c^2 ������ c^2 �� ����ϸ� ��)
	//�Է�1: 3
	//�Է�2 : 4
	//��� : 25

	int a, b;
	printf("a��? b��?\n");
	scanf_s("%d %d", &a, &b);
	printf("��Ÿ����� ��Ģ�� a^2(%d) + b^2(%d) = c^2(%d) �Դϴ�. \n", a * a, b * b, a * a + b * b);


	

	return 0;
}