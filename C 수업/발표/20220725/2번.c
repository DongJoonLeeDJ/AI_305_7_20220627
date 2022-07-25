#include<stdio.h>

/*
2. Sec(초) 값을 입력받아서 시간이 h분 m초라는 걸 출력하되, 3600이상의 값을 받으면
오류 메시지를 출력한다.
그리고 m 값은 반환한다.
*/
int MIN(int sec);

int SEC(int sec);


int main() {
	printf("몇초입니까?\n");
	int a;
	scanf_s("%d", &a);
	if (a >= 3600)
	{
		printf("오류");
	}
	else
	{

		printf("%d분 %d초입니다", MIN(a), SEC(a));
	}



}
int MIN(int sec)
{
	return sec / 60;
}
int SEC(int sec) 
{
	return sec % 60;
}