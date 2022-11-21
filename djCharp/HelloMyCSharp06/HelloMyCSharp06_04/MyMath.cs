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
        public  int power(int x, int c)
        {
            //Math.Pow는 double타입
            //return (int)Math.Pow(x, c);
            int result = 1;
            for (int i = 0; i < c; i++)
                result *= x;
            return result;
        }
    }
}
