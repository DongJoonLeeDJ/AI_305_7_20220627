using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace HellMyCSharp01
{
    internal class Program
    {
        static void Main(string[] args)
        {
            //sysout = cw
            //cw 누르고 tab키를 두 번 눌러보기
            Console.WriteLine("안녕");
            //자바의 System.out.println("안녕"); 이랑 동일

            int num1 = 10;
            double num2 = 3.14;
            //c#에서는 문자열 변수 저장시 s를 주로 소문자로 함
            //둘의 의미는 같음
            string m1 = "Hello";
            String m2 = "이것도 됨";
            char lastName = '이'; //1글자 저장
            bool tf = true; //자바에선 boolean
            Boolean tf2 = false; //Boolean과 bool 둘 다 됨


            char c1 = "안녕하세요"[0]; //첫글자 가져옴
            //java : "안녕하세요".charAt(0);
            
            string s1 = "Hello";
            char c2 = s1[1]; //알파벳 e를 가져옴

            Console.WriteLine(c1);
            Console.WriteLine(s1);
            Console.WriteLine(c2);

            Console.WriteLine(10+20); //30
            Console.WriteLine("안녕"+"하세요");//안녕하세요
            Console.WriteLine("10"+20); //1020
            Console.WriteLine('1'+20); //69 '1'=49

            //연산자는 자바랑 마찬가지로
            //+ - / * % 이렇게 있다
            //더하기 빼기 나누기 곱하기 나머지

            //문자열 처리
            //1. 더하기를 통해서 변수랑 문자열 더함
            int age = 34;
            string info = "내 나이 : " + age;//문자열+변수
            Console.WriteLine(info);
            //2. string.foramt
            string info2 = string.Format("내 나이 : {0}",age);
            Console.WriteLine(info2);
            //3. $ 표시
            string info3 = $"내 나이 : {age}";
            Console.WriteLine(info3);
        }
    }
}
