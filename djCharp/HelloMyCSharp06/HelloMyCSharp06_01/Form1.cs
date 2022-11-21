using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace HelloMyCSharp06_01
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            //Rect r = new Rect();
            //r.w = 10;
            //r.h = 5;
            Rect r = new Rect() { w = 10, h = 5 };
            MessageBox.Show("직사각형의 넓이 : " + r.getArea());
        }

        private void button2_Click(object sender, EventArgs e)
        {
            Cuboid cb = new Cuboid();
            cb.w = 5;
            cb.h = 2;
            cb.z = 4;
            MessageBox.Show("직육면체의 넓이 : " + cb.getArea());

        }

        private void button3_Click(object sender, EventArgs e)
        {
            Cuboid cb = new Cuboid();
            cb.w = 5;
            cb.h = 2;
            cb.z = 4;

            MessageBox.Show("직육면체의 부피 : " + cb.getVolume());
        }

        private void button4_Click(object sender, EventArgs e)
        {
            Circle c = new Circle(5);
            MessageBox.Show("원의 둘레 : " + c.getRound());
        }

        private void button5_Click(object sender, EventArgs e)
        {
            Circle c = new Circle(10);
            MessageBox.Show("원의 넓이 : " + c.getRound());
        }

        private void button6_Click(object sender, EventArgs e)
        {
            Sphere s = new Sphere(10);
            MessageBox.Show("구의 둘레 : " + s.getRound());
        }

        private void button7_Click(object sender, EventArgs e)
        {
            Sphere s = new Sphere(10);
            MessageBox.Show("구의 넓이 : " + s.getRound());
        }

        private void button8_Click(object sender, EventArgs e)
        {

            Sphere s = new Sphere(10);
            MessageBox.Show("구의 부피 : " + s.getVolume());
        }

        private void button9_Click(object sender, EventArgs e)
        {
            Rect r = new Rect();
            r.w = int.Parse(textBox_w.Text);
            r.h = int.Parse(textBox_h.Text);
            label_area.Text = "넓이 : " + r.getArea();
        }

        private void button10_Click(object sender, EventArgs e)
        {
            Cuboid cb = new Cuboid();
            cb.w = int.Parse(textBox_w.Text);
            cb.h = int.Parse(textBox_h.Text);
            label_area.Text = "직육면체의 넓이 : " + cb.getArea();
        }

        private void button11_Click(object sender, EventArgs e)
        {
            Cuboid cb = new Cuboid();
            cb.w = int.Parse(textBox_w.Text);
            cb.h = int.Parse(textBox_h.Text);
            cb.z = int.Parse(textBox_z.Text);
            label_volume.Text = "직육면체의 부피 : " + cb.getVolume();
        }

        private void button12_Click(object sender, EventArgs e)
        {
            Circle c = new Circle(int.Parse(textBox_r.Text));
            label_circle_round.Text = "원의 둘레 : " + c.getRound();
        }

        private void button13_Click(object sender, EventArgs e)
        {
            Circle c = new Circle(int.Parse(textBox_r.Text));
            label_circle_area.Text = "원의 넓이 : " + c.getArea();

        }

        private void button14_Click(object sender, EventArgs e)
        {
            Sphere s = new Sphere(int.Parse(textBox_r.Text));
            label_circle_round.Text = "구의 둘레 : " + s.getRound();
        }

        private void button15_Click(object sender, EventArgs e)
        {

            Sphere s = new Sphere(int.Parse(textBox_r.Text));
            label_circle_area.Text = "구의 넓이 : " + s.getArea();
        }

        private void button16_Click(object sender, EventArgs e)
        {

            Sphere s = new Sphere(int.Parse(textBox_r.Text));
            label_circle_volume.Text = "구의 부피 : " + s.getVolume();
        }
    }
}
