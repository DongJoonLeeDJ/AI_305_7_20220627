using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace HelloMyCSharp08_02
{
    public class Cogmo : LoLCharacter
    {
        public override void Qkey()
        {
            System.Windows.Forms.MessageBox.Show("Q 퉤퉤퉤");
        }
        public override void Wkey()
        {
            System.Windows.Forms.MessageBox.Show("W 우웩퉤");
        }
        public override void Ekey()
        {
            System.Windows.Forms.MessageBox.Show("E 뿌지직");
        }

        public override void Rkey()
        {
            System.Windows.Forms.MessageBox.Show("궁극기 퉤퉤웨에엑퉤 뿌지직");
        }

        public override void sayHello()
        {
            System.Windows.Forms.MessageBox.Show("그모그모 코그모~");
        }

        public new void Attack()
        {
            System.Windows.Forms.MessageBox.Show("빠세이");
        }
    }
}
