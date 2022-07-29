#include<stdio.h>
struct Game3DPos
{
	int x;
	int y;
	int z;
}typedef Game3DPos;
//struct Game3DPos 를 Game3DPos로 정의한 것
//즉 앞에 struct 안 적어도 됨
int main()
{
	Game3DPos g1 = { 10,20,30 };
	//이렇게 적으면 순서는 바뀌어도 됨
	//zxy 이렇게 적어도 됨
	Game3DPos g2 = { .x=10,.y=20,.z=30 };
	Game3DPos g3;
	g3.x = 10;
	g3.y = 20;
	g3.z = 15;
	Game3DPos g4;
	scanf_s("%d %d %d", &g4.x, &g4.y, &g4.z);
	printf("%d %d %d", g4.x, g4.y, g4.z);
	return 0;
}