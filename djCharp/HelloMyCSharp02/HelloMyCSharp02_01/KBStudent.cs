using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace HelloMyCSharp02_01
{
    public struct KBStudent
    {
        public string Name;
        public double Eye;
        public int Age;
        public string MBTI;

        //변수 선언할 때 마다 각 변수의 속성에 따라서
        //값을 다르게 출력한다.
        public void introduce()
        {
            Console.WriteLine("이름 :" + Name);
            Console.WriteLine("시력 :" + Eye);
            Console.WriteLine("나이 : " + Age);
            Console.WriteLine("MBTI : " + this.MBTI);
        }
    }
}
