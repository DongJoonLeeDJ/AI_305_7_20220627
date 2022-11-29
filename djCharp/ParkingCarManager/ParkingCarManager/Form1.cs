using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace ParkingCarManager
{
    //뷰 같은 곳
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
            //프로그램 시작하자마자 현재 시간을 표시함
            label1.Text = DateTime.Now.ToString
                ($"yyyy년 MM월 dd일 HH시 mm분 ss초");
        }

        private void button1_Click(object sender, EventArgs e)
        {
            WriteLog("주차");
        }

        private void button2_Click(object sender, EventArgs e)
        {
            WriteLog("출차");
        }

        private void button3_Click(object sender, EventArgs e)
        {

        }

        private void button4_Click(object sender, EventArgs e)
        {

        }

        private void button5_Click(object sender, EventArgs e)
        {

        }

        private void button6_Click(object sender, EventArgs e)
        {

        }


        private void WriteLog(string contents)
        {
            string log
                = $"[{DateTime.Now.ToString("yyyy/MM/dd hh:mm:ss")}]" +
                $"{contents}";
            DataManager.printLog(log); //파일에 적기
            listBox1.Items.Insert(0, log); //화면에 적기

        }

        private void timer1_Tick(object sender, EventArgs e)
        {
            label1.Text = DateTime.Now.ToString
                ($"yyyy년 MM월 dd일 HH시 mm분 ss초");
        }
    }
}
