#include<stdio.h>
//arr에 n 값이 있는지 여부 체크
//size만큼 다 돌 필요 없다.
//2번째에 값을 넣는다면 2번째에 값을 넣기 전에
//0번째와 1번째의 값이랑 n을 비교하면 된다.
int checkDupicate(int arr[], int size, int n)
{
	for (int i = 0; i < size; i++)
	{
		if (n == arr[i])
			return 1; //1 대신 다른 수도 된다.
	}
	return 0; //중복이 없다는 뜻
}
int main()
{
	int numbers[5];
	for (int i = 0; i < 5; i++)
	{
		int n;
		printf("숫 자 입 력");
		scanf_s("%d", &n);
		if (checkDupicate(numbers, i, n) == 0)
			numbers[i] = n;
		else
			i--; //다시 앞으로 가서 숫자 다시 넣어야 됨
	}
	return 0;
}