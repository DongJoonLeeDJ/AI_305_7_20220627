#include<stdio.h>
#define MAX 1024 //��ũ�� ���
//���ú��� �� ���� ó���Ǳ� ������ 
//�̰� �̿��ؼ� �迭�� ũ�� ��� �� �ȴ�!!!
int main()
{
	//�迭 �ȿ� ���ڸ� �ְ�
	//�ű⼭ ���� ū ��
	//�׸��� �� ū ���� �ε���
	//���
	//���� ū �� Ȥ�� ���� �� ã�� �� ���� �ߴ�.
	int numbers[5];
	int mynumbers[MAX];

	//malloc, calloc�� �� ����
	//int num = 5;
	//int numbers2[num]; //������ �迭 ũ�� ����x

	int size = sizeof(numbers) / sizeof(int);

	for (int i = 0; i < size; i++)
	{
		printf("%d��° ���� �Է�", i);
		scanf_s("%d", &numbers[i]);
	}
	//���� ù��° ���ڸ� ���� ũ�ٰ� ������
	int max = numbers[0];
	int max_index = 0;
	for (int i = 1; i < size; i++)
	{
		if (max < numbers[i])
		{
			max = numbers[i];
			max_index = i; //����
		}
	}
	printf("�ִ��� [%d]�� �ֽ��ϴ�.\n", max_index);


	return 0;
}