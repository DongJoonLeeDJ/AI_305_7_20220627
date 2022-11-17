using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace HelloMyCSharp03_04
{
    public partial class Form1 : Form
    {
        public Form1()  //생성자, 처음에 시작되었을 때
        {
            InitializeComponent();
            panel_side.Height = button3.Height; //첫번째 버튼의 높이로 바꿈
            panel_side.Top = button3.Top; //첫번째 버튼의 Y값으로 바꿈
            //FirstControl로 만든 유저컨트롤을 맨 앞으로 보냄
            firstControl1.BringToFront(); //맨 앞으로 보냄.
        }

        private void button2_Click(object sender, EventArgs e)
        {
            Dispose();
        }

        private void button3_Click(object sender, EventArgs e)
        {
            panel_side.Height = button3.Height; //첫번째 버튼의 높이로 바꿈
            panel_side.Top = button3.Top; //첫번째 버튼의 Y값으로 바꿈
            //FirstControl로 만든 유저컨트롤을 맨 앞으로 보냄
            firstControl1.BringToFront(); //맨 앞으로 보냄.
        }

        private void button4_Click(object sender, EventArgs e)
        {
            panel_side.Height = button4.Height; //첫번째 버튼의 높이로 바꿈
            panel_side.Top = button4.Top; //첫번째 버튼의 Y값으로 바꿈
            //FirstControl로 만든 유저컨트롤을 맨 앞으로 보냄
            mySecondControl1.BringToFront(); //맨 앞으로 보냄.
        }

        private void myClickEvent(object sender, EventArgs e)
        {
            //object : 모든 객체의 조상
            //이 sender가 이벤트를 발생시킨 주체

            //EventArgs : 이벤트에 연관된 내용이 저장된 객체

            //object 타입의 sender를 Button으로 형변환한 것

            //as : 형변환
            //Button btn = (Button)(sender);
            Button btn = (sender as Button);
            panel_side.Height = btn.Height;
            panel_side.Top = btn.Top;

        }
    }
}
