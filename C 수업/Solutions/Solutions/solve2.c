/*
2. Sec(��) ���� �Է¹޾Ƽ� 
�ð��� h�� m�ʶ�� �� ����ϵ�, 
3600�̻��� ���� ������
���� �޽����� ����Ѵ�.
�׸��� m ���� ��ȯ�Ѵ�.
*/

int clock(int Sec)
{
	if (Sec >= 3600)
	{
		printf("1�ð� �̻�!\n");
		return -1;
	}
	printf("%d�� %d��\n", Sec / 60, Sec % 60);
	return Sec / 60; //123->2 ��ȯ
}

#include<stdio.h>
int main()
{
	clock(123);
	clock(4000);
	int result = clock(123);
	printf("result = %d\n", result);

	printf("�� �Է��ϼ���.");
	int s;
	scanf_s("%d", &s);
	clock(s);

	return 0;
}