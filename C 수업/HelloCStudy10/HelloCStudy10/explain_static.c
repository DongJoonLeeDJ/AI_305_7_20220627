#include<stdio.h>

int b = 10;
static int bb = 20;
extern aabb;
extern bbaa;
void increase()
{
	//static 붙으면 데이터영역에 저장되서
	//이 함수 끝나도 삭제 안 되고 프로그램이 끝나야지만 삭제됨
	static int a = 0; //프로그램 시작시 생겨나고 프로그램이 끝날 때에야 없어짐
	b++;
	a++;
	bb++;
	printf("a=%d\nb=%d\nbb=%d\n", a,b,bb);
}


int main()
{
	increase();
	increase();
	increase();
	aabb++;
	printf("\n%d\n", aabb);
	//bbaa++; //static은 외부에서 못 쓴다.
	myin();
	return 0;
}