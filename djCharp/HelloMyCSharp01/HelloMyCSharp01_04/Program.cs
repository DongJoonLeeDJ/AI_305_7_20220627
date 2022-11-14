using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace HelloMyCSharp01_04
{
    internal class Program
    {
        static void Main(string[] args)
        {
            Console.ReadLine();
            //1.
            Console.WriteLine("나이는?");
            int age = int.Parse(Console.ReadLine());
            Console.WriteLine("내 이름은?");
            string name = Console.ReadLine();
            Console.WriteLine("MBTI는?");
            string mbti = Console.ReadLine();
            Console.WriteLine("혈액형은?");
            string bType = Console.ReadLine();

            Console.WriteLine($"내 나이는 {age}살, " +
                $"내 이름은 {name}, mbti는 {mbti}, 그리고 혈액형은 {bType}입니다.");

            //2. 내가 태어난 연도 입력
            Console.WriteLine("언제 태어났니?");
            int birth = int.Parse(Console.ReadLine());
            Console.WriteLine(DateTime.Now.Year-birth+1);

            //3. 원의 반지름 입력 후 그에 맞는 원의 넓이와 둘레값 출력
            Console.WriteLine("원의 반지름은?");
            int r = int.Parse(Console.ReadLine());
            const double PI = 3.1415; //상수
            Console.WriteLine($"원의 둘레 {2*r*PI}");
            Console.WriteLine($"원의 넓이 {r*r*PI}");

            //4. 시력 문제
            Console.WriteLine("시력이?");
            double eye = double.Parse(Console.ReadLine());
            Console.WriteLine("내 시력은 " + eye+"입니다.");

            Console.WriteLine("키가 얼만가요");
            
            
            
            double kg = double.Parse(Console.ReadLine());
            
            
            Console.WriteLine("내      몸무게는 " + kg +"입니다.");




        }
    }
}
