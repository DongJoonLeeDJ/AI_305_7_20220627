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
    public partial class Form1 : Form, ISubject
    {
        List<IObserver> observers = new List<IObserver>();
        public Form1()
        {
            InitializeComponent();

            //this = Form1을 의미
            //Form1이 들어갈 수 있는 이유는 ISubject를 구현해서 그렇다.
            Form2 frm2 = new Form2(this);//observers에 Form2 들어감
            frm2.TopLevel = false;
            frm2.FormBorderStyle = FormBorderStyle.None;
            panel1.Controls.Add(frm2);
            frm2.Show();

            Form3 frm3 = new Form3(this);
            frm3.TopLevel = false;
            frm3.FormBorderStyle = FormBorderStyle.None;
            panel2.Controls.Add(frm3);
            frm3.Show();

            Form4 frm4 = new Form4(this,frm2,frm3);
            frm4.TopLevel = false;
            frm4.FormBorderStyle = FormBorderStyle.None;
            panel3.Controls.Add(frm4);
            frm4.Show();


        }


        public void notify(string msg)
        {
            foreach (IObserver o in observers)
                o.update(msg);
        }

        public void register(IObserver o)
        {
            observers.Add(o);
        }

        public void unregister(IObserver o)
        {
            observers.Remove(o);
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

        private void textBox1_TextChanged(object sender, EventArgs e)
        {
            //notify(textBox1.Text);
            notify((sender as TextBox).Text);
        }
    }
}
