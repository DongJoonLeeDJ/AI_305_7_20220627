#include<stdio.h>
//�迭�� �Լ��� �Ű������� �ѱ� �� 
//�迭�� ũ�⵵ ���� �Ѱ���� ��
//�׸��� �Ű������� int numbers[] ��� �ص� �ǰ�
//int* numbers ��� �ص� ��
//�ֳĸ� �迭�� �������̴ϱ�!
void printArr(int numbers[], int size)
{
	//printf("%d", numbers); //�ּ��� ���
	
	for (int i = 0; i < size; i++)
		printf("%d\n", numbers[i]);

	//�̷��� ��� ����� �Ȱ���
	//for (int i = 0; i < size; i++)
	//	printf("%d\n", *(numbers+i));
}
//int* numbers ��� int numbers[] �̰� �ᵵ ��
int findMax(int* numbers, int size)
{
	int max = numbers[0];
	int min = numbers[0];
	for (int i = 1; i < size; i++)
	{
		if (max < numbers[i])
			max = numbers[i];
		if (min > numbers[i])
			min = numbers[i];
	}
	printf("�ּڰ� : %d\n", min);
	return max;
}
//void reverse_arr(int* numbers, int size)
void reverse_arr(int numbers[], int size)
{
	for (int i = 0; i < size; i++)
		numbers[i] *= -1;
}
int main()
{
	//�迭
	//1���� ������ ���� ���� ���� ������
	int numbers2[5] = { 5,4,10,-2,1 };
	int numbers1[3] = {1,2,3};
	//numbers2[0] = 100;
	//numbers2[1] = 200;
	//numbers2[2] = -300;
	for (int i = 0; i < sizeof(numbers1) / sizeof(int); i++)
		printf("%d\n", numbers1[i]);
	printArr(numbers1, 3);
	int max = findMax(numbers2, 
		sizeof(numbers2) / sizeof(int));
	printf("numbers2�� �ִ� : %d\n", max);


	printf("-----\n");
	printArr(numbers2, 5);
	printf("-----\n");
	reverse_arr(numbers2, 5);
	printArr(numbers2, 5);
	return 0;
}