#include<stdio.h>
#define 가위 0 //매크로 상수
#define 바위 1

//열거형
//사전평가에서 나온 거
//숫자들에게 이름을 붙이는 것   
enum 십이지신
{
	//원숭이,닭,개,돼지,쥐,소,호랑이,토끼,용,뱀,말,양
	쥐=4,소,호랑이,토끼,용,뱀,말,양,원숭이=0,닭,개,돼지
};
int main()
{
	const int 보 = 2;//상수


	if (0)
	{

		//1번
		int month;
		printf("몇월에 태어났니?");
		scanf_s("%d", &month);
		//if문
		if (month == 12 || month == 1 || month == 2)
			printf("겨울\n");
		else if (month >= 3 && month <= 5)
			printf("봄\n");
		else if (month >= 6 && month <= 8)
			printf("여름\n");
		else if (month >= 9 && month <= 11)
			printf("가을\n");
		else
			printf("어느별에서 왔니?\n");

		switch (month)
		{
		case 12:
		case 1:
		case 2:
			printf("겨울\n");
			break;
		case 3: case 4: case 5:  //이것도 되기는 한다.
			printf("봄\n");
			break;
		case 6:
		case 7:
		case 8:
			printf("여름\n");
			break;
		case 9:
		case 10:
		case 11:
			printf("가을\n");
			break;
		default:
			printf("브라운아이드걸스 - My Style\n");
			break;
		}

	}
	//ctrl + a : 전체 선택
	//ctrl + k,f : 정렬
	// ctrl + k,c : 주석
	// ctrl + k,u : 주석 해제
	// 
	// 
	if (0)
	{


		//2번 문제 숫자가위바위보
		printf("가위 바위 보? (플레이어1)");
		int p1, p2;
		scanf_s("%d", &p1);
		printf("가위 바위 보?(플레이어2)");
		scanf_s("%d", &p2);
		p1 %= 3;//3으로 나눈 나머지값으로 가위바위보
		p2 %= 3;
		switch (p1)
		{
		case 0://가위
			printf("p1: 가위\n");
			switch (p2)
			{
			case 0:
				printf("p2: 가위\n");
				printf("비김\n");
				break;
			case 1:
				printf("p2: 바위\n");
				printf("짐\n");
				break;
			case 2:
				printf("p2: 보\n");
				printf("이김\n");
				break;
			default:
				break;
			}
			break;
		case 1://바위
			printf("p1: 바위\n");
			switch (p2)
			{
			case 0:
				printf("p2: 가위\n");
				printf("이김\n");
				break;
			case 1:
				printf("p2: 바위\n");
				printf("비김\n");
				break;
			case 2:
				printf("p2: 보\n");
				printf("짐\n");
				break;
			default:
				break;
			}
			break;
		case 2://보
			printf("p1: 보\n");
			switch (p2)
			{
			case 0:
				printf("p2: 가위\n");
				printf("짐\n");
				break;
			case 1:
				printf("p2: 바위\n");
				printf("이김\n");
				break;
			case 2:
				printf("p2: 보\n");
				printf("비김\n");
				break;
			default:
				break;
			}
			break;

		default: //예외상황은 고려 안 함
			break;
		}
		if (p1 == 가위)
		{
			printf("가위!\n");
			if (p2 == 가위)
			{
				printf("p2 가위!\n");
				printf("비김\n");
			}
			else if (p2 == 바위)
			{
				printf("p2 바위\n");
				printf("짐\n");
			}
			else if (p2 == 보)
			{
				printf("p2 보\n");
				printf("이김\n");
			}

		}
		else if (p1 == 바위)
		{
			printf("바위!\n");
			if (p2 == 가위)
			{
				printf("p2 가위!\n");
				printf("이김\n");
			}
			else if (p2 == 바위)
			{
				printf("p2 바위\n");
				printf("비김\n");
			}
			else if (p2 == 보)
			{
				printf("p2 보\n");
				printf("짐\n");
			}
		}
		else if (p1 == 보)
		{
			printf("보!\n");
			if (p2 == 가위)
			{
				printf("p2 가위!\n");
				printf("짐\n");
			}
			else if (p2 == 바위)
			{
				printf("p2 바위\n");
				printf("이김\n");
			}
			else if (p2 == 보)
			{
				printf("p2 보\n");
				printf("비김\n");
			}
		}
	}
	//3번
	//경우의 수가 12개

	printf("몇년생?");
	int year;
	scanf_s("%d", &year);
	switch (year % 12)
	{
		case 0:
			printf("원숭이\n");
			break;
		case 1:
			printf("닭\n");
			break;
		case 2:
			printf("개\n");
			break;
		case 3:
			printf("돼지\n");
			break;
		case 4:
			printf("쥐\n");
			break;
		case 5:
			printf("소\n");
			break;
		case 6:
			printf("호랑이\n");
			break;
		case 7:
			printf("토끼\n");
			break;
		case 8:
			printf("용\n");
			break;
		case 9:
			printf("뱀\n");
			break;
		case 10:
			printf("말\n");
			break;
		case 11:
			printf("양\n");
			break;
		default:
			break;
	}

	int myThee = year % 12;
	
	enum 십이지신 temp = 원숭이;
	printf("%d\n", temp);
	
	if (myThee == 원숭이)
		printf("원숭이\n");
	else if (myThee == 닭)
		printf("닭\n");
	else if (myThee == 개)
		printf("개\n");
	else if (myThee == 돼지)
		printf("돼지\n");
	else if (myThee == 쥐)
		printf("쥐\n");
	else if (myThee == 소)
		printf("소\n");
	else if (myThee == 호랑이)
		printf("호랑이\n");
	else if (myThee == 토끼)
		printf("토끼\n");
	else if (myThee == 용)
		printf("용\n");
	else if (myThee == 뱀)
		printf("뱀\n");
	else if (myThee == 말)
		printf("말\n");
	else if (myThee == 양)
		printf("양\n");

	return 0;
}