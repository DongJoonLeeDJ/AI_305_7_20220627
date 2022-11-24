using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace HelloMyCSharp09
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
            MyClass.getInstance.num = 10;
            MyClass.getInstance.name = "이동준";
        }

        private void button1_Click(object sender, EventArgs e)
        {
            MyClass.getInstance.num += 1; 
            MyClass.getInstance.printMsg("_안녕_");
        }

        private void button2_Click(object sender, EventArgs e)
        {
            MyClass._getInstance().num+=2;
            MyClass._getInstance().printMsg("_hi_");
            MyClass.getInstance.name += "hi";
        }

        private void button3_Click(object sender, EventArgs e)
        {
            MyClass.getInstance.name += "*";
            MessageBox.Show(MyClass.getInstance.name);
        }
    }
}
