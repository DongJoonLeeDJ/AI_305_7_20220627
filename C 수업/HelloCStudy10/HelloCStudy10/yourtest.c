#include"yourtest.h"
//yourtest.h에 있는 함수 원형을
//yourtest.c에서 정의한 것

//주의사항
//한 헤더 파일 안에
//어떤 함수는 2개로 쓰고
//어떤 건 헤더 안에 다 쓰면 안 됨
// 한 헤더 파일 안에서는
// 한 개의 스타일대로만 적어야 함
// (헤더 안에서 정의하든지 혹은
// 2개로 나누든지 정해야 함)
void yourTypeTest(int c)
{
	for (int i = 0; i < c; i++)
		printf("Hello\n");
}