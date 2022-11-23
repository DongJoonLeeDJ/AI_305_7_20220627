using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace HelloMyCSharp08_01
{
    public class Class1
    {
        public int age { get; set; }
        public int this[int i]
        {
            get { return i*i; }
            set { age = i*value;  Console.WriteLine(  i + "" + value ); }
        }
    }
}
