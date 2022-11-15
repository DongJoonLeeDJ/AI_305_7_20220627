using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace HelloMyCSharp02_02
{
    public class KBBank/*:ICloneable*/
    {
        public string Name { get; set; }//고객명
        public int Balance { get; set; }//잔액

        //public object Clone()
        //{
        //    return this.MemberwiseClone();
        //}

        public void info()
        {
            Console.WriteLine("이름 : " + Name);
            Console.WriteLine("잔액 " + Balance);
        }
    }
}
