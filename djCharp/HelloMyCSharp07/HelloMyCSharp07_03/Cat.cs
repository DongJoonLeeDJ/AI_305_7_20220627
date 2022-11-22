using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace HelloMyCSharp07_03
{
    public class Cat : Animal
    {
        //Animal은 추상클래스이고 eat은 추상메소드라서
        //자식 클래스에서 반드시 구현을 해야 함
        public override void eat()
        {
            System.Windows.Forms.MessageBox.Show
                ($"{name}고양이는 {age}살 답게 잘 먹는다. 야오옹");
            //구현하지 않았을 때 발생하는 오류
            //throw new NotImplementedException();
        }
    }
}
