#include<stdio.h>
#include<stdlib.h>
#include<time.h>

void main()
{
	int i;
	int lottery[7]; //��÷�� ���ڸ� ���椷�� �迭

	srand((unsigned int)time(NULL));

	for (int i = 0; i < 7; i++)
	{
		lottery[i] = rand() % 45 + 1; //1���� 45���� ���ڸ� �̿�
		for (int j= 0; j < i; j++)
		{
			if (lottery[i] == lottery[j])
			{
				i--;
				break;
			}
		}
	}

	for (int k = 0; k < 6; k++)
	{
		for (i = 0; i < 6; i++)
		{
			if (lottery[i] > lottery[i + 1])
			{
				int tmp = lottery[i];
				lottery[i] = lottery[i + 1];
				lottery[i + 1] = tmp;
			}
		}
	}
	for (int k = 0; k < 7; k++)
	{
		printf("%d ", lottery[k]);
	}
	printf("\n");
}