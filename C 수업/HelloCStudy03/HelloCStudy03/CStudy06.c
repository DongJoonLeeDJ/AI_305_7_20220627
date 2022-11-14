#include<stdio.h>
int main()
{
	//switch case 문 - java, c#, js 다 똑같음

	//if-else if-else if-else if.... else
	//이렇게 경우의 수가 너~~~무 많을 때
	//그거를 좀 더 깔끔하게 표현하기 위해서
	//만들어진 것
	
	//단... 사용에 제약이 많습니다.
	//음수나 무한대를 표현할 수 없다.
	//실수와 실수 사이에 범위를 정의할 수 없다.
	//3.1~3.2 사이도 숫자가 무한개가 있는 데
	//switch case는 경우의 수들을 
	//내가 직접 다 나열해야 하는 것이므로...
	//실수 범위 설정에서 사용이 불가능함.

	//가위 바위 보(=경우의 수 3개)
	//숫자 0 - 가위
	//숫자 1 - 바위
	//숫자 2 - 보

	int rcp = 0;//가위

	if (rcp == 0)
		printf("가위");
	else if (rcp == 1)
		printf("바위");
	else if (rcp == 2)
		printf("보");
	else
		printf("기타");

	int rcp2 = 1;//바위

	//숫자 가위바위보
	//rcp = 300%3;
	//rcp2 = 100%3;
	switch (rcp)
	{
	case 0:
		printf("\n가위");
		switch (rcp2)
		{
		case 0:
			printf("\n비김\n");
			break;
		case 1:
			printf("\n이김\n");
			break;
		case 2:
			printf("\n짐\n");
			break;
		default:
			break;
		}
		break; //break 만나면 밑에건 체크하지 않고 switch문 종료
	case 1:
		printf("\n바위");
		break;
	case 2:
		printf("\n보");
		break;
	default:
		printf("\n기타");
		break;
	}

	//break;를 만나면 swtich문을 끝냄
	//break를 만나지 않으면 switch문이 안 끝나고 다음 경우의 수를
	//계속 띄운다.

	int dice = 5;

	//2,4,6 - 짝수눈
	//1,3,5 - 홀수눈
	dice = 2;
	switch (dice)
	{
	case 1:
	case 3:
	case 5:
		printf("홀수눈!!!"); //1,3,5일 경우엔 똑같은 거 출력
		break;
	case 2:
	case 4:
	case 6:
		printf("짝수눈!!");
	default:
		printf("2,4,6중 하나 입력시 이 부분도 같이 출력함");
		break;
	}


	return 0;
}