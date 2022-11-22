using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace HelloMyCSharp07_03
{
    public class Dog : Animal
    {
        public override void eat()
        {
            System.Windows.Forms.MessageBox.Show("개같이 먹는다.");
        }
    }
}
