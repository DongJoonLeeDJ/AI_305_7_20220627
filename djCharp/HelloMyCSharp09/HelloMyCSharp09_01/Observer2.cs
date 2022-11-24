using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace HelloMyCSharp09_01
{
    public class Observer2 : IObserver
    {
        public void update(string value)
        {
            System.Windows.Forms.MessageBox.Show(value);
        }
    }
}
