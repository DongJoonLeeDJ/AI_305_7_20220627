#include<stdio.h>
//��ȯ��(���ϰ�)�� ����
//�Ű�����(�Ķ����)�� ���� ����
void greenChar()
{
	system("color 0a");
}
void changeColor(char a, char b)
{
	//color[1024] �̷��� �ᵵ ��...
	char color[9] = "color ";
	//[0] = 'c', [1] = 'o', [2] = 'l'
	//[3] = 'o', [4] = 'r', [5] = ' '
	//[6]��°�� [7]��°�� ���ڸ� �ְ�
	//���� NULL�� ������ ��
	//���� NULL �־����� ������ ���ڿ��μ�
	//�ν��� �� �ȴ�.
	color[6] = a;
	color[7] = b;
	//color[8] = NULL;//'\0';
	system(color);
}
int main()
{
	//system("color 0a");
	greenChar();
	printf("ù��° ���� �Է�");
	char a = getchar();
	rewind(stdin);
	printf("�ι�° ���� �Է�");
	char b = getchar();
	changeColor(a, b);
	return 0;
}