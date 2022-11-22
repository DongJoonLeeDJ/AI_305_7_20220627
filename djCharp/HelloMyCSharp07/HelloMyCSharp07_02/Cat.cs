using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace HelloMyCSharp07_02
{
    public class Cat
    {
        public string name { get; set; }
        public int age { get; set; }

        public void sleep()
        {
            System.Windows.Forms.MessageBox.Show
                ($"{name} : {age}살 답게 잠을 잘 잔다.");
        }

        //하이딩
        public void eat()
        {
            System.Windows.Forms.MessageBox.Show
                ($"{name} : {age}살 답게 잘 먹는다..");
        }
        //오버라이딩
        public virtual void fight()
        {
            System.Windows.Forms.MessageBox.Show
                ($"{name} : {age}살 답게 잘 싸운다.");
        }


    }
}
