#include<stdio.h>
int main()
{
	//2단부터 9단 값을 2차원에 저장
	//2~9 -> 8행
	//1~9 -> 9열
	int gugu1[8][9];
	//gugu1[0][0] ~ gugu1[7][8]
	int row = sizeof(gugu1) / sizeof(gugu1[0]);
	int col = sizeof(gugu1[0]) / sizeof(gugu1[0][0]);//sizeof(int);
	printf("%d행 %d열\n", row, col);//8행 9열
	//gugu1은 8칸짜리 배열 가리킴
	//gugu1[0]~gugu1[7]까지는 9칸짜리 배열 가리킴

	for (int i = 0; i < row; i++)
	{
		for (int j = 0; j < col; j++)
		{
			gugu1[i][j] = (i + 2) * (j + 1);
		}
	}

	int gugu2[10][9];//10단부터 19단
	//10~19단이니까 10개
	// 10 11 12 13 14 15 16 17 18 19
	int gugu2_row = sizeof(gugu2) / sizeof(gugu2[0]);
	//row랑 col 값 똑같으니까 그대로 써도 됨
	for (int i = 0; i < gugu2_row; i++)
	{
		for (int j = 0; j < col; j++)
			gugu2[i][j] = (i + 10) * (j + 1);
	}

	//3
	int sum1 = 0;
	for (int i = 0; i < row; i++)
	{
		for (int j = 0; j < col; j++)
			sum1 += gugu1[i][j]; //sum = gugu1[i][j]+sum;
	}
	//4
	int sum2 = 0;
	for (int i = 0; i < gugu2_row; i++)
	{
		for (int j = 0; j < col; j++)
			sum2 += gugu2[i][j];
	}
	//5
	int sum3 = sum1 + sum2;

	printf("2~9 합 : %d\n", sum1);
	printf("10~19 합 : %d\n", sum2);
	printf("총합 : %d\n", sum3);


	//6
	for (int i = 0; i < row; i++)
	{
		for (int j = 0; j < col; j++)
			printf("%3d ", gugu1[i][j]);//%3d -> 3칸
		printf("\n");
	}
	//7
	for (int i = 0; i < gugu2_row; i++)
	{
		for (int j = 0; j < col; j++)
			printf("%3d ", gugu2[i][j]);
		printf("\n");
	}

	//내가 푼 방식
	//if문 줘서 띄어쓰기를 했다.
	//10미만은 2번띄어쓰고, 100미만은 1번띄어쓰기
	//6
	for (int i = 0; i < row; i++)
	{
		for (int j = 0; j < col; j++)
		{
			if (gugu1[i][j] < 10)
				printf("  ");
			else if (gugu1[i][j] < 100)
				printf(" ");

			printf("%d ", gugu1[i][j]);
		}
		printf("\n");
	}
	//7
	for (int i = 0; i < gugu2_row; i++)
	{
		for (int j = 0; j < col; j++)
		{
			if (gugu2[i][j] < 10)//1의자리, 1자리 숫자
				printf("  ");
			else if (gugu2[i][j] < 100)//10~99, 2자리 숫자
				printf(" ");
			printf("%d ", gugu2[i][j]);
		}
		printf("\n");
	}

	return 0;
}