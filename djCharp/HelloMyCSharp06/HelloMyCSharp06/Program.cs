using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace HelloMyCSharp06
{
    internal class Program
    {
        static int getArea(int w, int h)
        {
            return w * h;
        }
        static int example = 0;
        int ex = 0;
        //static이 있는 메소드 안에는 static이 붙은 메소드나
        //static이 붙은 변수만 들어감
        //이유 : static 붙은 게 메모리에 더 빨리 올라감
        static void Main(string[] args)
        {
            Console.WriteLine(example+ "---");
            Rect rt = new Rect();
            Console.WriteLine("---");
            rt.w = 5; //5가 value
            rt.h = 2;
            Console.WriteLine( rt.getArea());

            //getArea가 없었다면 여기서 따로 넓이를 구해야 함
            //식이 복잡해지면 main이 커진다. 그러면 코드가 보기 힘들어 짐
            Console.WriteLine("넓이 : " + (rt.w*rt.h));

            Console.WriteLine("넓이 : " + getArea(rt.w,rt.h));

            Console.WriteLine("!!!!---!!!!!!!");
            Cuboid cb = new Cuboid();
            Console.WriteLine("!!!!---!!!!!!!");
            cb.w = 10;
            cb.h = 10;
            cb.z = 2;
            Console.WriteLine(cb.getArea());
            Console.WriteLine(cb.getVolume());

            Circle c = new Circle(10);
            //Circle c222 = new Circle(); //기본 생성자 없음
            Sphere s = new Sphere(10);
            Console.WriteLine(c.getArea());
            Console.WriteLine(c.getRound());

            Console.WriteLine(s.getArea());
            Console.WriteLine(s.getRound());
            Console.WriteLine(s.getVolume());


            Console.WriteLine("사각형의 w?");
            int w = int.Parse(Console.ReadLine());
            Console.WriteLine("사각형의 h?");
            int h = int.Parse(Console.ReadLine());
            Console.WriteLine("사각형의 z?");
            int z = int.Parse(Console.ReadLine());
            Console.WriteLine("원의 반지름 r?");
            int r = int.Parse(Console.ReadLine());


            Rect rt2 = new Rect();
            rt2.w = w;
            rt2.h = h;
            Console.WriteLine(rt2.getArea());
            Cuboid cb2 = new Cuboid();
            cb2.w = w;
            cb2.h = h;
            cb2.z = z;
            Console.WriteLine(cb2.getArea());
            Console.WriteLine(cb2.getVolume());


            Circle c2 = new Circle(r);
            Console.WriteLine(c2.getArea());
            Console.WriteLine(c2.getRound());
            Sphere s2 = new Sphere(r);
            Console.WriteLine(s2.getArea());
            Console.WriteLine(s2.getRound());
            Console.WriteLine(s2.getVolume());


        }
    }
}
