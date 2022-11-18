using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace HelloMyCSharp05
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            //char자체는 바로 숫자로 대응되기 때문에 가능함
            for (char i = '가'; i <= '힣'; i++)
            {
                Console.Write(i);
            }
            Label label = new Label();
            label.AutoSize = true;
            //Point는 C#에서 만든 구조체
            //주로 위치를 나타날 때 쓰임
            label.Location = new Point(0, 100);//X:0, Y:100
            for (char i = '가'; i <= '힣'; i++)
            {
                label.Text += i;
                if (i % 100 == 0)
                    label.Text += Environment.NewLine;//\n이랑 같음
                //Environment.NewLine 환경에 맞게 한 줄 띄는 것
            }
            label.Name = "mylabel"; //디자인창에서의 변수이름
            Controls.Add(label);
        }

        private void button2_Click(object sender, EventArgs e)
        {
            foreach (var item in Controls)
            {
                //is = 타입 체크
                //var 자체는 타입이 없는 데,
                //대입되는 값에 따라서 타입 정해짐
                //Controls 안에 있는 버튼, Label등이 다 item인데
                //그 중에서 Label 타입인 것을 만나면 이 조건문으로
                //들어옴
                if(item is Label)
                {
                    Label temp = item as Label;
                    if(temp.Name=="mylabel")
                    {
                        Controls.Remove(temp);
                        break;
                    }
                }
            }
        }
    }
}
