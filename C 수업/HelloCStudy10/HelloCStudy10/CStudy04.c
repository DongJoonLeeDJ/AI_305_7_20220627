#include<stdio.h>
int g = 0; //���� ����(global ������� �θ�)
//���������� �Ű�
void up1(int l) 
{
	l++;
}
//���������� ��ġ(������)�� �Ű�
void up2(int* l)
{
	(*l)++;
}
//���������� �����ϰ� ����
void up3()
{
	g++;
}
int main()
{
	int local = 10;
	up1(local);//local�� ���� �ѱ�
	printf("local=%d\n", local); //10
	up2(&local); //local�� �ּҸ� �ѱ�
	printf("local=%d\n", local);//11
	up3();
	printf("g=%d\n", g); //1
	return 0;
}