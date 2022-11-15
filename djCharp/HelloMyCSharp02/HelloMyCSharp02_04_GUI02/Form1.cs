using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace HelloMyCSharp02_04_GUI02
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        private void button_plus_Click(object sender, EventArgs e)
        {
            int one = int.Parse(textBox_one.Text);
            int two = int.Parse(textBox_two.Text);
            MessageBox.Show("두 숫자의 합: " + (one+two));
        }

        private void button_minus_Click(object sender, EventArgs e)
        {

            int one = int.Parse(textBox_one.Text);
            int two = int.Parse(textBox_two.Text);
            MessageBox.Show("두 숫자의 빼기: " + (one - two));
        }

        private void button_mul_Click(object sender, EventArgs e)
        {

            int one = int.Parse(textBox_one.Text);
            int two = int.Parse(textBox_two.Text);
            MessageBox.Show("두 숫자의 곱: " + (one * two));
        }

        private void button_dv_Click(object sender, EventArgs e)
        {

            int one = int.Parse(textBox_one.Text);
            int two = int.Parse(textBox_two.Text);
            MessageBox.Show("두 숫자의 나누기: " + (one / two));
        }

        private void button_mod_Click(object sender, EventArgs e)
        {

            int one = int.Parse(textBox_one.Text);
            int two = int.Parse(textBox_two.Text);
            MessageBox.Show("두 숫자의 나머지: " + (one % two));
        }
    }
}
