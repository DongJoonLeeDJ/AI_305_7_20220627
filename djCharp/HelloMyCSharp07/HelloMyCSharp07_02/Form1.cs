using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace HelloMyCSharp07_02
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            Cat c = new Cat() { age = 10, name = "야옹이" };
            c.eat();
            c.sleep();
            c.fight();
        }

        private void button2_Click(object sender, EventArgs e)
        {
            Tiger t = new Tiger() { age = 100, name = "호치" };
            t.sleep();
            t.eat();
            t.fight();

            ((Cat)t).eat();//고양이처럼 먹는다.
            ((Cat)t).fight(); //오버라이드된 거라 고양이처럼 싸우지 않는다.
        }
    }
}
