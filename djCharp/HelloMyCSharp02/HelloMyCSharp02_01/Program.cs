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
            Console.WriteLine();

            //1. Student 이용해서 학생 1명을 만든다.
            //Name, Age, eye 값도 추가한다.
            Student stu1 = new Student();
            stu1.Name = "이동준";
            stu1.Age = 34;
            stu1.eye = 0.4;
            Console.WriteLine($"{stu1.Name}학생은" +
                $"{stu1.Age}살이고, 시력은 {stu1.eye}이다.");
            // 2.Student 이용해서 학생 1명을 만들고
            // 이 번엔 Console.ReadLine으로 값 받기
            Student stu2 = new Student();
            Console.WriteLine("이름은?");
            stu2.Name = Console.ReadLine();
            Console.WriteLine("나이는?");
            stu2.Age = int.Parse(Console.ReadLine());
            Console.WriteLine("시력은?");
            stu2.eye = double.Parse(Console.ReadLine());
            Console.WriteLine($"{stu2.Name}학생은 " +
                $"{stu2.Age}살이고, 시력은 {stu2.eye}입니다.");

            Student[] stus = new Student[3];
            stus[0] = new Student();
            stus[0].Name = "조영탁";
            stus[0].Age = 30;
            stus[0].eye = 1.2;
            stus[1] = new Student();
            stus[1].Name = "이범식";
            stus[1].Age = 35;
            stus[1].eye = 1.6;
            stus[2] = new Student();
            stus[2].Name = "박재형";
            stus[2].Age = 25;
            stus[2].eye = 0.6;

            for(int i = 0; i<stus.Length; i++)
            {
                Console.WriteLine($"{stus[i].Name}학생은" +
                    $" {stus[i].Age}살이고, 시력은 {stus[i].eye}이다.");
            }

            Student[] stus2 = new Student[3];
            for(int i = 0; i<stus2.Length; i++)
            {
                stus2[i] = new Student();
                Console.WriteLine("이름?");
                stus2[i].Name = Console.ReadLine();
                Console.WriteLine("나이?");
                stus2[i].Age = int.Parse(Console.ReadLine());
                Console.WriteLine("시력?");
                stus2[i].eye = double.Parse(Console.ReadLine());

                Console.WriteLine("이름 :" + stus2[i].Name);
                Console.WriteLine("나이 :" + stus2[i].Age);
                Console.WriteLine("시력 :" + stus2[i].eye.ToString("0.0"));
            }


            Console.WriteLine("KB 학생 만들기!");
            KBStudent kb1 = new KBStudent();
            kb1.Name = "장혜정";
            kb1.Age = 20;
            kb1.Eye = 1.5;
            kb1.MBTI = "ISFP";

            Console.WriteLine("이름 : " + kb1.Name);
            Console.WriteLine("나이 : " + kb1.Age);
            Console.WriteLine("시력 : " + kb1.Eye);
            Console.WriteLine("mbti : " + kb1.MBTI);

            KBStudent kb2 = new KBStudent();
            kb2.Name = "김성환";
            kb2.Age = 20;
            kb2.Eye = 1.7;
            kb2.MBTI = "ENFP";
            kb2.introduce(); //kb2의 모든 정보를 다 출력함

        }
    }
}
