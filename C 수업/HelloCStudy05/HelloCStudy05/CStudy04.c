#include<stdio.h>
int main()
{
	//1번
	//변수 a,b 그리고 c의 값을 입력받아서
	//a부터 b까지의 합을 구하되 c 배수 부분 제외

	int a, b, c;
	printf("a b c 입력");
	scanf_s("%d %d %d", &a, &b, &c);

	int sum = 0;
	for (int i = a; i <= b; i++)
	{
		if (i % c == 0)
			continue;
		sum += i;
	}
	printf("sum=%d\n", sum);
	

	//설탕 덩어리를 3kg 주머니랑
	//5kg 주머니로 담는 데,
	//되도록이면 주머니 숫자를 줄여서 담아오고
	//싶다.
	//근데 4kg같은 건 3kg주머니와 5kg 주머니로
	//담아오는 게 불가능하니 -1 출력

	//5kg주머니로 나눠지는 지 먼저 체크
	//그걸로 나눠지면 그 주머니개수대로 출력하고 끝
	//ex)15kg -> 3 출력

	//만약에 나눠지지 않으면 3kg 주머니 1개에 
	//담는다.
	// 그 다음에 다시 5kg으로 나눠지는 지 체크함
	//ex)18kg -> 3kg 1개, 5kg 3개

	//7kg이면...
	//3kg으로 3번 나누면 -2가 나온다.
	//그러면 -1 출력하고 끝내면 됨...

	int inputSugar;
	printf("설탕 몇 kg?");
	scanf_s("%d", &inputSugar);
	int pack = 0; //주머니 수
	while (1)
	{
		if (inputSugar % 5 == 0)
		{
			pack += inputSugar / 5;
			printf("%d묶음\n", pack);
			break;
		}
		inputSugar -= 3;
		pack++; //3kg 주머니 하나 증가
		if (inputSugar < 0)
		{
			printf("-1\n");
			break;
		}

	}

	return 0;
}