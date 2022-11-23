using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace HelloMyCSharp08_02
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            Cogmo c = new Cogmo();
            c.name = "꿀벌코그모";
            c.level = 5;

            c.sayHello();
            c.MoveDown();
            c.MoveUp();
            c.MoveLeft();
            c.MoveRight();

            c.Attack();

            c.Qkey();
            c.Wkey();
            c.Ekey();
            c.Rkey();


        }

        private void button2_Click(object sender, EventArgs e)
        {
            Timo t = new Timo();
            t.name = "피카츄성우";
            t.level = 50;
            t.sayHello();

            t.Attack();

            t.Qkey();
            t.Wkey();
            t.Ekey();
            t.Rkey();

            t.MoveDown();
            t.MoveUp();
            t.MoveLeft();
            t.MoveRight();
        }
    }
}
