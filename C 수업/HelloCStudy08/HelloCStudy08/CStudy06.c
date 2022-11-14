#include<stdio.h>
int main()
{
	//2�ܺ��� 9�� ���� 2������ ����
	//2~9 -> 8��
	//1~9 -> 9��
	int gugu1[8][9];
	//gugu1[0][0] ~ gugu1[7][8]
	int row = sizeof(gugu1) / sizeof(gugu1[0]);
	int col = sizeof(gugu1[0]) / sizeof(gugu1[0][0]);//sizeof(int);
	printf("%d�� %d��\n", row, col);//8�� 9��
	//gugu1�� 8ĭ¥�� �迭 ����Ŵ
	//gugu1[0]~gugu1[7]������ 9ĭ¥�� �迭 ����Ŵ

	for (int i = 0; i < row; i++)
	{
		for (int j = 0; j < col; j++)
		{
			gugu1[i][j] = (i + 2) * (j + 1);
		}
	}

	int gugu2[10][9];//10�ܺ��� 19��
	//10~19���̴ϱ� 10��
	// 10 11 12 13 14 15 16 17 18 19
	int gugu2_row = sizeof(gugu2) / sizeof(gugu2[0]);
	//row�� col �� �Ȱ����ϱ� �״�� �ᵵ ��
	for (int i = 0; i < gugu2_row; i++)
	{
		for (int j = 0; j < col; j++)
			gugu2[i][j] = (i + 10) * (j + 1);
	}

	//3
	int sum1 = 0;
	for (int i = 0; i < row; i++)
	{
		for (int j = 0; j < col; j++)
			sum1 += gugu1[i][j]; //sum = gugu1[i][j]+sum;
	}
	//4
	int sum2 = 0;
	for (int i = 0; i < gugu2_row; i++)
	{
		for (int j = 0; j < col; j++)
			sum2 += gugu2[i][j];
	}
	//5
	int sum3 = sum1 + sum2;

	printf("2~9 �� : %d\n", sum1);
	printf("10~19 �� : %d\n", sum2);
	printf("���� : %d\n", sum3);


	//6
	for (int i = 0; i < row; i++)
	{
		for (int j = 0; j < col; j++)
			printf("%3d ", gugu1[i][j]);//%3d -> 3ĭ
		printf("\n");
	}
	//7
	for (int i = 0; i < gugu2_row; i++)
	{
		for (int j = 0; j < col; j++)
			printf("%3d ", gugu2[i][j]);
		printf("\n");
	}

	//���� Ǭ ���
	//if�� �༭ ���⸦ �ߴ�.
	//10�̸��� 2������, 100�̸��� 1������
	//6
	for (int i = 0; i < row; i++)
	{
		for (int j = 0; j < col; j++)
		{
			if (gugu1[i][j] < 10)
				printf("  ");
			else if (gugu1[i][j] < 100)
				printf(" ");

			printf("%d ", gugu1[i][j]);
		}
		printf("\n");
	}
	//7
	for (int i = 0; i < gugu2_row; i++)
	{
		for (int j = 0; j < col; j++)
		{
			if (gugu2[i][j] < 10)//1���ڸ�, 1�ڸ� ����
				printf("  ");
			else if (gugu2[i][j] < 100)//10~99, 2�ڸ� ����
				printf(" ");
			printf("%d ", gugu2[i][j]);
		}
		printf("\n");
	}

	return 0;
}