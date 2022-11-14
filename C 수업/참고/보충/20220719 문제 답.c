#include<stdio.h>
int main()
	{ 


	//i++
	//i = i + 1;
	//i += 1;


	//i = i + 2;
	//i += 2;
	for (int i = 1; i <= 9; i++)
	{
		printf("%d x %d = %d\n", 2, i, 2 * i);
	}

	int n;
	scanf_s("%d", &n);
	for (int i = 1; i <= 9; i++)
	{
		printf("%d x %d = %d\n", n, i, n * i);
	}

	//2x1...2x9
	//3x1...3x9
	//4x1....4x9

	for (int i = 2; i <= 9; i++)
	{
		for (int j = 1; j <= 9; j++)
		{
			printf("%d x %d = %d\n", i, j, i * j);
		}
	}

	//*
	//**
	//***
	int f;
	scanf_s("%d", &f);

	for (int i = 1; i <= f; i++)
	{
		for (int j = 0; j < i; j++)
		{
			printf("*");
		}
		if(i!=f)
			printf("\n");
	}


	return 0;

	}
