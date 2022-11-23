using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace HelloMyCSharp08
{
    //제너릭(T) : 어떤 타입이 올지 모르겠다고 하는 것
    public class Student<T>
    {
        public string name { get; set; }
        public int age { get; set; }
        public T hakbeon { get; set; }
        public dynamic hakbeon2 { get; set; }
        public Student()
        {

        }

        public Student(string name, int age, T hakbeon)
        {
            this.name = name;
            this.age = age;
            this.hakbeon = hakbeon;
        }
    }
}
