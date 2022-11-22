using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace HelloMyCSharp07_01
{
    public class MyChild : MyParent
    {
        public MyChild()
        {
            money--;
        }

        public void study()
        {
            Console.WriteLine(  "LOL 공부 ");
        }
        public void playgame()
        {
            Console.WriteLine(  "LOL ");
        }

        public  void buyBitCoin(int m)
        {
            money += m;
        }


    }
}
