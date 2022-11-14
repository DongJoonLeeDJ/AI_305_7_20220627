#include<stdio.h>
int main()
{
	//1.변수 a와 b와 c의 값을 입력받고, a부터 b까지의 합을 구하되, c의 배수 부분은
	//제외하고 합을 구할 것.
	int a, b, c;
	printf("a b c 입력");
	scanf_s("%d %d %d", &a, &b, &c);

	int sum = 0;
	for (int i = a; i <= b; i++)//반복
	{
		if (i % c == 0) //조건문
			continue;

		sum += i;
	}printf("sum=%d\n", sum);


	/*
2. 설탕공장 문제
사탕공장에 설탕을 배달함(동준이)
사탕공장에서 요구하는 설탕을 딱 떨어지게 잘 갖다 줘야 합니다.
동준이가 가지고 있는 설탕 묶음은 3kg, 5kg….
근데 동준이는 최대한 묶음의 수를 줄여서 갖다 주고 싶어합니다.
Ex) 18kg -> 3*6…. => 6묶음,  5*3 + 3 =>4묶음
5 -> 1
3 -> 1
6 -> 2
11 -> 5kg 1묶음에 3kg 2묶음 -> 3
9 -> 3
4 -> -1
16 -> 4
21 -> 5
딱 안 떨어지면 -1 반환
입력 값으로는 사탕공장에서 요구하는 설탕 수
출력 값은 최소 묶음 수를 출력.
	*/
	int sugar;
	printf("설탕 몇 kg?");
	scanf_s("%d", &sugar);
	int pack = 0;
	while (1)
	{
		if (sugar % 5 == 0)
		{
			pack += sugar / 5;
			printf("%d묶음\n", pack);
			break;
		}
		sugar -= 3;
		pack++;
		if (sugar < 0)
		{
			printf("-1\n");
			break;
		}

	}


	return 0;
}