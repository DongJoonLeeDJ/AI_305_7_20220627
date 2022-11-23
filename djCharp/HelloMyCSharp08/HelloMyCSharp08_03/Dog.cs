using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace HelloMyCSharp08_03
{
    //ICharming 를 상속(=추가)했다는 것은
    //ICharming에 있는 메소드들을 반드시 구현해야 함을 의미함
    //여기에 규칙을 여러 개 추가할 수 있다.
    //클래스는 하나만 추가 가능하나, 인터페이스는 계속 추가 가능
    public class Dog : ICharming
    {
        public string name { get; set; }
        public int age {get;set;}
        public void actCute()
        {
            System.Windows.Forms.MessageBox.Show("주인을 핥는다.");
        }

        public void smile()
        {
            System.Windows.Forms.MessageBox.Show("헤헤헤헤");
        }

        public void welCome()
        {
            System.Windows.Forms.MessageBox.Show("꼬리를 흔든다.");
        }
    }
}
