#include<stdio.h>
int main()
{
	int numbers[6]= {0, }; //6���� ���ڸ� ����
	//{0, }; <- 0���� �ʱ�ȭ
	char mbti[5] = "INFJ"; //5���� ���ڸ� ����. �� ������ ���ڴ� '\0'(NULL)
	
	int* ptr_n = numbers;
	char* m = mbti;
	
	*m = 'E'; //*mbti = 'E'; //mbti[0] ='E';  m[0] = 'E';
	*ptr_n = 100; //numbers[0]=100; ptr_n[0]=100;

	printf("%d %d %d %d %d %d\n", numbers[0], numbers[1], numbers[2], numbers[3], numbers[4], numbers[5]);

	printf("%s", mbti); //INFJ -> INTP

	//����� �迭�� �� �ִ� ��� 2��°
	//1��°�� ptr+1 �̷������� �־���

	scanf_s("%d", &numbers[1]); //2��° ��� -> �̰� �ʹ� �߾�
	scanf_s("%d", numbers + 2); //1��° ���
	printf("%d %d %d %d %d %d\n", numbers[0], numbers[1], numbers[2], numbers[3], numbers[4], numbers[5]);

	rewind(stdin);
	gets(m); //���ڿ� �Էµ� ��.
	printf("%s", mbti); //INFJ -> INTP
	printf("%s", m); //INFJ -> INTP


	char mytest[100] = "�ȳ��ϼ���."; //6����.   12~13
	char test2[150];
	//mytest = test2; //������ ����� �ٸ� �� �� ����Ŵ

	//ptrptr�� �����ͺ����̹Ƿ� �ٸ� �� ����ų �� ����
	char* ptrptr = test2;
	ptrptr = mytest;

	int i = 0;
	double count = 0;
	for (i = 0; mytest[i] != NULL; i++)
	{
		if (mytest[i] > 127 || mytest[i] < 0)
		{
			count += 0.5;
		}
		else
		{
			count += 1;
		}
	}
	printf("���ڼ� : %d", (int)count);

	return 0;
}