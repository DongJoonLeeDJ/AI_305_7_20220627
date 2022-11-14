#include<stdio.h>
#include<stdlib.h>
int main()
{
	//정수 : 소수점이 없는 숫자
	// 음수, 0, 자연수
	int a = 10; //4byte -20억~20억정도의 정수

	double b = 3.14;//실수. 소숫점 있는 숫자
	char c = 'A';//문자
	//한 글자를 의미합니다.
	//그런데 이 1글자를 숫자로 변환이 가능함
	//참고로 말씀드리면 'A'는 65
	//아스키코드라는 표때문에 그렇다(미국정보교환표준)


	//변수에 저장된 값과, 변수의 주소 출력
	// \n <- 한 줄 띄는 거(Enter키)
	// \는 백스페이스 바로 아래 있는 w 모양 키
	// escape 문자라고 부름
	//&a : a의 주소= a의 위치

	//%d = decimal, 10진수 정수를 의미
	printf("%d %d\n", a, &a);
	//%f = float, 실수...
	printf("%f %d\n", b, &b);


	//int는 정수를 저장하는 변수
	//int*는 정수변수를 저장하는 정수 포인터
	int* ptr_a = &a;

	//대용량의 데이터를 관리하는 것
	//배열이라는 것을 씀
	int numbers[5]; //5개의 숫자를 저장
	numbers[0] = 100;
	numbers[4] = 1000;
	int* p = numbers;

	//ptr_a, p는 변수의 위치를 저장
	//그 중에서 p는 numbers와 마찬가지로
	//5칸짜리 데이터의 시작 위치를 저장함
	//그리고 그 위치 안에 있는 데이터에 접근하려면
	//[0] 이렇게 대괄호 연산을 쓰면 된다.

	a = 100;
	
	int* test = (int*)malloc(sizeof(int) * a);
	//int test[a];

	return 0;
}