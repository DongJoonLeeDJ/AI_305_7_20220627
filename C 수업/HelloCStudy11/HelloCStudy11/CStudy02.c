#include<stdio.h>
//변수의 종류
//전역변수(글로벌 변수)
//지역변수(중괄호 안에 있는 변수, 매개변수)
//정적변수
//참고로 정적변수도 지역변수가 있고 전역변수가 있다.
//전역변수는 함수 바깥에 선언한다.
int g=0;
static int s1 = 0; //static 키워드가 붙음(정적 변수)

void upNum(int a, int b)//a,b 매개변수
{						//매개변수 = 지역변수
						//즉 함수 끝나면 사라짐
	static int s2 = 0;  //그럼 static이 붙은 건 어떨까?
	a++;
	b++;
	s2++;
	g++;
	printf("%d %d %d %d\n", a, b, g, s2);
}
int main()
{
	//지역변수는 함수나 중괄호 안에 선언함
	int num=10;
	if (num > 0)
	{
		int n = 100;          //변수 n은 num이 양수여야만 존재함
		upNum(num, n);
		upNum(num, n);
		upNum(num, n);
		printf("n=%d, num=%d\n", n, num);
	}
	g++;                      //전역변수는 함수 어디에서든지 쓸 수 있다.
	printf("g=%d\n", g);
	//upNum(num, n); //변수 n은 if문 안에서만 됨
	//printf("n=%d, num=%d\n", n, num);
	return 0;
}