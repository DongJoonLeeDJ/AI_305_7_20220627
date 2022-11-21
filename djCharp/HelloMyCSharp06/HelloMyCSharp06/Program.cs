using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace HelloMyCSharp06
{
    internal class Program
    {
        static void Main(string[] args)
        {

            Rect rt = new Rect();
            rt.w = 5;
            rt.h = 2;
            Console.WriteLine( rt.getArea());

            Cuboid cb = new Cuboid();
            cb.w = 10;
            cb.h = 10;
            cb.z = 2;
            Console.WriteLine(cb.getArea());
            Console.WriteLine(cb.getVolume());

            Circle c = new Circle(10);
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
