#include<stdio.h>
//arr�� n ���� �ִ��� ���� üũ
//size��ŭ �� �� �ʿ� ����.
//2��°�� ���� �ִ´ٸ� 2��°�� ���� �ֱ� ����
//0��°�� 1��°�� ���̶� n�� ���ϸ� �ȴ�.
int checkDupicate(int arr[], int size, int n)
{
	for (int i = 0; i < size; i++)
	{
		if (n == arr[i])
			return 1; //1 ��� �ٸ� ���� �ȴ�.
	}
	return 0; //�ߺ��� ���ٴ� ��
}
int main()
{
	int numbers[5];
	for (int i = 0; i < 5; i++)
	{
		int n;
		printf("�� �� �� ��");
		scanf_s("%d", &n);
		if (checkDupicate(numbers, i, n) == 0)
			numbers[i] = n;
		else
			i--; //�ٽ� ������ ���� ���� �ٽ� �־�� ��
	}
	return 0;
}