#include<stdio.h>
#include<stdlib.h> //���� �迭��
int main()
{
	//10ĭ¥�� �迭 �ϼ�
	int* dynamic_arr = (int*)malloc(3 * sizeof(int));
	for (int i = 0; i < 3; i++)
		printf("%d\n", dynamic_arr[i]);
	int size;
	printf("�迭 ������ ����");
	scanf_s("%d", &size);
	int* dynamic_arr2 = (int*)malloc(size * sizeof(int));
	for (int i = 0; i < size; i++)
		dynamic_arr2[i] = i+10;
	for (int i = 0; i < size; i++)
		printf("%d\n", dynamic_arr2[i]);

	//malloc -> �޸� �ʱ�ȭ�� �� ��
	//calloc -> 0���� �ʱ�ȭ����
	//10ĭ¥�� ���� �迭�� ������� ��, 
	//�ȿ� ���� 0���� �ʱ�ȭ �Ǿ� �ִ�.
	int* mynumbers = (int*)calloc(10, sizeof(int));
	for (int i = 0; i < 10; i++)
		printf("%d\n", mynumbers[i]);

	//���� �޸𸮴� ���α׷��Ӱ� �������� �Ҵ��� ���̶�
	//�� ��ٸ� free�� ������� ��
	//�̰� �� ���ָ� �޸� ����(memory leak) ���� ����
	//�� �޸𸮰� ���� ��
	//���� ���α׷��� �̴�� �����ٸ� ���� free�� ���� �ʿ����.
	//�ٵ� �� �ڿ��� ���α׷��� ��� �ǰ�, �̰� ���̻� �� ���ٸ�
	//free�� �ؾ� �Ѵ�.
	free(mynumbers);
	free(dynamic_arr);
	free(dynamic_arr2);


	return 0;
}