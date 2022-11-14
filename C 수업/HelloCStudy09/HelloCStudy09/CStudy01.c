#include<stdio.h>
int main()
{
	//start : 최초의 숫자이자, 말하기용 숫자
	char start[2048] = "1";
	//읽고 말하기 수열의 20번째 값을 찾는 것
	//숫자로 생각하면 안 되고 문자로써 생각해야 함
	for (int i = 1; i <= 20; i++)
	{
		printf("%d번째 : %s\n", i, start);
		char end[2048] = { NULL };//읽고 말함에 있어서 누적용
		char num = start[0]; //num : 읽는 숫자
		int count = 0; //내가 읽은 문자의 개수
		int k = 0;//end에 문자 채워넣을 때 씀(누적시킬 때)
		//본격적으로 읽어들이기 시작
		for (int j = 0; start[j] != NULL; j++)
		{
			if (num != start[j]) //읽는 숫자가 변할 때 
			{
				end[k] = num;
				k++;
				end[k] = count + '0';
				k++;
				num = start[j];
				count = 1;
			}
			else //같을 때 
			{
				count++;
			}
		}
		end[k] = num;
		k++;
		end[k] = count + '0';
		//k++;
		//end에 있는 걸 start로 옮김
		//for문으로 옮겨도 되는 데... strcpy라는 함수써도 됨
		//strcpy(start, end); //end에 있는 걸 start로 옮김
		int c = 0;
		//이 안에 있는 int c랑 바깥 int c는 변수 모양만 같고 전혀 다른 영역에 있는
		//변수. 쉽게 말하면 동명이인. 
		//바깥에 있는 int c는 int main() 소속
		//안에 있는 int c는 for문 끝나면 사라짐.
		for(/*int */c = 0; end[c] != NULL; c++)
		{
			start[c] = end[c];
		}
		start[c] = NULL;//끝부분을 NULL로 봉합해야 함
	}
	return 0;
}