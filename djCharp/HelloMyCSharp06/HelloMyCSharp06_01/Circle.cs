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
        protected double PI = 3.14;
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
