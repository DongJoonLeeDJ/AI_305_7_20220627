using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace HelloMyCSharp10_03
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            label1.Text = "";

            List<int> list = new List<int>()
            {1,2,3,4,5,6,7,8,9,10 };

            //LINQ Language-Integrated Query 

            //list에 있는 item들을 제곱해서 output에 하나하나 집어넣는다.
            var output = from item in list select item * item;
            //output은 list에 있는 값들을 전부 제곱해서
            //저장하는 일종의 리스트

            foreach (var item in output)
                label1.Text += item + " ";

        }

        private void button2_Click(object sender, EventArgs e)
        {
            label2.Text = "";
            List<int> list = new List<int>()
            {1,2,3,4,5,6,7,8,9,10 };

            //from 뒤에 있는 item : list에 있는 값들
            //where : 조건
            //select : 실제로 출력될 값
            var output = from item in list 
                         where item % 2 == 0 select item;

            //원본인 list엔 변화가 없고
            //output에 list의 특정값들만 집어넣음
            //혹은 list값들을 가공한 것을 output에 넣는 것
            foreach (var item in output)
                label2.Text += item + " ";

            //LINQ의 결과물은 배열이나 List로 변환도 가능함
            int[] a = output.ToArray<int>();
            List<int> b = output.ToList<int>();

        }
    }
}
