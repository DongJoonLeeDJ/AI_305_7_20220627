using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace HelloMyCSharp01_05
{
    internal class Program
    {
        static void Main(string[] args)
        {
            //조건문
            //3항연산자, if문, switch문
            //전부 java랑 똑같다.

            int a = 10;
            //삼항연산자
            //a가 2로 나눴을 때 나머지가 0이면 짝을 result 대입
            //그렇지 않으면 홀을 result에 대입
            string result = a % 2 == 0 ? "짝" : "홀";//result="짝"
            Console.WriteLine(result);
            a = 5;
            result = a % 2 == 0 ? "짝" : "홀"; //result="홀"
            Console.WriteLine(result);

            //if문
            if(a==0)
            {
                Console.WriteLine("0입니다.");
            } 
            else if(a%2==0)
            {
                Console.WriteLine("짝수");
            }
            else
            {
                Console.WriteLine("홀수");
            }

            //switch
            switch (a) //a 값에 따라서 결과가 달라진다.
            {
                case 0:
                    Console.WriteLine("a는 0이다.");
                    break;
                case 1: //3개의 경우가 하나의 결과를 출력
                case 2:
                case 3:
                    Console.WriteLine("a는 1~3이다.");
                    break; //여기서 break없으면 에러남(c,java에선 에러없음)
                default:
                    Console.WriteLine("a는 " + a +"값이다.");
                    break;
            }

        }
    }
}
