using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace HelloMyCSharp01_06
{
    internal class Program
    {
        static void Main(string[] args)
        {
            //반복문
            //대표적인 것 3가지
            //for
            //보통... 시작점과 끝점을 정해놓고 반복을 함.
            for(int i =0; i<5; i++)
            {
                Console.WriteLine("안녕하세요 " + i +"번님");
            }

            //while
            //무한루프 돌다가 특정 조건 도달시 종료됨
            while(true)
            {
                Console.WriteLine("숫자 입력");
                int num = int.Parse(Console.ReadLine());
                if(num<0)
                {
                    Console.WriteLine("음수이므로 종료");
                    break; //반복문 종료
                }

            }

            //do-while


            //비공식적인 것 하나 : goto문을 이용한 것
            //웬만하면 안 쓰는 게 좋으나 쓰는 사람도 있다.(참고만 해라)
        }
    }
}
