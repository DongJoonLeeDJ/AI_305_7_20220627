using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace HelloMyCSharp02_03_GUI
{
    public partial class Form1 : Form
    {
        public Form1()
        {
           InitializeComponent();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            //mbox 누르고 tab 키 두 번 누르기
            MessageBox.Show("안녕하세요.");
        }

        private void button2_Click(object sender, EventArgs e)
        {
            string info = "내 이름은 " + textBox1.Text + "입니다.";
            MessageBox.Show(info);

        }
    }
}
