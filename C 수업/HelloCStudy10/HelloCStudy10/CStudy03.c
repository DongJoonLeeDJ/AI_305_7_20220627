#include<stdio.h>
#include"mytest.h"
#include"yourtest.h"
void test(); //����(��ȯ�� �Ű����� ����)
int number = 10; //��������
int main()
{
	test();
	mytest(); //mytest.h���� �о�� �Լ�
	yourTypeTest(10);
}
void test() //����
{
	printf("�Լ� �׽�Ʈ.");
}




