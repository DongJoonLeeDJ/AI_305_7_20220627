using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace HelloMyCSharp01_02
{
    internal class Program
    {
        static void Main(string[] args)
        {
            Console.WriteLine("안녕 난 " + 34 +"살이야");

            Console.WriteLine("안녕, 내 이름은 이동준이고, 남자이며, 30대야");

            int age = 30;
            string name = "이동준";
            Console.WriteLine("안녕, 내 이름은 "+ name+ "이고, 남자이며, "+ age+"대야");
            Console.WriteLine(string.Format("안녕, 내 이름은 {0}이고, 남자이며, {1}대야",name,age));
            Console.WriteLine($"안녕, 내 이름은{name}이고, 남자이며, {age}대야");
        }
    }
}
