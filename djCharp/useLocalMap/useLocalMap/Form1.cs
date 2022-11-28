using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace useLocalMap
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
            //textBox1 위에 키보드를 누르고 그 키가 올라올 때
            //이벤트 추가
            //람다 사용함
            //키가 엔터일 때, button1을 눌러준다.
            textBox1.KeyUp += (sender, e) =>
            {
                if (e.KeyCode == Keys.Enter)
                    button1.PerformClick();
            }; 
        }

        private void button1_Click(object sender, EventArgs e)
        {
            List<Locale> locales = KakaoAPI.Search(textBox1.Text);
            listBox1.Items.Clear();
            foreach(Locale item in locales)
            {
                listBox1.Items.Add(item);
            }
        }
    }
}
