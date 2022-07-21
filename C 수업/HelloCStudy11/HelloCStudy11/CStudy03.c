#include<stdio.h>
extern int a;//CTest.c에서 온 변수 a

extern int b; //심각도	코드	설명	프로젝트	파일	줄	비표시 오류(Suppression) 상태
//오류	LNK2001	확인할 수 없는 외부 기호 b	HelloCStudy11	D : \shareFolder\C 수업\HelloCStudy11\HelloCStudy11\CStudy03.obj	1


void printNum(int); //함수의 원형
int main()
{
	//b++; //여기서 문제 생김! static 붙어서
		//CTest.c이외에선 못 씀
		//java, c#, c++의 private 같은 것
	a++;
	printf("%d\n", a);
	up_Print();
	printNum(a);
	int v = 1;
	int b = 2;
	int result = v >= b ? v : b;
}
void printNum(int a)// 함수의 정의
{
	printf("\n%d", a);
}