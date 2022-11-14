#include<stdio.h>
int main()
{
	// 1번
	//
	//int n;
	//int fac = 1;
	//scanf_s("%d", &n);
	//for (int i = 1; i <= n; i++)
	//	fac *= i;
	//printf("%d\n", fac);

	//2번
	//int m;
	//int sum = 0;
	//printf("n 과 m 값을 입력해주세요");
	//scanf_s("%d %d", &n, &m);
	//if (m >= n)
	//{
	//	for ( ; n <= m; n++)
	//		sum += n;
	//	printf("\n%d", sum);
	//}
	//
	//int n, m;
	//int sum = 0;
	//printf("n 과 m 값을 입력해주세요");
	//scanf_s("%d %d", &n, &m);
	//if (m >= n)
	//{
	//	for (; n <= m; n++)
	//	{
	//		if (n % 2 != 0)
	//			continue;
	//		sum += n;
	//	}
	//	printf("\n%d", sum);
	//}



	//int mul;
	//
	//while (1)
	//{
	//	scanf_s("%d", &mul);
	//	if (mul > 0)
	//		printf("%d\n", mul * mul);
	//	else
	//		break;
	//}

	int x;
	scanf_s("%d", &x);
	if (x == 1)
		printf("*");
	else
	{
		for (int i = 1; i <= 2 * x * x; i++)
			if (x % 2 != 0)
			{
				if (i % 2 != 0)
					printf("*");
				if (i % 2 == 0)
					printf(" ");
				if (i % x == 0)
					printf("\n");
			}
			else
			{
				if (i % 2 != 0)
					printf("*");
				if (i % 2 == 0)
					printf(" ");
				if (i % (2 * x) == 0)
				{
					printf("\n");
				}
				else if (i % x == 0)
				{
					printf("\n");
					printf(" ");

				}
			}
	}




	return 0;
}