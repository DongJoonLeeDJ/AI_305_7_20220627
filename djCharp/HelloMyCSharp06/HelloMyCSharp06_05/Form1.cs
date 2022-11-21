using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace HelloMyCSharp06_05
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            string name = textBox1.Text;
            bool result = int.TryParse(textBox2.Text, out int price);

            if (name == "" && result == false) //제품을 모를 경우
            {
                Product p = new Product();
                label1.Text = "제품 등록 완료";
            }
            else if (name == "")
            {
                Product p = new Product(price);
                label1.Text = $"{p.Price}원의 물건 등록 완료";
            }
            else if (result == false) //값을 모를 경우
            {
                Product p = new Product(name);
                label1.Text = $"{p.Name} 물건 가격 확인 바람";
            }
            else
            {
                Product p = new Product(name, price);
                label1.Text = $"{p.Name}, {p.Price}원";

            }
        }
    }
}
