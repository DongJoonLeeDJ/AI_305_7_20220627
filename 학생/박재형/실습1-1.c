#include<stdio.h>
void one()
{
	printf("���� �������Դϴ�.\n");
}
int two()
{
	int n;
	printf("���ڸ� �Է� ");
	scanf_s("%d", &n);
	return n;
}
void printNumber(int n)
{
	printf("���� �װ� ��� %d\n", n);
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
#pragma region �����ð��� ���� �غ�

#pragma endregion
}

	one();
	int result = two();
	printNumber(result);
	int result3 = powernum(result, 3);
	printf("%d", result3);
	int p;
	printf("\n���? ");
	scanf_s("%d", &p);
	int result2 = powernum(result, p);
	printf("%d", result2);
	return 0;
}




