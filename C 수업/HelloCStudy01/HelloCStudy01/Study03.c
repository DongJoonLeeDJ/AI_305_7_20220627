#include<stdio.h>
int main()
{
	//숫자 체계
	//%d => decimal(10진수) => 정수
	//정수 : 소수점이 없는 수자
	//-3 -2 -1 0 1 2 3...
	//%f : float => 실수
	//%c : 문자 (1글자)
	//%s : 문자열(= 여러 개의 문자)
	printf("%d ", 1 + 1);
	printf("%f ", 1.0 / 3);
	printf("%f ", 1 / 3);
	printf("%d ", 1 / 3);
	printf("%c ", 'A');
	printf("%d ", 'A');
	printf("%s    ", "이동준");
	printf("%c   ", '가');
	printf("%c%c", "가"[0],"가"[1]);

	printf("내 이름은 %s입니다.", "이동준");
	return 0;
}