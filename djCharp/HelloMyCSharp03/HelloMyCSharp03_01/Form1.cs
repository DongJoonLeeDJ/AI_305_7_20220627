using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace HelloMyCSharp03_01
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            Dispose();
        }

        private void button_login_Click(object sender, EventArgs e)
        {
            if(textBox1.Text == "admin" && textBox2.Text=="1234")
                MessageBox.Show("관리자님 환영합니다.");
        }

        private void label5_Click(object sender, EventArgs e)
        {
            Hide();
            new Form2(textBox1.Text, textBox2.Text).ShowDialog();
            Show();
        }

        private void button2_Click(object sender, EventArgs e)
        {
            System.Diagnostics.Process.Start("https://ko-kr.facebook.com/");
        }
    }
}
