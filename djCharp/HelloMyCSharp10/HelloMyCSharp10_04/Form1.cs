using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Xml.Linq;

namespace HelloMyCSharp10_04
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            string url = "https://www.kma.go.kr/wid/queryDFSRSS.jsp?zone=2714000000";
            //using System.Xml.Linq;
            XElement x = XElement.Load(url);
            Console.WriteLine(  x);
        }

        private void button2_Click(object sender, EventArgs e)
        {
            string url = "https://www.kma.go.kr/wid/queryDFSRSS.jsp?zone=2714000000";
            //using System.Xml.Linq;
            XElement x = XElement.Load(url);
            //태그가 data인 것들만 가져옵니다.
            //Descendants = 자손들
            var xq = from item in x.Descendants("data") select item;
            foreach(var item in xq)
            {
                Console.WriteLine( item.Element("hour").Value );
                Console.WriteLine( item.Element("wfKor").Value );
                Console.WriteLine( item.Element("wfEn").Value );
                Console.WriteLine( item.Element("temp").Value );
            }
            //Console.WriteLine(x);
        }

        private void button3_Click(object sender, EventArgs e)
        {
            string url = "https://www.kma.go.kr/wid/queryDFSRSS.jsp?zone=2714000000";
            //using System.Xml.Linq;
            XElement x = XElement.Load(url);
            //태그가 data인 것들만 가져옵니다.
            //Descendants = 자손들
            var xq = from item in x.Descendants("data") select 
                     new
                     {
                         hour = item.Element("hour").Value,
                         wf = item.Element("wfKor").Value,
                         temp = item.Element("temp").Value
                     };
            foreach (var item in xq)
            {
                Console.WriteLine(  item.hour);
                Console.WriteLine(  item.wf);
                Console.WriteLine(  item.temp);
            }
        }

        private void button4_Click(object sender, EventArgs e)
        {
            string url = "https://www.kma.go.kr/wid/queryDFSRSS.jsp?zone=2714000000";
            //using System.Xml.Linq;
            XElement x = XElement.Load(url);
            //태그가 data인 것들만 가져옵니다.
            //Descendants = 자손들

            //링큐의 약점
            //저기서 hour, wf, temp 중 하나라도 잘못되면
            //이 덩어리 자체를 한 줄로 보고, 오류가 났다고 함
            //즉 정확히 어딘지 찾기가 매우 어렵다.
            var xq = from item in x.Descendants("data")
                     select
                     new Weather()
                     {
                         hour = int.Parse(item.Element("hour").Value),
                         wf = item.Element("wfKor").Value.ToString(),
                         temp = double.Parse(item.Element("temp").Value)
                     };
            //List 형태로 변환하는 법
            List<Weather> w = xq.ToList<Weather>();

            foreach (var item in xq)
            {
                Console.WriteLine(item.hour);
                Console.WriteLine(item.wf);
                Console.WriteLine(item.temp);
            }
        }
    }
}
