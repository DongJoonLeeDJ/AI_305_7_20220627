using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace HelloMyCSharp08_03
{
    public class RobotPet : ICharming, IFight
    {
        public string codeNum { get; set; }
        public void actCute()
        {
            System.Windows.Forms.MessageBox.Show("휴먼 사랑해용");
        }

        public void attackTarget()
        {
            System.Windows.Forms.MessageBox.Show("뚝배기~");

        }

        public void killTarget()
        {
            System.Windows.Forms.MessageBox.Show("탕!");

        }

        public void protectMaster(string name)
        {
            System.Windows.Forms.MessageBox.Show(name+"휴먼을 지킨다.");
        }

        public void smile()
        {            
            System.Windows.Forms.MessageBox.Show("^^");   
        }

        public void welCome()
        {
            System.Windows.Forms.MessageBox.Show("하이루 휴먼");
        }
    }
}
