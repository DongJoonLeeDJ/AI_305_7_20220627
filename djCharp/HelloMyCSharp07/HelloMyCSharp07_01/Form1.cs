using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace HelloMyCSharp07_01
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
            MyParent.money = 10000;
            MyChild c = new MyChild();
            Console.WriteLine(MyParent.money);
            
        }
    }
}
