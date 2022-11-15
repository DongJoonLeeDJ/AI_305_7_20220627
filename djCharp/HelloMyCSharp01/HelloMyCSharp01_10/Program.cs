using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace HelloMyCSharp01_10
{
    internal class Program
    {
        static void Main(string[] args)
        {
            /*
             1. 5개의 숫자를 입력받아서
                그 중에 최댓값과 최솟값을 출력하기
                - for문이랑 foreach문으로 해보기

             */
            int[] numbers = new int[5];
            for (int i = 0; i < numbers.Length; i++)
            {
                Console.WriteLine("숫자 입력");
                numbers[i] = int.Parse(Console.ReadLine());
            }

            int max = numbers[0];
            int min = numbers[0];

            //max = int.MinValue; //int타입의 가장 작은 수
            //min = int.MaxValue; //int타입의 가장 큰 수

            for (int i = 1; i < numbers.Length; i++)
            {
                if (max < numbers[i])
                    max = numbers[i];
                if (min > numbers[i])
                    min = numbers[i];
            }
            Console.WriteLine($"max:{max}, min:{min}");
            max = numbers[0];
            min = numbers[0];
            foreach (var item in numbers)
            {
                if (max < item)
                    max = item;
                if (min > item)
                    min = item;
            }
            Console.WriteLine($"max:{max}, min:{min}");

            /*
             
            2. 저 중에서 최댓값과 최솟값이
            몇 번째인지 구해보기
            - for문이랑 foreach문으로 해보기

            1번 문제 풀 때 풀 수 있으나 분리하였음
             */

            max = numbers[0];
            min = numbers[0];
            int maxIdx = 0;
            int minIdx = 0;
            for (int i = 1; i < numbers.Length; i++)
            {
                if (max < numbers[i])
                {
                    max = numbers[i];
                    maxIdx = i;
                }
                if (min > numbers[i])
                {
                    min = numbers[i];
                    minIdx = i;
                }
            }
            Console.WriteLine($"최대는 [{maxIdx}]");
            Console.WriteLine($"최소는 [{minIdx}]");
            max = numbers[0];
            min = numbers[0]; 
            maxIdx = 0;
            minIdx = 0;
            int idx = 0;
            foreach (var item in numbers)
            {
                if (max < item)
                {
                    max = item;
                    maxIdx = idx;

                }
                if (min > item)
                {
                    min = item;
                    minIdx = idx;
                }
                idx++;
            }
            Console.WriteLine($"최대는 [{maxIdx}]");
            Console.WriteLine($"최소는 [{minIdx}]");

            int[] newNumbers = new int[10];
            for (int i = 0; i < newNumbers.Length; i++)
            {
                Console.WriteLine("숫자 입력");
                newNumbers[i] = int.Parse(Console.ReadLine());
            }

            for(int i = 0; i<newNumbers.Length; i++)
            {
                if (newNumbers[i] % 2 == 0) //짝수는 그냥 넘어간다.
                    continue;

                newNumbers[i] = 0; //그 외엔 0으로 바꾼다.
            }

            foreach (var item in newNumbers)
            {
                if(item!=0)
                    Console.WriteLine(item);
            }
        }
    }
}
