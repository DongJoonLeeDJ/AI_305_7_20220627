#include<stdio.h>
int main()
{
	//start : ������ ��������, ���ϱ�� ����
	char start[2048] = "1";
	//�а� ���ϱ� ������ 20��° ���� ã�� ��
	//���ڷ� �����ϸ� �� �ǰ� ���ڷν� �����ؾ� ��
	for (int i = 1; i <= 20; i++)
	{
		printf("%d��° : %s\n", i, start);
		char end[2048] = { NULL };//�а� ���Կ� �־ ������
		char num = start[0]; //num : �д� ����
		int count = 0; //���� ���� ������ ����
		int k = 0;//end�� ���� ä������ �� ��(������ų ��)
		//���������� �о���̱� ����
		for (int j = 0; start[j] != NULL; j++)
		{
			if (num != start[j]) //�д� ���ڰ� ���� �� 
			{
				end[k] = num;
				k++;
				end[k] = count + '0';
				k++;
				num = start[j];
				count = 1;
			}
			else //���� �� 
			{
				count++;
			}
		}
		end[k] = num;
		k++;
		end[k] = count + '0';
		//k++;
		//end�� �ִ� �� start�� �ű�
		//for������ �Űܵ� �Ǵ� ��... strcpy��� �Լ��ᵵ ��
		//strcpy(start, end); //end�� �ִ� �� start�� �ű�
		int c = 0;
		//�� �ȿ� �ִ� int c�� �ٱ� int c�� ���� ��縸 ���� ���� �ٸ� ������ �ִ�
		//����. ���� ���ϸ� ��������. 
		//�ٱ��� �ִ� int c�� int main() �Ҽ�
		//�ȿ� �ִ� int c�� for�� ������ �����.
		for(/*int */c = 0; end[c] != NULL; c++)
		{
			start[c] = end[c];
		}
		start[c] = NULL;//���κ��� NULL�� �����ؾ� ��
	}
	return 0;
}