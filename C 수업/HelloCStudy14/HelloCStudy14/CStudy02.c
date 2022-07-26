#include<stdio.h>
void noSwap(int a, int b)//main 값 변화 못 시킴
{						//매개변수로 "값"을 복사해오므로
	int temp = a;       //원본이랑 전혀 관계 없음
	a = b;
	b = temp;
}
void Swap(int* a, int* b)//main 값 변화 시킬 수 있다
{					  //매개변수로 "위치"를 가져오므로
	int temp = *a;    //*을 이용해 해당 위치에 접근해 값 바꿈
	*a = *b;
	*b = temp;
}
int main()
{
	int a = 3;
	int b = 5;

	noSwap(a, b);
	printf("a=%d, b=%d\n", a, b);//a=3, b=5
	Swap(&a, &b);
	printf("a=%d, b=%d\n", a, b);//a=5, b=3(값 바뀜)
	int* pa = &a;
	int* pb = &b;
	Swap(pa, pb); //매개변수로 주소값이 들어가면 됨
	printf("a=%d, b=%d\n", a, b);//a=3, b=5(값이 다시 원래대로 됨


	return 0;
}