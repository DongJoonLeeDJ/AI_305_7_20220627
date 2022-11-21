using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace HelloMyCSharp06_01
{
    public class Circle
    {
        public int r { get; set; }
        //r값은 인스턴스 별로 다르지만
        //PI는 모두 똑같기 때문이다.
        protected static double PI = 3.14;
        //public Circle()
        //{
        //}
        public Circle(int r)
        {
            this.r = r;
        }

         public double getArea()
        {
            return r * r * PI;
        }
        public double getRound()
        {
            return 2 * r * PI;
        }
    }
}
