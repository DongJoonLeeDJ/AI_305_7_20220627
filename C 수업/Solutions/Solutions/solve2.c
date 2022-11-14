/*
2. Sec(초) 값을 입력받아서 
시간이 h분 m초라는 걸 출력하되, 
3600이상의 값을 받으면
오류 메시지를 출력한다.
그리고 m 값은 반환한다.
*/

int clock(int Sec)
{
	if (Sec >= 3600)
	{
		printf("1시간 이상!\n");
		return -1;
	}
	printf("%d분 %d초\n", Sec / 60, Sec % 60);
	return Sec / 60; //123->2 반환
}

#include<stdio.h>
int main()
{
	clock(123);
	clock(4000);
	int result = clock(123);
	printf("result = %d\n", result);

	printf("초 입력하세요.");
	int s;
	scanf_s("%d", &s);
	clock(s);

	return 0;
}