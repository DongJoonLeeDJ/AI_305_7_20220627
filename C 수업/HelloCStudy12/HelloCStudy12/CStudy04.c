#include<stdio.h>
#include<stdlib.h>//�����Ҵ��� ���-1
//�Լ��� �״�� ���� ��
int findMinIndex(int numbers[], int size)
{
	int min = numbers[0];
	int min_idx = 0;
	for (int i = 1; i < size; i++)
	{
		if (min > numbers[i])
		{
			min = numbers[i];
			min_idx = i;
		}
	}
	return min_idx;
}
int findMinIndex2(int* numbers, int size)
{
	int min = *numbers;
	int min_idx = 0;
	for (int i = 1; i < size; i++)
	{
		if (min > *(numbers+i))
		{
			min = *(numbers+i);
			min_idx = i;
		}
	}
	return min_idx;
}
int main()
{
	int numbers[5];
	for (int i = 0; i < 5; i++)
	{
		printf("���� �Է���");
		scanf_s("%d", &numbers[i]);
	}
	int min_idx = findMinIndex(numbers, 5);
	printf("���� ���� ���� �ε��� : %d\n", min_idx);
	printf("���� ���� ���� �ε��� : %d\n", findMinIndex2(numbers,5));


	//�����Ҵ��� ��� -2
	int size;
	printf("�迭 ������?");
	scanf_s("%d", &size);
	int* mynumbers = (int*)malloc(size * sizeof(int));//�����Ҵ��� ���-3
	for (int i = 0; i < size; i++)
	{
		printf("���� �Է���");
		scanf_s("%d", &mynumbers[i]);
	}
	printf("���� ���� ���� �ε��� : %d\n", 
		findMinIndex(mynumbers, size));


	return 0;
}