#include<stdio.h>
void swap(int aa, int bb)
{
	int temp = aa;
	aa = bb;
	bb = temp;
}

int main()
{
	int a = 100;
	int b = 20;

	swap(a, b);

	printf("\n%d %d\n", a, b);

	a = 50;
	int ages2[10] = {30, 20, 31, 21, 25, 23, 34, 50, 41, 22};
	ages2[5] = 500;

	for (int i = 0; i < 10; i++)
		printf("%d ", ages2[i]);
	
	printf("\n%d\n", *ages2);

	printf("\n%d\n", ages2);


	int* ptra = &a;
	*ptra = 1000; //a=1000;
	printf("%d\n", ptra); //��ġ
	printf("%d\n", *ptra); //�˸���
	printf("%d\n", a); //�˸���

	int* ptr = ages2;

	printf("%d %d %d\n", *ptr+1, *ages2, ages2[0]);
	printf("%d %d %d\n", *ptr, *ages2, ages2[0]);
	printf("%d %d %d\n", *(ptr+1), *(ages2+1), ages2[1]);

	int age[10];
	age[0] = 100;
	for (int i = 1; i < 10; i++)
		age[i] = i * 10;

	for (int i = 0; i < 10; i++)
		printf("%d ", age[i]);

	ptr = age;
	for (int i = 0; i < 10; i++)
		*(ptr + i) = i * i;
	printf("\n");
	for (int i = 0; i < 10; i++)
		printf("%d ", age[i]);


	char* name = "������";
	char name2[7] = "����ȣ"; //char ���� �迭
	char alphabet = 'A';

	//int �迭
	//int�� ���� �� �����ϴ� �� ó��
	//char �迭(=���ڿ�)�� char ���� ���� �����ϴ� ��
	gets(name2); //ĭ ���� ����(7ĭ. ������ ĭ�� \0)
	printf("%s", name2);
	//gets(name);// ĭ ���� ����
	//scanf_s("%s", name, sizeof(name));

	printf("%s", &alphabet);


	//age = 10ĭ ¥��
	//10ĭ ¥�� �޸��� ���� ��ġ
	//�� 10ĭ¥�� �޸𸮴� 1ĭ�� 4byte(type�� int�ϱ�)
	printf("\nsizeof age = %d\n", sizeof(age));
	printf("\nsizeof name2 = %d\n", sizeof(name2));//1ĭ�� 1byte

	int age_length = sizeof(age) / sizeof(int);
	printf("\n ���� : %d \n", age_length);




	return 0;
}