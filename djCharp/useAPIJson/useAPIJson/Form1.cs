using Newtonsoft.Json.Linq;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Net;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace useAPIJson
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            //이거 안 지우면 계속 누적됨
            lottoBindingSource.Clear(); // 다 지우기

            int.TryParse(textBox1.Text, out int count);

            if (count < 1) //실패했을 경우
                count = 1;
            while(true) //최신회차까지 뽑아낼 것
            {
                //WebClient : 웹에서 텍스트 뽑아내는 것
                //using System.Net;
                using (WebClient wc = new WebClient())
                {
                    var json = wc.DownloadString("https://www.dhlottery.co.kr/common.do?method=getLottoNumber&drwNo="+ count);
                    //using Newtonsoft.Json.Linq;
                    //Nuget에서 별도 설치필요
                    var jArray = JObject.Parse(json);
                    if (jArray["returnValue"].ToString() == "fail")
                        break; //최신회차까지 뽑아낸 것이므로 종료
                    Lotto temp = 
                        new Lotto(jArray["drwtNo1"].ToString(),
                        jArray["drwtNo2"].ToString(), jArray["drwtNo3"].ToString(),
                        jArray["drwtNo4"].ToString(), jArray["drwtNo5"].ToString(),
                        jArray["drwtNo6"].ToString(), jArray["bnusNo"].ToString(),
                        jArray["drwNo"].ToString(),
                        jArray["drwNoDate"].ToString());
                    lottoBindingSource.Add(temp);
                    count++;
                }
            }
        }
    }
}
