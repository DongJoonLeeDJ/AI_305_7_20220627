#include<stdio.h>
int main()
{
	//문제 풀기 전...
	//다중포인터를 이용해서
	//배열에 있는 값 가리키는 거...

	//4칸짜리 1차원 배열 3개 관리하는
	//2차원 배열이 있다고 해보자.
	int numbers[3][4] = {
		{10,20,30,40},
		{50,60,70,80},
		{90,100,110,120}
	};

	int** ptr = numbers;
	//심각도	코드	설명	프로젝트	파일	줄	비표시 오류(Suppression) 상태
	//경고	C4047	'초기화 중': 'int **'의 간접 참조 수준이 'int (*)[4]'과(와) 다릅니다.HelloCStudy08	D : \shareFolder\C 수업\HelloCStudy08\HelloCStudy08\CStudy05.c	16

	printf("%d", numbers[0][0]);
	//printf("%d", ptr[0][0]); //이렇게 하면 안 됨....

	//4칸짜리 배열을 가리키는 포인터
	//즉 배열포인터를 만들어야 함
	int(*nptr)[4] = numbers;
	//https://dojang.io/mod/page/view.php?id=312

	printf("\n%d\n", numbers[1][1]); //60
	printf("\n%d\n", nptr[1][1]); //60

	//배열은 포인터이고
	//포인터 앞에 별을 붙이면 그 안에 들어간 값을 출력가능
	printf("\n%d\n", **numbers); //10
	printf("\n%d\n", **(numbers+1));//50
	printf("\n%d\n", *(*numbers + 1));//20

	//장태연님이 발견한 거....
	printf("장태연 : %d\n", *(* nptr+10));



	return 0;
}