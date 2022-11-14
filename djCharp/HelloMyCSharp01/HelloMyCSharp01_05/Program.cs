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

            //단일 조건문
            if(a<0) //수행할 코드가 1줄이면 중괄호 생략 가능
                Console.WriteLine("a는 음수에요");


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

            //---------------------------

            Console.WriteLine("1");
            Console.WriteLine("숫자 입력받기");
            int num1 = int.Parse(Console.ReadLine());

            string result1 = num1 == 0 ? "0" : (num1>0 ? "양" : "음");
            Console.WriteLine(result1);

            if(num1==0)
            {
                Console.WriteLine("0");
            }
            else
            {
                if(num1>0)
                {
                    Console.WriteLine("양");
                }
                else
                {
                    Console.WriteLine("음");
                }
            }

            if (num1 == 0)
            {
                Console.WriteLine("0");
            }
            else if (num1 < 0)
            {
                Console.WriteLine("음");
            }
            else
            {
                Console.WriteLine("양");
            }

            Console.WriteLine("숫자 입력");
            int dice = int.Parse(Console.ReadLine());

            switch(dice) 
            {
                case 1:
                    Console.WriteLine("일");
                    break;
                case 2:
                    Console.WriteLine("이");
                    break;
                case 3:
                    Console.WriteLine("삼");
                    break;
                case 4:
                    Console.WriteLine("사");
                    break;
                case 5:
                    Console.WriteLine("오");
                    break;
                case 6:
                    Console.WriteLine("육");
                    break;
                default:
                    Console.WriteLine(dice);
                    break;
            }

            int comDice = new Random().Next(6) + 1;
            /*
             comDice = new Random().Next(1,7);

             Random random = new Random();
             comDice = random.Next(6)+1;

             Random random = new Random();
             comDice = random.Next(1,7);
             */
            switch (comDice)
            {
                case 1:
                    Console.WriteLine("일");
                    break;
                case 2:
                    Console.WriteLine("이");
                    break;
                case 3:
                    Console.WriteLine("삼");
                    break;
                case 4:
                    Console.WriteLine("사");
                    break;
                case 5:
                    Console.WriteLine("오");
                    break;
                case 6:
                    Console.WriteLine("육");
                    break;
                default:
                    Console.WriteLine(comDice);
                    break;
            }

            switch (dice)
            {
                case 1:
                case 3:
                case 5:
                    Console.WriteLine("홀수");
                    break;
                case 2:
                case 4:
                case 6:
                    Console.WriteLine("짝수");
                    break;
                default:
                    Console.WriteLine(dice);
                    break;
            }

            Console.WriteLine("나이?");
            int age = int.Parse(Console.ReadLine());
            if(age < 0)
            {
                Console.WriteLine("무효");
            }
            else if(age<20)
            {
                Console.WriteLine("미성년자");
            }
            else if(age>=20 && age<150) //else if(age<150)
            {
                Console.WriteLine("성인");
            }
            else
            {
                Console.WriteLine("불가사의한 존재");
            }

            if (age < 0)
            {
                Console.WriteLine("무효");
            }
            if (age>=0 && age < 20)
            {
                Console.WriteLine("미성년자");
            }
            if (age >= 20 && age < 150)
            {
                Console.WriteLine("성인");
            }
            if(age>=150)
            {
                Console.WriteLine("불가사의한 존재");
            }

            if (age < 0)
            {
                Console.WriteLine("무효");
            }
            else
            {
                if (age >= 0 && age < 20)
                {
                    Console.WriteLine("미성년자");
                }
                else if (age >= 20 && age < 150)
                {
                    Console.WriteLine("성인");
                }
                else
                {
                    Console.WriteLine("불가사의한 존재");
                }
            }


        }
    }
}
