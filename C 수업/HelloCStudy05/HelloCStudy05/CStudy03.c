#include<stdio.h>
int main()
{

	//�ݺ����� ���ؼ� �� �� �غ���

	//1. for������ ���ѷ��� �����
	//for (;;) 
	//for(int i = 0; i<1;)
	system("color a");
	for(int i = 0;;i++)
	{
		//printf("a");
		printf("%d", i);
		break;
	}

	//2. while���� ��ø�� �ǹǷ� while������
	//������ © �� �ִ�.

	//3. �ݺ��� �̿��ؼ� ���ڿ� �ȿ� �ִ�
	//����� �ϳ��ϳ� � ���� �ִ�.
	char name[100];
	printf("�̸��� ����?");
	gets(name);
	//'\0' = NULL
	//for (int i = 0; name[i] != '\0';i++)
	for (int i = 0; name[i] != NULL ;i++)
		printf("%c", name[i]);
	//��� ���ڿ��� ���� NULL�̹Ƿ�
	//�� ���ڿ��� ������ �� ���� ��




	return 0;
}