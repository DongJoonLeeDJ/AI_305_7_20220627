#include<stdio.h>
int main()
{

	if (0)
	{


		//1. ���丮�� ���
		printf("�� ���丮��?");
		int fact;
		scanf_s("%d", &fact);
		printf("%d!=%d", fact, fact);
		//ex: fact�� 5���
		//i�� 4���� 1����
		for (int i = fact - 1; i > 0; i--)
		{
			printf("x%d", i);
		}

		//2. n ���� m������ �� (if�� �༭ m�� ������
		//�����޽��� ����� ���� �ְ�
		//�ƴϸ� �� ������ ���� �ٲ��� ���� �ִ�.
		//������ ���� �ٲ��ִ� �� �غ���...
		//3������ �����޽��� ����ϴ� �� �غ���.
		int n, m;
		printf("\nn�� m �Է��ϼ���.");
		scanf_s("%d %d", &n, &m);
		if (n > m) //n�� �� Ŭ ��� ���� ���� ���� �ٲ�
		{
			int temp = m;
			m = n;
			n = temp;
		}
		int sum = 0;
		for (int i = n; i <= m; i++)
			sum += i;

		printf("%d���� %d������ ���� %d�̴�.\n", n, m, sum);

		//3. n ���� m ������ ��(�� ¦����) -> n�� m���� Ŭ ���
		//���� ó���ϱ�
		printf("n? m? �Է�");
		scanf_s("%d %d", &n, &m);
		if (n > m)
		{
			printf("ù��°�� �ι�°���� Ŀ�� �� �� ����!\n");
		}
		else
		{
			sum = 0;
			for (int i = n; i <= m; i++)
			{
				if (i % 2 != 0)
					continue; //¦���� ��쿡�� sum�� �� ���� ����

				sum += i;
			}
			printf("%d���� %d������ ���� %d�̴�.\n", n, m, sum);
		}

		//4��
		while (1)
		{
			int input;
			printf("�Է�");
			scanf_s("%d", &input);
			if (input <= 0)
				break;
			printf("������ : %d\n", input * input);
		}
		printf("4�� ����� \n");

		//do while�� ����ó�� input�� 0�̾
		//while ������ �������� �� �ص� ������ �� ���� �����Ѵ�.
		//�� ���ѷ����� ���ų� �� ���ų� ó���� ���� ������
		//�޾ƾ� �Ѵٸ� do while�� ����.
		int input = 0;
		do
		{
			printf("���� �Է���");
			scanf_s("%d", &input);
			printf("%d", input * input);
		} while (input > 0);


	}

	int N;
	printf("�Է�");
	scanf_s("%d", &N);
	for (int i = 0; i < 2 * N; i++)//�� �κ�
	{
		int onOffSwitch = i;
		for (int j = 0; j < N; j++) 
		{
			if (onOffSwitch % 2 == 0)
				printf("*");
			else
				printf(" ");
			onOffSwitch++;
		}
		printf("\n"); //�� �� ����ϰ� �� �� ��� ��
	}


	return 0;
}