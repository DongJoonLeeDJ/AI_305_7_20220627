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
            //1. 일일히 복사 -> new 키워드로 인스턴스를 만듦
            //2. ICloneable 인터페이스 구현->비권장
            //3. 생성자를 이용한 복사
            //4. 별도의 메소드를 만드는 방법

            kb1.Balance = 50000000;
            kb1.Name = "박지호";

            //kb1과 k3는 동명이인이나 
            //서로 잔액이 다르다. 
            KBBank k3 = new KBBank();
            k3.Name = kb1.Name;
            k3.Balance = 0;

            kb1.info(); //박지호, 50000000
            k3.info(); //박지호, 0

            //조영탁이라는 이름만 복사한 계좌가 생기고
            //kbb1과 kbb2는 서로 잔액이 다르다.
            KyungBookBank kbb1 = new KyungBookBank("조영탁");
            kbb1.Balance = 5000;
            KyungBookBank kbb2 = new KyungBookBank(kbb1.Name);
            kbb2.Balance = 0;

            kbb1.info(); //조영탁, 5000원
            kbb2.info(); //조영탁, 0원

            kbb1.Saving(10000);
            kbb1.info();//만원 저축했으니 15000원이 나옴

            kbb2.Withdrawal(5000);
            kbb2.info(); //마이너스 통장


        }
    }
}
