using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace HelloMyCSharp08
{
    public class PersonHakbeon<T>
    {
        public T value { get; set; }
        public int number { get; set; }
        public string name { get; set; }
    }
}
