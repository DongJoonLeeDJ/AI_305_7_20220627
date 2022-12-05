using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace PracticeThreadWork
{
    public partial class Form1 : Form
    {
        List<Button> buttonList = new List<Button>();
        List<Timer> timers = new List<Timer>();
       //List<User> userList;
        public Form1()
        {
            InitializeComponent();

            //버튼의 개수만큼 타이머를 추가함

            //각 타이머에 tick 이벤트 추가

            //User 클래스 안에 Button도 담는 게 낫겠다. 하나의 List가 Button도 컨트롤 하는 것이다.

            //모두 while 루프를 돈다. 0 값이 되면 그냥 멈춘다.

            //대신 그 버튼에 타이밍 값은 userList에서 긁어온다.

            foreach(var item in Controls)
            {
                Button button = item as Button;
                if(button != null)
                {
                    button.Text = button.Text.Replace("button", "");
                }
            }





            buttonList.Add(button1);
            buttonList.Add(button2);
            buttonList.Add(button3);
            buttonList.Add(button4);
            buttonList.Add(button5);
            buttonList.Add(button6);
            buttonList.Add(button7);
            buttonList.Add(button8);
            buttonList.Add(button9);
            buttonList.Add(button10);
            buttonList.Add(button11);
            buttonList.Add(button12);
            buttonList.Add(button13);
            buttonList.Add(button14);
            buttonList.Add(button15);
            buttonList.Add(button16);
            buttonList.Add(button17);
            buttonList.Add(button18);
            buttonList.Add(button19);
            buttonList.Add(button20);

            for (int i = 0; i < 20; i++)
                DataManager.users.Add(new User(buttonList[i]) { timer = new Timer() });

            for(int i = 0; i < 20; i++)
            {
                Button b = DataManager.users[i].btn;
                User u = DataManager.users[i];
                u.time = b.Text;
                //int mytimer = int.Parse(DataManager.users[i].time);
                u.timer.Interval = 1000;
                u.timer.Tick += (s, e) =>
                {
                    int tempTime = int.Parse(u.time);
                    if (tempTime > 0)
                    {
                        tempTime--;
                        u.time = tempTime.ToString();
                        b.Text = u.time;
                    }
                    //b.Text = mytimer.ToString();
                    //mytimer--;
                    //Console.WriteLine( "i="+i);
                    //DataManager.users[i].time = mytimer.ToString();
                };
                u.timer.Enabled = true;
            }


        }

        private void button21_Click(object sender, EventArgs e)
        {
            string timer = "";
            new Form2().ShowDialog();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            //timer1.Enabled = false;
            //timer1.Stop();
            //timer1.Enabled = true;
            //timer1.Interval = 1000;
            //int count = 0;
            //EventHandler eve = (s, ev) =>
            //{
            //    label1.Text = (++count).ToString();
            //};
            //timer1.Tick -= eve;
            //timer1.Tick += eve;
            //timer1.Start();
        }

        private void button2_Click(object sender, EventArgs e)
        {
            //timer2.Enabled = false;
            //timer2.Stop();
            //timer2.Enabled = true;
            //timer2.Interval = 1000;
            //int count = 0;
            //EventHandler eve = (s, ev) =>
            //{
            //    label2.Text = (++count).ToString();
            //};
            //timer2.Tick -= eve;
            //timer2.Tick += eve;
            //timer2.Start();
        }

        private void button3_Click(object sender, EventArgs e)
        {
            //timer3.Enabled = false;
            //timer3.Stop();
            //timer3.Enabled = true;
            //timer3.Interval = 1000;
            //int count = 0;
            //EventHandler eve = (s, ev) =>
            //{
            //    label3.Text = (++count).ToString();
            //};
            //timer3.Tick += eve;
            //timer3.Start();
        }
    }
}
