#include<stdio.h>
int main()
{
	//���
	int number;
	//�Է�
	printf("���� �Է��ϼ���.");
	scanf_s("%d", &number); 
	//number ������ �ּ�(��ġ)�� ����
	//�׸��� �� �ȿ� �� ���� �������
	printf("number=%d\n", number);
	//���ǹ�
	if (number > 0)
	{
		printf("number�� �������.\n");
	}
	else if (number == 0) //else if�� else ����
	{					//if�� �ִ� ��쵵 �ִ�.
		printf("number�� 0.\n");

	}
	else //����... 0�� �ƴϰ� 0�� ������ ����
	{
		printf("number�� ��������\n");
	}

	return 0;
}