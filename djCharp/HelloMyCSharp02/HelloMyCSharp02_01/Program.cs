using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace HelloMyCSharp02_01
{
    internal class Program
    {
        static void Main(string[] args)
        {
            int a = 10;
            string b = "안녕";
            char c = 'A';
            double d = 3.14;
            bool e = false;

            //1개의 변수인 데, 여러 개의 값을 갖게 하고 싶다면?
            //ex) 학생
            //이름값 = "오세룡"
            //나이 = 20
            //성별 = 남
            //시력 = 0.01
            //학점 = 'A'
            //결혼여부 = false
            //MBTI = "ISTJ"

            int 나이_오세룡 = 20;
            string 이름_오세룡 = "오세룡";
            char 학점_오세룡 = 'A';
            bool 결혼_오세룡 = false;
            string MBTI_오세룡 = "ISTJ";
            string 성별_오세룡 = "남";
            double 시력_오세룡 = 0.01;

            int 나이_조영탁 = 20;
            string 이름_조영탁 = "오세룡";
            char 학점_조영탁 = 'A';
            bool 결혼_조영탁 = false;
            string MBTI_조영탁 = "ISTJ";
            string 성별_조영탁 = "남";
            double 시력_조영탁 = 0.01;

            //하나의 변수로 여러 개의 값을
            //저장할 수 있는 자료형
            //=> 사용자 정의 자료형
            //int등과 같이 해당 언어에서 만든 자료형이
            //아니고, 프로그래머가 직접 만들었기 때문.
            //C -> 구조체(struct)
            //Java -> class
            //c++,C# -> struct, class

            //c 언어에서는 사용자 정의 자료형이라고 함
            //C++ C#, Java에서는 객체라는 말을 쓴다.
            //사용자 정의 객체 혹은 그냥 객체라고 함

            Student s1 = new Student();
            s1.Name = "오세룡";
            s1.Age = 20;
            s1.eye = 0.01;
            Student[] students = new Student[2];
            students[0] = s1;
            students[1] = new Student();
            students[1].Name = "박지호";
            students[1].Age = 25;
            students[1].eye = 0.1;

            Console.WriteLine(s1.Name);
            Console.WriteLine(students[1].Name);

        }
    }
}
