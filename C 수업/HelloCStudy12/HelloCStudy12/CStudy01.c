#include<stdio.h>
//배열을 함수의 매개변수로 넘길 땐 
//배열의 크기도 같이 넘겨줘야 함
//그리고 매개변수는 int numbers[] 라고 해도 되고
//int* numbers 라고 해도 됨
//왜냐면 배열은 포인터이니까!
void printArr(int numbers[], int size)
{
	//printf("%d", numbers); //주소지 출력
	
	for (int i = 0; i < size; i++)
		printf("%d\n", numbers[i]);

	//이렇게 적어도 결과는 똑같음
	//for (int i = 0; i < size; i++)
	//	printf("%d\n", *(numbers+i));
}
//int* numbers 대신 int numbers[] 이거 써도 됨
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
	printf("최솟값 : %d\n", min);
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
	//배열
	//1개의 변수가 여러 개의 값을 관리함
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
	printf("numbers2의 최댓값 : %d\n", max);


	printf("-----\n");
	printArr(numbers2, 5);
	printf("-----\n");
	reverse_arr(numbers2, 5);
	printArr(numbers2, 5);
	return 0;
}