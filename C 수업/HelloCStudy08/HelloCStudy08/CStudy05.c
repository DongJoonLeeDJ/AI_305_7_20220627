#include<stdio.h>
int main()
{
	//���� Ǯ�� ��...
	//���������͸� �̿��ؼ�
	//�迭�� �ִ� �� ����Ű�� ��...

	//4ĭ¥�� 1���� �迭 3�� �����ϴ�
	//2���� �迭�� �ִٰ� �غ���.
	int numbers[3][4] = {
		{10,20,30,40},
		{50,60,70,80},
		{90,100,110,120}
	};

	int** ptr = numbers;
	//�ɰ���	�ڵ�	����	������Ʈ	����	��	��ǥ�� ����(Suppression) ����
	//���	C4047	'�ʱ�ȭ ��': 'int **'�� ���� ���� ������ 'int (*)[4]'��(��) �ٸ��ϴ�.HelloCStudy08	D : \shareFolder\C ����\HelloCStudy08\HelloCStudy08\CStudy05.c	16

	printf("%d", numbers[0][0]);
	//printf("%d", ptr[0][0]); //�̷��� �ϸ� �� ��....

	//4ĭ¥�� �迭�� ����Ű�� ������
	//�� �迭�����͸� ������ ��
	int(*nptr)[4] = numbers;
	//https://dojang.io/mod/page/view.php?id=312

	printf("\n%d\n", numbers[1][1]); //60
	printf("\n%d\n", nptr[1][1]); //60

	//�迭�� �������̰�
	//������ �տ� ���� ���̸� �� �ȿ� �� ���� ��°���
	printf("\n%d\n", **numbers); //10
	printf("\n%d\n", **(numbers+1));//50
	printf("\n%d\n", *(*numbers + 1));//20

	//���¿����� �߰��� ��....
	printf("���¿� : %d\n", *(* nptr+10));



	return 0;
}