#include<stdio.h>
int main()
{

	int numbers[6] = { 0, }; //6���� ���ڸ� ����
	//{0,}; <- 0���� �ʱ�ȭ
	char a = 'A';
	char b = '��';
	char mbti[5] = "ISTP"; //5���� ��������. �� ������ ���ڴ� '\0'(��)
	printf("%s", mbti);

	int* ptr_n = numbers;
	char* m = mbti;

	mbti[2] = 'E';//m[2] = 'E';//*(m + 2) = 'E';
	*ptr_n = 100;

	printf("%d %d %d %d %d %d\n", numbers[0], numbers[1], numbers[2],
		numbers[3], numbers[4], numbers[5]);

	printf("%s", mbti); //ISTP -> ESTP

	//����� �迭�� �� �ִ� ��� 2��°
	//1��°�� ptr+1 �̷������� �־���
	numbers[1] = 100;
	scanf_s("%d", &numbers[1]); //2��° ��� -> �̰� �� �� �� ��
	scanf_s("%d", numbers + 2); //1��° ���
	printf("%d %d %d %d %d %d\n", numbers[0], numbers[1], numbers[2],
		numbers[3], numbers[4], numbers[5]);

	rewind(stdin);
	gets(m); //���ڿ� �Էµ� ��.
	printf("%s", mbti); //ISTP -> ESTP
	printf("%s", m); //ISTP -> ESTP





	return 0;
}