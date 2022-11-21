using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace HelloMyCSharp06_04
{
    public class MyMath3
    {
        //static 이 붙은 것
        //클래스 변수, 클래스 메소드
        //클래스 변수와 마찬가지로 공통된 기능
        //클래스명.메소드명() 호출함
        //인스턴스 만들지 않아도 바로 쓸 수 있음
        //C#의 Math클래스의 Pow 함수도 클래스 메소드이다.






        //power(10) => 100
        //power(10,3) => 1000
        //뒷부분에 있는 매개변수(=파라메터)는 
        //생략이 가능하다.
        //제곱
        //int c=2 => 선택적 매개 변수
        public static int power(int x, int c=2)
        {
            int result = 1;
            for(int i = 0; i<c; i++)
                result *= x;
            return result;
        }
        


        //두 숫자 곱
        public static int multi(int x, int y)
        {
            return x * y;
        }
    }
}
