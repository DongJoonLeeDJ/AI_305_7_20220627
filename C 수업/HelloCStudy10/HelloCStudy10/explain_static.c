#include<stdio.h>

int b = 10;
static int bb = 20;
extern aabb;
extern bbaa;
void increase()
{
	//static ������ �����Ϳ����� ����Ǽ�
	//�� �Լ� ������ ���� �� �ǰ� ���α׷��� ���������� ������
	static int a = 0; //���α׷� ���۽� ���ܳ��� ���α׷��� ���� ������ ������
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
	//bbaa++; //static�� �ܺο��� �� ����.
	myin();
	return 0;
}