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
            //ShowDialog랑, Show다른 것
            //ShowDialog = 모달(Modal) => 뒤에 창 조작 불가능, 코드가 여기서 멈춤
            //Show = 모달리스(Modeless) => 뒤에 창 조작 가능, 코드가 멈추지 않음
            new Form2(textBox1.Text, textBox2.Text).ShowDialog();
            Show();
        }

        private void button2_Click(object sender, EventArgs e)
        {
            System.Diagnostics.Process.Start("https://ko-kr.facebook.com/");
        }
    }
}
