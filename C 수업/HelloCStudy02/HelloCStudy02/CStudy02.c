#include<stdio.h>
int main()
{
	int age;
	//1. scanf_s("%d\n", &age); 하지 말기
	//(\n 붙이는 거 아니다)
	//2. 값을 입력받고 있는 게 있다면 그걸 끄고
	//다시 실행하기
	//3. (참고사항) 프로그램 켜자마자
	//아무것도 안 뜨는 데...
	//값을 입력해야 그 다음 단계로 넘어감
	scanf_s("%d", &age);
	printf("내 나이 : %d\n", age);

	//3번 태어난 연도 계산
	printf("나는 %d년생입니다.\n", 2022 + 1 - age);

	//4번 원의 넓이와 둘레
	int r;
	printf("반 지름 입력해요\n");
	scanf_s("%d", &r);
	printf("원의 넓이 : %f\n", r * r * 3.14);
	double area = 2 * r * 3.14;
	printf("원의 둘레 : %f\n", area);

	//5번
	//byte를 입력받고 그에 해당하는 bit 찾기
	printf("몇 byte?\n");
	int byte;
	scanf_s("%d", &byte);
	printf("%d byte = %d bit\n", byte, byte * 8);
	//6번
	//bit를 입력받고 그에 해당하는 byte찾기
	int bit;
	printf("몇 bit?\n");
	scanf_s("%d", &bit);
	printf("%d bit = %d byte\n", bit, bit / 8);

	//mybyte * 8 = mybit;

	int mybyte = byte;
	int mybit = mybyte * 8;

	printf("%d byte * 8  = %d bit\n", 
		mybyte, mybit);


	return 0; //코드 이동 : alt + 화살표 위나 아래
}