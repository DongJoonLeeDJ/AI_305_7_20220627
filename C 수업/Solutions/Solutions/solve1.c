/*
1. ���� a�� b�� c�� ���� �Է¹ް�, 
a���� b������ ���� ���ϵ�, c�� ��� �κ���
�����ϰ� ���� ���� ��.
�� ���� main�� ��ȯ�ϴ� �Լ� �ۼ��ϱ�
(���ϰڴٸ� �׳� main�� ���� ¥����)
*/
int sum_a_to_b(int a, int b, int c)
{

	int sum = 0;
	for (int i = a; i <= b; i++)
	{
		if (i % c != 0) //c�� ��� ����  
			sum += i;
		//sum = sum + i;
	}
	return sum;
}
#include<stdio.h>
int main()
{

	int a, b, c;
	printf("a,b,c ���� �Է��ϼ���.");
	scanf_s("%d %d %d", &a, &b, &c);

	printf("%d���� %d������ ��(%d ��� ����)\n",
		a,b,c);
	int result = sum_a_to_b(a, b, c);
	printf("��� : %d\n", result);




	return 0;
}