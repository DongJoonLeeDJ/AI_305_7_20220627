using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace HelloMyCSharp09
{
    public class MyBase
    {
        public string name { get; set; }
        public virtual void print(string msg)
        {
            Console.WriteLine(msg);
        }
        //정적 멤버(static)은 virtual 못 쓴다.
        //public static virtual void printer()
        //{

        //}
    }
}
