using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace HelloMyCSharp06_04
{
    public class MyMath
    {
        //제곱
        public  int power(int x)
        {
            return x * x;
        }
        //두 숫자 곱
        public  int multi(int x, int y)
        {
            return x * y;
        }
        //거듭 제곱
        //위에 적혀 있는 power랑 이름이 똑같음
        //매개변수의 개수가 달라서 다른 메소드로 취급
        //이렇게 매개변수(=파라메터)의 개수나
        //타입이 다르면 다른 메소드로 취급함 = 오버로딩

        //이건 이미 메모리에 올라가있음
        public static int count = 0;
        public static void hello()
        {
            Console.WriteLine(  "Hello");
        }
        
        //인스턴스 만들 때 메모리에 올라감
        //그러니 이 시점엔 count가 이미 있다.
        public  int power(int x, int c)
        {
            count++;
            hello();


            //Math.Pow는 double타입
            //return (int)Math.Pow(x, c);
            int result = 1;
            for (int i = 0; i < c; i++)
                result *= x;
            return result;
        }
    }
}
