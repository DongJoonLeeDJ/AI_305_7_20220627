#include<stdio.h>
void noSwap(int a, int b)//main �� ��ȭ �� ��Ŵ
{						//�Ű������� "��"�� �����ؿ��Ƿ�
	int temp = a;       //�����̶� ���� ���� ����
	a = b;
	b = temp;
}
void Swap(int* a, int* b)//main �� ��ȭ ��ų �� �ִ�
{					  //�Ű������� "��ġ"�� �������Ƿ�
	int temp = *a;    //*�� �̿��� �ش� ��ġ�� ������ �� �ٲ�
	*a = *b;
	*b = temp;
}
int main()
{
	int a = 3;
	int b = 5;

	noSwap(a, b);
	printf("a=%d, b=%d\n", a, b);//a=3, b=5
	Swap(&a, &b);
	printf("a=%d, b=%d\n", a, b);//a=5, b=3(�� �ٲ�)
	int* pa = &a;
	int* pb = &b;
	Swap(pa, pb); //�Ű������� �ּҰ��� ���� ��
	printf("a=%d, b=%d\n", a, b);//a=3, b=5(���� �ٽ� ������� ��


	return 0;
}