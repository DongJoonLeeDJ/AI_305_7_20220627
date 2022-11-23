using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace HelloMyCSharp08_03
{
    //여러 개를 상속한 인터페이스 하나를 구현해도 된다.
    //기능별로 세부적으로 나눠야 한다.
    //하나의 인터페이스에 다 뭉치는 게 무조건 정답은 아니다.
    public class Android : IMyRobot
    {
        public void actCute()
        {
            System.Windows.Forms.MessageBox.Show("애교");
        }

        public void attackTarget()
        {
            System.Windows.Forms.MessageBox.Show("공격");
        }

        public void killTarget()
        {
            System.Windows.Forms.MessageBox.Show("살상");
        }

        public void printMessage(string message)
        {
            System.Windows.Forms.MessageBox.Show(message);
        }

        public void protectMaster(string name)
        {
            System.Windows.Forms.MessageBox.Show(name+"을 지킨다.");
        }

        public void smile()
        {
            System.Windows.Forms.MessageBox.Show("미소");
        }

        public void welCome()
        {
            System.Windows.Forms.MessageBox.Show("환영");
        }
    }
}
