using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace HelloMyCSharp05_03
{
    public partial class Form1 : Form
    {
        List<int> numbers = new List<int>(); //숫자(중복 제거용)
        List<string> list = new List<string>(); //버튼에 글자쓸 꺼
        public Form1()
        {
            InitializeComponent();
            ListText.Text = "";
            Random r = new Random();
            while(numbers.Count < 4) //길이가 4일 때까지 반복
            {
                int num = r.Next(1,100);
                numbers.Remove(num); //해당 숫자가 이미 존재하면 지워버림
                numbers.Add(num);
            }
            numbers.Sort(); //순서정렬도 해봄

            //1. split으로 자름(button1 -> button_1 로 이렇게 바꿔놓기)
            //2. substring, 원하는 만큼 잘라서 쓰는 방법
            //3. Replace로 button글자만 자르고 나머지 부분(=숫자들)만 활용하기
            
            foreach (var item in Controls)
            {
                if(item is Button)
                {

                    Button btn = item as Button;
                    if(btn.Name.Contains("button"))
                    {
                        string num = btn.Name.Replace("button", "");
                        int n = int.Parse(num);
                        if (n > 4) //1,2,3,4에 숫자 넣고 5,6,7,8에는 1,2,3,4꺼 넣을 예정
                            n -= 4;

                        btn.Text = numbers[n - 1] + "";
                        btn.Click += listTextEvent;
                    }
                }

            }
        }
        private void listTextEvent(object s, EventArgs e)
        {
            Button btn = s as Button;
            string num = btn.Name.Replace("button", "");
            int n = int.Parse(num);
            if(n > 4)
            {
                list.Remove(btn.Text);
            }
            else//button1, button2, button3, button4
            {
                list.Add(btn.Text);
            }

            ListText.Text = ""; //label에 있는 텍스트를 리셋해줌
            foreach (var item in list)
            {
                ListText.Text += item + " ";
            }
        }

        private void setColor(CircularButton c)
        {
            Color[] colors = new Color[] {Color.Yellow, Color.Blue, Color.Red, Color.Gray, Color.Green };
            /*
             1번부터 10번까지는 노란색, 
            11번부터 20번까지는 파란색, 
            21번부터 30번까지는 빨간색, 
            31번부터 40번까지는 회색, 
            41번부터 45번까지는 초록색으로 5가지 색깔로 구분되어 있습니다.
             */
            int num = int.Parse(c.Text);
            if (num <= 10)
                c.BackColor = colors[0];
            else if (num <= 20)
                c.BackColor = colors[1];
            else if (num <= 30)
                c.BackColor = colors[2];
            else if (num <= 40)
                c.BackColor = colors[3];
            else
                c.BackColor = colors[4];

        }

        private void generator_lotto_btn_Click(object sender, EventArgs e)
        {
            List<int> lotto = new List<int>();
            int bns = 0;
            Random r = new Random();
            while (lotto.Count < 6) //길이가 6일 때까지 반복
            {
                int num = r.Next(45)+1;
                lotto.Remove(num); //해당 숫자가 이미 존재하면 지워버림
                lotto.Add(num);
            }

            lotto.Sort();

            //bns값이 lotto에 포함되지 않는 게 나와야 함
            //while문으로 할 경우 bns에 있던 0이 그대로 
            //넘어간다.
            do
            {
                bns = r.Next(45) + 1;
            } while (lotto.Contains(bns));
            lotto.Add(bns);
            CircularButton[] lottos = new CircularButton[]
            {
                lotto_result1,
                lotto_result2,
                lotto_result3,
                lotto_result4,
                lotto_result5,
                lotto_result6,
                lotto_result7
            };

            for(int i = 0; i<lottos.Length; i++)
            {
                lottos[i].Text = lotto[i].ToString();
                setColor(lottos[i]);
            }

        }
    }
}
