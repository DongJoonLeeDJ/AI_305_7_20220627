#include<stdio.h>
void enterKey() 
{
	printf("\n");
}
void printPowerNumber(int n)
{							
	printf("%d", n * n);
}
int inputNum()
{
	int n;
	printf("\n숫자 입력해요\n");
	scanf_s("%d", &n);
	return n;
}

int PowerNum(int n, int p) 
{
	if (p <= 0) 
		return 1;
	else if (p == 1)
		return n;
	else {
		int num = n;
		for (int i = 0; i < p-1; i++)
			n *= num;
	}
	return n;
}
void printfNumber(int n)
{
	printf("%d", n);
}


int main()
{
	int n, p;
	
	scanf_s("%d %d", &n, &p);
	
	
	printfNumber(PowerNum(n, p));
	
	
	printfNumber(PowerNum(inputNum(), inputNum()));


	return 0;
}