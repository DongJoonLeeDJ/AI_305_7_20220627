using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace HelloMyCSharp08
{
    public class MyHakbeon
    {
        public string name { get; set; }
        public int number { get; set; }

        public MyHakbeon(string name, int number)
        {
            this.name = name;
            this.number = number;
        }
    }
}
