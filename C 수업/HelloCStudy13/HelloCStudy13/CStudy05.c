//������
//������ �ּ�(=��ġ)�� �����ϴ� Ÿ��
#include<stdio.h>
void changeValue(int* p, int v)
{
	*p = v; //p�� ����Ű�� �ִ� ����
}			//v�� �ٲ۴�.
void no_changeValue(int p, int v)
{
	//�� �ȿ� �ִ� ���� �ٲ�����
	//main�̳� �� �Լ��� ȣ���� �κ���
	//������ �״���̴�.
	//�ֳĸ� p�� �� �Լ� �ȿ����� �����ϱ� 
	//�����̴�.
	p = v; 
}			
int main()
{
	int ex = 10;
	int* exptr = &ex;
	//int*�� intŸ�� ������ ��ġ�� 
	//����

	changeValue(exptr, 100);
	printf("ex=%d\n", ex);
	changeValue(&ex, 500);
	printf("ex=%d\n", ex);


	//�̰� ��� ���̳ĸ�
	//�Լ��� �Ű������� �ַ� ����
	//scanf�� swap �Լ� ��...
	return 0;
}