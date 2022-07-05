#include<stdio.h>
int main()
{

	int numbers[6] = { 0, }; //6개의 숫자를 저장
	//{0,}; <- 0으로 초기화
	char mbti[5] = "ISTP"; //5개의 문자저장. 단 마지막 글자는 '\0'(널)

	int* ptr_n = numbers;
	char* m = mbti;

	*(m + 2) = 'E';
	*ptr_n = 100;

	printf("%d %d %d %d %d %d\n", numbers[0], numbers[1], numbers[2],
		numbers[3], numbers[4], numbers[5]);

	printf("%s", mbti); //ISTP -> ESTP

	//참고로 배열에 값 넣는 방법 2번째
	//1번째는 ptr+1 이런식으로 넣었음

	scanf_s("%d", &numbers[1]); //2번째 방법 -> 이걸 좀 더 잘 씀
	scanf_s("%d", numbers + 2); //1번째 방법
	printf("%d %d %d %d %d %d\n", numbers[0], numbers[1], numbers[2],
		numbers[3], numbers[4], numbers[5]);

	rewind(stdin);
	gets(m); //문자열 입력도 됨.
	printf("%s", mbti); //ISTP -> ESTP
	printf("%s", m); //ISTP -> ESTP





	return 0;
}