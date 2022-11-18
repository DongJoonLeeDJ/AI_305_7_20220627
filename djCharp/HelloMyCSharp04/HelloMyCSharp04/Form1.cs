using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace HelloMyCSharp04
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            int a = 5;
            int b = 10;
            int c = 0;
            c = a + b;
            c = c - a;

            string hello = "안녕";
            Console.WriteLine(hello.Contains("안"));//True

            Console.WriteLine("안녕하세요");
        }

        private void button2_Click(object sender, EventArgs e)
        {
            for (char i = '가'; i <= '힣'; i++)
            {
                Console.Write(i);
            }
            Console.WriteLine();
            Label label = new Label();
            label.AutoSize = true; //글자가 많으면 그에 맞게 늘어남
            label.Location = new Point(0, 400);
            //좌표는 일부로 밑에 배치함.(버튼들 때문에)

            //for (char i = '가'; i <= '힣'; i++)
            //{
            //    label.Text += i;
            //    if (i % 150 == 0)
            //        label.Text += "\n";
            //}
            Console.WriteLine(  (int)'가'); //44032
            Console.WriteLine(  (int)'힣'); //55203

            for (char i = '가'; i <= '힣'; i++)
            {
                label.Text += i;
                if (i % 100 == 0)
                    label.Text += "\n";
            }
            Controls.Add(label);
        }
    }
}
