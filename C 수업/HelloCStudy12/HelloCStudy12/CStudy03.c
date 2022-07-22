#include<stdio.h>
#define MAX 1024 //매크로 상수
//스택보다 더 먼저 처리되기 때문에 
//이걸 이용해서 배열의 크기 잡는 건 된다!!!
int main()
{
	//배열 안에 숫자를 넣고
	//거기서 가장 큰 값
	//그리고 그 큰 값의 인덱스
	//출력
	//가장 큰 값 혹은 작은 값 찾는 건 많이 했다.
	int numbers[5];
	int mynumbers[MAX];

	//malloc, calloc을 쓴 이유
	//int num = 5;
	//int numbers2[num]; //변수로 배열 크기 지정x

	int size = sizeof(numbers) / sizeof(int);

	for (int i = 0; i < size; i++)
	{
		printf("%d번째 숫자 입력", i);
		scanf_s("%d", &numbers[i]);
	}
	//가장 첫번째 숫자를 가장 크다고 가정함
	int max = numbers[0];
	int max_index = 0;
	for (int i = 1; i < size; i++)
	{
		if (max < numbers[i])
		{
			max = numbers[i];
			max_index = i; //정답
		}
	}
	printf("최댓값은 [%d]에 있습니다.\n", max_index);


	return 0;
}