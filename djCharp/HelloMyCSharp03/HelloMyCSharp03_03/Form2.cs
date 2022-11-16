using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace HelloMyCSharp03_03
{
    public partial class Form2 : Form
    {
        private string text1;
        private string text2;

        //윈폼의 기본 생성자
        //기본적으로 InitializeComponent를 호출함
        public Form2()
        {
            InitializeComponent();
        }

        public Form2(string text1, string text2)
        {
            this.text1 = text1;
            this.text2 = text2;
            InitializeComponent();//이거 반드시 있어야 함
            if (text1 == "admin" && text2 == "1234")
                label1.Text = "관리자님 안녕하세요.";
            else
                label1.Text = "너 뭐냐";
        }
    }
}
