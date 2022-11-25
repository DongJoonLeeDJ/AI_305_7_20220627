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
    }
}
