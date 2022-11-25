using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace HelloMyCSharp10_02
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
            label1.Text = "";
        }

        void printA()
        {
            for (int i = 0; i < 100; i++)
                Console.Write('A');
        }
        void printB()
        {
            for (int i = 0; i < 100; i++)
                Console.Write('B');
        }
        void printC()
        {
            for (int i = 0; i < 100; i++)
                Console.Write('C');
        }
        //순차적으로 동작
        private void button1_Click(object sender, EventArgs e)
        {
            printA();
            printB();
            printC();
        }
        //동시에 동작하게 할 것(쓰레드 활용)
        private void button2_Click(object sender, EventArgs e)
        {
            //여러 가지 일을 '동시에' 처리함(=시분할)
            //시간을 적절히 분배해서 실행함
            Thread a = new Thread(printA);
            a.Start();
            new Thread(printB).Start();
            new Thread(printC).Start();
            new Thread(delegate ()
            {
                for (int i = 0; i < 100; i++)
                    Console.Write('D');
            }).Start();
            new Thread(() => {
                for (int i = 0; i < 100; i++)
                    Console.Write('E');
            });
        }

        public delegate void SetLabelDelegate(Label l, string n);

        public void SetLabelText(Label l, string n)
        {
            //https://jeongkyun-it.tistory.com/90
            //Invoke 정리
            //> 컨트롤(=컴포넌트, 버튼이나 라벨 등)의 본인 스레드가 아닌 다른 스레드를 이용하여 해당 컨트롤 객체를 동기식으로 실행하는 방법이다.
            if (l.InvokeRequired)
            {
                SetLabelDelegate d = new SetLabelDelegate(SetLabelText);
                
                //Invoke = 동기방식
                //BeginInvoke = 비동기방식
                this.Invoke(d, new object[] { l, n });
                //this.BeginInvoke(d, new object[] { l, n });
            }
            else
            {
                for(int i = 0; i < 200; i++)
                {
                    l.Text += n;
                   // Thread.Sleep(100);
                }
            }
        }
        public void SetLabelText2(Label l, string n)
        {
            if (l.InvokeRequired)
            {
                SetLabelDelegate d = new SetLabelDelegate(SetLabelText2);
                //this.Invoke(d, new object[] { l, n });
                this.BeginInvoke(d, new object[] { l, n });
            }
            else
            {
                for (int i = 0; i < 200; i++)
                    l.Text += n;
            }
        }

        private void button3_Click(object sender, EventArgs e)
        {
            
            new Thread(() => SetLabelText(label1, "A")).Start();
            new Thread(() => SetLabelText(label1, "B")).Start();
            new Thread(() => SetLabelText(label1, "C")).Start();
            new Thread(() => SetLabelText(label1, "D")).Start();
            new Thread(() => SetLabelText(label1, "E")).Start();
        }

        private void button4_Click(object sender, EventArgs e)
        {
            label1.Text += Environment.NewLine;
        }

        private void button5_Click(object sender, EventArgs e)
        {

            new Thread(() => SetLabelText2(label1, "A")).Start();
            new Thread(() => SetLabelText2(label1, "B")).Start();
            new Thread(() => SetLabelText2(label1, "C")).Start();
            new Thread(() => SetLabelText2(label1, "D")).Start();
            new Thread(() => SetLabelText2(label1, "E")).Start();
        }
    }
}
