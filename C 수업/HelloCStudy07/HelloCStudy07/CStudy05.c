#include<stdio.h>
int main()
{
	
	//����(����ǥ �ȿ� ���� '')�� ���ڿ�
	//���ڿ� - �ֵ���ǥ("") �ȿ� ����. ���� Ȥ�� string�̶�� ��
	char c = 'A';
	char mbti[5];// = "ISTP";//NULL Ȥ�� '\0'
	char* m = mbti;
	char bType[3];
	bType[0] = 'A';
	bType[1] = 'B'; //bTyep�� AB��� �� ��
	bType[2] = NULL; //Ȥ�� '\0' �ֱ�
	char bloodType[3] = "AB";
	char name[7] = "�̵���";
	char mbti2[100] = "ENTP"; //�����ϱ� �������� �˳��ϰ� ���
	printf("%s", bType);
	//���ڿ� �Է¹ޱ�
	printf("\nmbti��?\n");
	gets(mbti);
	printf("%s", mbti);
	//���� �Է¹ޱ�
	printf("���ĺ� �ϳ� �Է��غ���");
	//rewind(stdin);//���ڳ� ���ڿ��� �Է¹��� ��
	//������ ���� �Է¹��� �� ������ �ݵ�� �߰��� ��� �ϴ� �ڵ�
	//����Ű(\n)�� ���۶�� �޸𸮿� ���� �־
	//�װ� �ݵ�� ��������� �Ѵ�.
	c = getchar();
	printf("%s %c", mbti, c);
	printf("�ٽ� ���� �Է�");
	//rewind �� �����ϱ� ����Ű�� getchar�� ������
	//��!!! ������ �Է¹��� �� ��� �ڵ尡 gets���
	//�ʿ����
	//��� scanf�ų� getchar�� ��쿣 rewind�� �ʿ�
	//���ڸ� �Է¹����Ŷ�� rewind �� �ᵵ �ǰ�, ���ڳ�
	//���ڿ��� �Է¹��� �� ��� ��
	rewind(stdin);
	c = getchar();
	printf("c=%c\n", c);

	rewind(stdin);
	printf("aaa");
	char ch;
	char ch2;
	char myname[100];
	gets(myname);
	ch = getchar();

	
	return 0;
}