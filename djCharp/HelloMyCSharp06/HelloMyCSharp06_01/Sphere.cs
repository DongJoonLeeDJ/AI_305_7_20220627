using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace HelloMyCSharp06_01
{
    public class Sphere : Circle
    {
        public Sphere(int r) : base(r)
        {
        }
        public double getVolume()
        {
            return (4.0 / 3) * PI * r * r * r;
        }
    }
}
