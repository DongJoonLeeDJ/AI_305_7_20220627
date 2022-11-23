using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace HelloMyCSharp08_03
{
    public class ZergDron : ICharming
    {
        public void actCute()
        {
            System.Windows.Forms.MessageBox.Show("미네랄을 캔다");
        }

        public void smile()
        {
            System.Windows.Forms.MessageBox.Show("에그로 변신");

        }

        public void welCome()
        {
            System.Windows.Forms.MessageBox.Show("해처리 변신");

        }
    }
}
