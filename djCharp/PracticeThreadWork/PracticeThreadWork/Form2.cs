using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace PracticeThreadWork
{
    public partial class Form2 : Form
    {
        public Form2()
        {
            InitializeComponent();
        }
        private void button1_Click(object sender, EventArgs e)
        {
            int idx = int.Parse(textBox1.Text);
            int time = int.Parse(textBox2.Text);
            DataManager.users[idx - 1].time = time.ToString();
            Close();
        }
    }
}
