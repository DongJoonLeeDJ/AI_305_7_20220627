#pragma once
//��������
//������ �̸�, ������ ����, ���� ���� �ڵ�
//�ǻ߶�� ���� 2���� �̻��� �� ������
//���� ���� �ڵ�(=�й� ���� ��)�� ������ �� 
struct MyStruct
{
	char name[100]; //�ǻ� ��
	char species[100]; //��, ����� ��...
	char code[100];
	//�����ڵ�
	//�й� ���� ��
	//���ڷ� �ص� ������
	//���� �ڵ尡 00007 �̷��Ŷ��
	//���ڿ��� �����ؾ� ��
	//���� intŸ���ε� 00007 ������
	//00007�� �ƴ� 7 Ȥ�� ������ ���� ��

}typedef Animal;
//���� ����� ���� ��
struct Food
{
	int price;
	char name[100];
}typedef Food;
struct StudentScore
{
	int kor;
	int eng;
	int math;
}typedef StudentScore;
struct KBStudent
{
	int cScore;
	int javaScore;
	char name[100];
}typedef KBStudent;