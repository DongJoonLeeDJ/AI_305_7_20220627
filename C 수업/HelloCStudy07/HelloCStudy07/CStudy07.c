#include<stdio.h>
int main()
{
	//1. �Է��� ���ڿ� �� ����� 
	//�빮�ڷ� �ٲ� ��
	printf("ù ��° ���� �Է��ؿ�.");
	char s1[1024];
	char s2[1024];
	gets(s1);
	int diff = 'a' - 'A';//��ҹ��ڰ��� ���� ���س���
	for (int i = 0; s1[i] != NULL; i++)
	{
		//a~z������ ���� ���
		if (s1[i] >= 'a' && s1[i] <= 'z')
		{
			s1[i] -= diff;
		}
	}
	printf("1. %s\n", s1);



	for (int i = 0; s1[i] != NULL; i++)
	{
		//A~Z������ ���� ���
		if (s1[i] >= 'A' && s1[i] <= 'Z')
		{
			s1[i] += diff;
		}
	}
	printf("2. %s\n", s1);



	////////////////////////////////



	printf("���� �ٽ� �Է��غ�����.");
	gets(s2);
	for (int i = 0; s2[i] != '\0'; i++)
	{
		if (s2[i] >= 'A' && s2[i] <= 'Z')
			s2[i] += diff; //�ҹ��ڷ� ��ȯ
		else if (s2[i] >= 'a' && s2[i] <= 'z')
			s2[i] -= diff;//�빮�ڷ� ��ȯ
	}
	printf("%s\n", s2);








	char r[1024]; //������ �� �����ϱ�
	int index = 0;
	int count = 0;
	while (s2[index] != NULL)
		index++;
	//index�� s2�� ���� ��(=NULL)�� ����Ű�� ����

	//index-1 : NULL �ٷ� ��. �� ������ ��
	//abc �Է��ϸ� abc'\0' �̷��� �Ǵ� ��...
	//index-1�̸� c�� ����Ŵ.

	//i-- �ϸ鼭 ù��° ���ڱ��� �о����
	//count�� r�迭�� �ε���
	//s2�� �ִ� ���ڸ� �޺κк��� �����;� �ϴ� ��
	//r�迭�� �պκк��� ä���� ��
	for (int i = index - 1; i >= 0; i--, count++)
	{
		printf(" %c ", s2[i]);//�ŲٷεȰ����
		r[count] = s2[i];//�Ųٷ� �� �� �ױ�
	}
	r[count] = NULL;//���������� �������� NULL
	printf("\n%s\n", r);

	return 0;
}