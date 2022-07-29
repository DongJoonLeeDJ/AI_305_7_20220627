#include<stdio.h>
#include"Mystructs.h"

//매크로 상수를 사용
//const 이용한 상수도 괜찮음
#define C 'C'
#define JAVA 'J'
#define TOTAL 'T'

//subject에 따라서 c 혹은 java의 총합을 구함
int sumTotal(KBStudent stu[], int size, char subject)
{
	int cSum = 0;
	int javaSum = 0;
	for (int i = 0; i < 5; i++)
	{
		if (subject == C)
			cSum += stu[i].cScore;
		else if (subject == JAVA)
			javaSum += stu[i].javaScore;
		else
		{
			printf("잘못된 과목명입니다.\n");
			return -1;
		}
	}
	if (subject == C)
		return cSum;
	else
		return javaSum;
}
//평균구하는 함수
double avgTotal(KBStudent stu[], int size, char subject)
{
	if (subject == C)
	{
		return sumTotal(stu, size, C) / (double)size;
	}
	else if (subject == JAVA)
	{
		return sumTotal(stu, size, JAVA) / (double)size;
	}
	else
	{
		printf("잘못된 문자\n");
		return -1;
	}
}
char* whoNo1(KBStudent stu[], int size, char subject)
{
	int maxC = 0;
	int maxJava = 0;
	double avg_max = 0;
	int index_max = 0; //1등 인덱스(평균)
	int index_max_C = 0; //1등 인덱스(C)
	int index_max_Java = 0; //1등 인덱스(Java)
	maxC = stu[0].cScore;
	maxJava = stu[0].javaScore;
	avg_max = (stu[0].cScore + stu[0].javaScore) / 2.0;
	for (int i = 0; i < 5; i++)
	{
		if (subject == C)
		{
			if (maxC < stu[i].cScore)
			{
				maxC = stu[i].cScore;
				index_max_C = i;
			}

		}
		else if (subject == JAVA)
		{

			if (maxJava < stu[i].javaScore)
			{
				maxJava = stu[i].javaScore;
				index_max_Java = i;
			}
		}
		else if (subject == TOTAL)
		{

			if (avg_max < (stu[i].cScore + stu[i].javaScore) / 2.0)
			{
				avg_max = (stu[i].cScore + stu[i].javaScore) / 2.0;
				index_max = i;
			}
		}
		else
		{
			printf("잘못된 문자열\n");
			return NULL;
		}
	}

	if (subject == C)
	{
		return stu[index_max_C].name;
	}
	else if (subject == JAVA)
	{
		return stu[index_max_Java].name;
	}
	else 
	{
		return stu[index_max].name;
	}
}
int main()
{
	KBStudent students[5]
			= { {.cScore=100,.javaScore=11,"이동준"},
					{.cScore = 71,.javaScore = 15,"김진규"},
					{.cScore = 93,.javaScore = 30,"조영탁"},
					{.cScore = 85,.javaScore = 100,"이유나"},
					{.cScore = 90,.javaScore = 96,"오세룡"} };

	printf("c의 총합 %d\n", sumTotal(students, 5, C));
	printf("java의 총합 %d\n", sumTotal(students, 5, JAVA));
	printf("c의 평균 %f\n", avgTotal(students, 5, C));
	printf("java의 평균 %f\n", avgTotal(students, 5, JAVA));

	printf("c 1등 %s \n",whoNo1(students,5,C));
	printf("java 1등 %s \n", whoNo1(students, 5, JAVA));
	printf("평균 1등 %s \n", whoNo1(students, 5, TOTAL));


	return 0;
}