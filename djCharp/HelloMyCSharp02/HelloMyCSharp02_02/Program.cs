using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace HelloMyCSharp02_02
{
    internal class Program
    {
        static void Main(string[] args)
        {
            //구조체로 만듦
            //b1과 b2는 동명이인. 따라서 잔액다름
            BKBank b1 = new BKBank();
            b1.Name = "박재형";
            b1.Balance = 10000000;
            BKBank b2 = b1; //b1의 Name, Balance를 복사
            b2.Balance = 0; //b2의 Balance값만 바꿈
            //두 명의 박재형이 서로 잔액이 다르다.
            b1.info();
            b2.info();
            
            KBBank kb1 = new KBBank();
            kb1.Name = "박지호";
            kb1.Balance = 50000000;
            KBBank kb2 = kb1;
            kb2.Balance = 0;
            //둘 다 0이다... 내 5천만원.... 아....
            kb1.info();
            kb2.info();

            //이 문제를 해결하려면 어떻게 해야할까?


        }
    }
}
