#include<stdio.h>
int main()
{
	//1��
	//���� a,b �׸��� c�� ���� �Է¹޾Ƽ�
	//a���� b������ ���� ���ϵ� c ��� �κ� ����

	int a, b, c;
	printf("a b c �Է�");
	scanf_s("%d %d %d", &a, &b, &c);

	int sum = 0;
	for (int i = a; i <= b; i++)
	{
		if (i % c == 0)
			continue;
		sum += i;
	}
	printf("sum=%d\n", sum);
	

	//���� ����� 3kg �ָӴ϶�
	//5kg �ָӴϷ� ��� ��,
	//�ǵ����̸� �ָӴ� ���ڸ� �ٿ��� ��ƿ���
	//�ʹ�.
	//�ٵ� 4kg���� �� 3kg�ָӴϿ� 5kg �ָӴϷ�
	//��ƿ��� �� �Ұ����ϴ� -1 ���

	//5kg�ָӴϷ� �������� �� ���� üũ
	//�װɷ� �������� �� �ָӴϰ������ ����ϰ� ��
	//ex)15kg -> 3 ���

	//���࿡ �������� ������ 3kg �ָӴ� 1���� 
	//��´�.
	// �� ������ �ٽ� 5kg���� �������� �� üũ��
	//ex)18kg -> 3kg 1��, 5kg 3��

	//7kg�̸�...
	//3kg���� 3�� ������ -2�� ���´�.
	//�׷��� -1 ����ϰ� ������ ��...

	int inputSugar;
	printf("���� �� kg?");
	scanf_s("%d", &inputSugar);
	int pack = 0; //�ָӴ� ��
	while (1)
	{
		if (inputSugar % 5 == 0)
		{
			pack += inputSugar / 5;
			printf("%d����\n", pack);
			break;
		}
		inputSugar -= 3;
		pack++; //3kg �ָӴ� �ϳ� ����
		if (inputSugar < 0)
		{
			printf("-1\n");
			break;
		}

	}

	return 0;
}