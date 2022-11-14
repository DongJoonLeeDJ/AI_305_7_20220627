#include<stdio.h>
void one()
{
	printf("저는 박재형입니다.\n");
}
int two()
{
	int n;
	printf("숫자를 입력 ");
	scanf_s("%d", &n);
	return n;
}
void printNumber(int n)
{
	printf("숫자 그거 출력 %d\n", n);
}
int powernum(int n, int p)
{
	if (p == 0)
		return 1;
	else if (p == 1)
		return n;
	else {
		int num = n;
		for (int i = 0; i < p - 1; i++)
			n *= num;
	}
	return n;
}
int main()
{

if(0)
{ 
#pragma region 수업시간에 같이 해봄

#pragma endregion
}

	one();
	int result = two();
	printNumber(result);
	int result3 = powernum(result, 3);
	printf("%d", result3);
	int p;
	printf("\n몇승? ");
	scanf_s("%d", &p);
	int result2 = powernum(result, p);
	printf("%d", result2);
	return 0;
}




