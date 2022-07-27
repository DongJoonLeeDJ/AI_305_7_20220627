
#include<stdio.h>
/*
3. �Ű������� �¾ ���� �ް�, 
�׿� ���� ������
���ڿ��� �����ϼ���.
12 -> �ܿ�
-1 -> �����ƴ�
*/
char* season(int month)
{
	switch (month)
	{
		case 12: 	case 1: 	case 2: //���� �̷��� ������ �� ��
			return "�ܿ�";     //���̽� �� 1�پ� ���� �� ����
		case 3:	case 4:	case 5:	
			return "��";
		case 6:	case 7:	case 8:	
			return "����";
		case 9:	case 10: case 11: 
			return "����";
		default: 
			return "����";
	}
}
//������ ����. ���ڿ� ���� ���ϱ�
int length(char* str)
{
	//���ڿ��� ���̸� ���Ϸ���, �� ���ڿ��� ���������� �ݺ����� ����
	//����, ����, Ư������, ������ ��� 1byte
	//�ٵ� �ѱ��̳� ���� ���� 1���ڴ� 2byte
	//���ǹ� üũ�ϱ⵵ ����� ����ó���� ���� �ʴ�.
	//�ϰ� ���� ����� �ѱۿ� ���ؼ��� ����ó�� �غ�����~
	int len = 0;
	while (str[len] != '\0')
		len++;
	return len;
}

int main()
{
	printf("%s\n", season(4));
	printf("%s\n", season(-1));
	printf("%s\n", season(13));
	printf("%s\n", season(12));
	printf("%s\n", season(6));
	printf("%s\n", season(3));
	printf("%s\n", season(11));
	printf("%d\n", length("abcd1234")); //8  
	printf("%d\n", length("abcd 1234!")); //10
	return 0;
} 