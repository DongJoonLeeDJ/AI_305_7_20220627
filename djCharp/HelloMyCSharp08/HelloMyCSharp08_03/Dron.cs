using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace HelloMyCSharp08_03
{
    public class Dron : IFight
    {
        public void attackTarget()
        {
            System.Windows.Forms.MessageBox.Show("뿅뿅뿅");
        }

        public void killTarget()
        {
            System.Windows.Forms.MessageBox.Show("Lock On!");
        }

        public void protectMaster(string name)
        {
            System.Windows.Forms.MessageBox.Show(name+"님 ㅈㅅ" +
                "난 지키는 기능 없음 ㅇㅇ");
        }
    }
}
