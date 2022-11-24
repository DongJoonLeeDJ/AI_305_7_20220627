using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace HelloMyCSharp09_01
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            //다형성에 의해서 둘 다 된다.
            //Notifier n = new Notifier();
            ISubject s = new Notifier();
            s.register(new Observer1() { name = "스타1" });
            s.register(new Observer2());
            //Observer1 o1 = new Observer1();
            IObserver o1 = new Observer1();
            //Observer1 o1 = new Observer1() 이렇게 만들었다면
            //형변환 안 해도 된다.
            (o1 as Observer1).name = "허영무의 옵저버";
            s.register(o1);
            s.notify("스타크래프트"); //옵저버 3마리가 update를 한다.
            s.unregister(o1); //허영무의 옵저버가 빠진 상태에서
            s.notify(",스2,"); //2마리의 옵저버만 update를 호출함

        }
    }
}
