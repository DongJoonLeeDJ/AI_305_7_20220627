using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace HelloMyCSharp06
{
    //생성자는... 조상클래스꺼를 무조건 먼저 호출함
    public class Cuboid : Rect
    {
        //Rect의 w,h가 포함되어 있다.
        public int z { get; set; }
        //Rect의 getArea()가 포함되어 있다.
        public int getVolume()
        {
            return w * h * z;
        }
        public Cuboid()
        {
            Console.WriteLine("Cuboid 생성자 호출");
        }
    }
}
