#include<stdio.h>
#include<stdlib.h>//동적할당할 경우-1
//함수는 그대로 쓰면 됨
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
		printf("숫자 입력해");
		scanf_s("%d", &numbers[i]);
	}
	int min_idx = findMinIndex(numbers, 5);
	printf("가장 작은 값의 인덱스 : %d\n", min_idx);
	printf("가장 작은 값의 인덱스 : %d\n", findMinIndex2(numbers,5));


	//동적할당할 경우 -2
	int size;
	printf("배열 사이즈?");
	scanf_s("%d", &size);
	int* mynumbers = (int*)malloc(size * sizeof(int));//동적할당할 경우-3
	for (int i = 0; i < size; i++)
	{
		printf("숫자 입력해");
		scanf_s("%d", &mynumbers[i]);
	}
	printf("가장 작은 값의 인덱스 : %d\n", 
		findMinIndex(mynumbers, size));


	return 0;
}