using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace HelloMyCSharp01_08
{
    internal class Program
    {
        static void Main(string[] args)
        {
            Console.WriteLine("1번");
            //1. 1부터 10까지 순차적으로 출력
            //    - for, while로 해보기
            for (int i = 1; i <= 10; i++)
                Console.Write(i + " ");
            int count = 1;
            //\n : 줄바꿈 코드
            //Environment.NewLine : 줄바꿈
            //환경에 따라서 다른 줄바꿈 코드 제공
            //리눅스냐 윈도우냐 따라서 다르다.
            Console.WriteLine(Environment.NewLine+"while문 버전 \n");
            while (count <= 10)
            {
                Console.Write(count + " ");
                count++;
            }
            //2.a부터 b까지 순차적으로 출력
            //- for, while로 해보기
            Console.WriteLine("\n2번");// 줄 띄어쓰기
            Console.WriteLine("a?");
            int a = int.Parse(Console.ReadLine());
            Console.WriteLine("b?");
            int b = int.Parse(Console.ReadLine());

            //5번 문제
            //두 숫자 값 바꾸기
            if(a>b)
            {
                int temp = a;
                a = b; 
                b = temp;
            }


            for (int i = a; i <= b; i++)
                Console.Write(i + " ");
            count = a;
            Console.WriteLine("\nwhile문 버전 \n");
            while (count <= b)
            {
                Console.Write(count + " ");
                count++;
            }
            Console.WriteLine("\n3번");
            for(int i = 1; i<=100; i++)
            {
                if(i%2==0)
                    Console.Write(i + " ");
            }
            Console.WriteLine("\nwhile문 버전 \n");
            count = 1;
            while (count <= 100)
            {
                if(count%2==0)
                    Console.Write(count + " ");
                count++;
            }
            Console.WriteLine("\na부터 b까지 출력하되 역순 for");
            for(int i = b; i>=a; i--)
                Console.Write(i + " ");

            Console.WriteLine("\na부터 b까지 출력하되 역순 while");
            count = b;
            while (count >= a)
            {
                Console.Write(count + " ");
                count--;
            }
        }
    }
}
