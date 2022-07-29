#include<stdio.h>
//1. 2D 게임 캐릭터 좌표 저장하는 구조체 만들기
//1개의 변수가 1개 이상의 값을 가짐
struct Game2DPos
{
	int x;
	int y;
};
int main()
{
	//구조체 : struct 스트럭트
	//사용자가 직접 만든 자료형
	//크기도 다양함
	//배열은 다름
	//1개의 변수가 여러 가지의 속성을 가짐
	 
	//int, char, double처럼
	//앞에 뭘 안 붙이고 싶다.
	//이건 struct 붙여서... 좀 싫다.
	struct Game2DPos p1 = { 10,20 };
	printf("%d\n", sizeof(p1));
	//사이즈 : 8
	//이유: 4byte가 한 변수에 두 개 있음
	struct Game2DPos p2 = { .x=10,.y=20 };
	struct Game2DPos p3;
	p3.x = 10;
	p3.y = 20;
	struct Game2DPos p4;
	scanf_s("%d %d", &p4.x, &p4.y);
	printf("썬콜법사의 위치 %d %d\n", p4.x, p4.y);
	return 0;
}