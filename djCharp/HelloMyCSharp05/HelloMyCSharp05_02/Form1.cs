using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace HelloMyCSharp05_02
{
    public partial class Form1 : Form
    {
        //Form1 클래스의 멤버 변수
        public List<string> list = new List<string>();
        public Form1()
        {
            InitializeComponent();
            //초기 화면 세팅
            //label4라는 글자 대신 ""을 넣고
            //버튼 8개에 랜덤한 값을 넣어줄 것
            ListText.Text = ""; //프로그램시작하면
            //디자인창에 있는 label4라는 글자 대신 ""을 넣는다.
            Random rand = new Random();
            button1.Text = rand.Next(100).ToString();//string
            button2.Text = rand.Next(100) + "";//string
            button3.Text = ""+rand.Next(100);
            button4.Text = rand.Next(100).ToString();
            button5.Text = button1.Text;
            button6.Text = button2.Text;
            button7.Text = button3.Text;
            button8.Text = button4.Text;
        }
        //button1~button4까지는 ListText에 글자를 추가할 것
        private void button1_Click(object sender, EventArgs e)
        {
            list.Add(button1.Text);
            ListText.Text = ""; //label에 있는 텍스트를 리셋해줌
            foreach (var item in list)
            {
                ListText.Text += item + " ";
            }
        }

        private void button2_Click(object sender, EventArgs e)
        {
            //list.Add(button2.Text);
            list.Add( (sender as Button).Text );
            ListText.Text = ""; //label에 있는 텍스트를 리셋해줌
            foreach (var item in list)
            {
                ListText.Text += item + " ";
            }
        }

        private void button3_Click(object sender, EventArgs e)
        {
            //list.Add(button2.Text);
            list.Add((sender as Button).Text);
            ListText.Text = ""; //label에 있는 텍스트를 리셋해줌
            foreach (var item in list)
            {
                ListText.Text += item + " ";
            }
        }

        private void button4_Click(object sender, EventArgs e)
        {
            //list.Add(button2.Text);
            list.Add((sender as Button).Text);
            ListText.Text = ""; //label에 있는 텍스트를 리셋해줌
            foreach (var item in list)
            {
                ListText.Text += item + " ";
            }
        }

        //글자를 지우는 거
        private void button5_Click(object sender, EventArgs e)
        {
            //list.Add(button2.Text);
            list.Remove((sender as Button).Text);
            ListText.Text = ""; //label에 있는 텍스트를 리셋해줌
            foreach (var item in list)
            {
                ListText.Text += item + " ";
            }
        }

        private void button6_Click(object sender, EventArgs e)
        {
            //list.Add(button2.Text);
            list.Remove((sender as Button).Text);
            ListText.Text = ""; //label에 있는 텍스트를 리셋해줌
            foreach (var item in list)
            {
                ListText.Text += item + " ";
            }
        }

        private void button7_Click(object sender, EventArgs e)
        {
            //list.Add(button2.Text);
            list.Remove((sender as Button).Text);
            ListText.Text = ""; //label에 있는 텍스트를 리셋해줌
            foreach (var item in list)
            {
                ListText.Text += item + " ";
            }
        }

        private void button8_Click(object sender, EventArgs e)
        {
            //list.Add(button2.Text);
            list.Remove((sender as Button).Text);
            ListText.Text = ""; //label에 있는 텍스트를 리셋해줌
            foreach (var item in list)
            {
                ListText.Text += item + " ";
            }
        }
    }
}
