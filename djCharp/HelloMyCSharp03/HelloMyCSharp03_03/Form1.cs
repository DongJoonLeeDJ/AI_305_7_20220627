using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace HelloMyCSharp03_03
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        private void button2_Click(object sender, EventArgs e)
        {
            Dispose(); //창 종료하는 것
        }

        private void button1_Click(object sender, EventArgs e)
        {
            string id = textBox1.Text;
            string pw = textBox2.Text;
            if(id=="admin" && pw=="1234")
                MessageBox.Show("관리자");
            if(id.Equals("admin") && pw.Equals("1234"))
                MessageBox.Show("관리자라니까");
        }

        private void label5_Click(object sender, EventArgs e)
        {
            Hide(); //현재 창 감춤
            //Form2를 만듦과 동시에 띄운다.
            //만들 때 2개의 string 값도 같이 보냄
            new Form2(textBox1.Text, textBox2.Text).ShowDialog();//코드멈춤
            Show(); //현재 창 보여줌
        }
    }
}
