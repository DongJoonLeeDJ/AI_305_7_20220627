#include<stdio.h>
extern int a;//CTest.c���� �� ���� a

extern int b; //�ɰ���	�ڵ�	����	������Ʈ	����	��	��ǥ�� ����(Suppression) ����
//����	LNK2001	Ȯ���� �� ���� �ܺ� ��ȣ b	HelloCStudy11	D : \shareFolder\C ����\HelloCStudy11\HelloCStudy11\CStudy03.obj	1


void printNum(int); //�Լ��� ����
int main()
{
	//b++; //���⼭ ���� ����! static �پ
		//CTest.c�̿ܿ��� �� ��
		//java, c#, c++�� private ���� ��
	a++;
	printf("%d\n", a);
	up_Print();
	printNum(a);
	int v = 1;
	int b = 2;
	int result = v >= b ? v : b;
}
void printNum(int a)// �Լ��� ����
{
	printf("\n%d", a);
}