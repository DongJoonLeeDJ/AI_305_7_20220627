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

namespace useAPI
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
            string url = "http://www.kma.go.kr/wid/queryDFSRSS.jsp?zone=11500611500";

            //data.go.kr과 같이 공공데이터에서 자료 가져올 경우에는
            //url에 서비스키 등을 입력해야 하는 데, 웹브라우저에서 데이터
            //잘 가져와지면, 그 url 그대로 쓰면 됨
            XElement x = XElement.Load(url);
            //hour, temp 태그에 숫자가 없으면 오류가 난다.
            //그 때 찾기가 매우 힘들다.
            var output = from item in x.Descendants("data") select 
                         new Weather()
                         {
                             hour = int.Parse(item.Element("hour").Value),
                             wf = item.Element("wfKor").Value,
                             temp = double.Parse(item.Element("temp").Value)
                         };
            List<Weather> w = output.ToList<Weather>();

            dataGridView1.DataSource = null;
            dataGridView1.DataSource = w;

        }
    }
}
