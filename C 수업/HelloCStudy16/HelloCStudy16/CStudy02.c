#include<stdio.h>
void printArr(int arr[], int size)
{
	printf("\n");
	for (int i = 0; i < size; i++)
		printf("%d\t", arr[i]);
	printf("\n");
}
//2번
double average(int ages[], int size)
{
	int sum = 0;
	for (int i = 0; i < size; i++)
		sum += ages[i];
	//실수를구해야 하므로 둘 중 하나 혹은 둘 다
	//실수로 형변환해줘야 함
	return sum / (double)size;//size;
}
int* myages()
{
	static int ages[3]; //static 안 쓰면 ages가 사라짐
	for (int i = 0; i < 3; i++)
	{
		printf("학생의 나이 입력");
		scanf_s("%d", &ages[i]);
	}
	return ages;
}
int main()
{
	//교실 학생들의 나이를 입력받는 배열을 만든다.
	int ages[3];
	for (int i = 0; i < 3; i++)
	{
		printf("학생의 나이 입력");
		scanf_s("%d", &ages[i]);
	}
	//3. 2번에서 만든 걸 main에서 프린트하기
	printf("평균 나이 : %.2f\n", average(ages,3));

	//4. 리턴값 받아오기
	int* values = myages();
	for (int i = 0; i < 3; i++)
		printf("%d\n", values[i]);

	//5. 그냥 출력하기
	printArr(values, 3);

	return 0;
}