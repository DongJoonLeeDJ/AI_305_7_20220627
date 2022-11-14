#include<stdio.h>
int main()
{
	//1번
	//5개의 숫자를 입력받고 그 중에서 
	//가장 큰 숫자와 작은 숫자를 찾으세요.

	int numbers[5]; //숫자 5개를 관리함
	//참고로 여기에는 기본값으로
	//쓰레기값이 들어감(무슨 값이 있는지 아직 모름)


	//배열의 길이를 구하는 방법
	int size = sizeof(numbers) / sizeof(int);
	//int size = 50;//이렇게 중복 선언은 안 됨
	size = 5;//위에서 "선언"했다면 그 뒤엔 변수명 적기

	//sizeof -> byte값 구하는 것
	//numbers는 5칸짜리 배열이니까 20
	//왜냐면 int 5개 저장하는 거고
	//int는 1개당 4byte니까...	//size = 20/4 = 5
	for (int i = 0; i < size; i++)
	{
		printf("%d번째 숫자 입력\n", i);
		//int num;
		//scanf_s("%d", &num); //num에 값 대입
		//numbers[i] = num;//i번째 칸에다가 대입함
		scanf_s("%d", &numbers[i]);
	}

	//int max, min = 0;
	//가장 첫번째를 최대 최소로 가정을 한다.
	int max = numbers[0];
	int min = numbers[0];

	for (int i = 1; i < size; i++)
	{
		if (max < numbers[i])
		{
			max = numbers[i];
		}
		if (min > numbers[i])
		{
			min = numbers[i];
		}
	}
	printf("최댓값 :%d, 최솟값 : %d\n", max, min);
	
	return 0;
}