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

        private void button4_Click(object sender, EventArgs e)
        {
            Cat c = new Cat();
            c.name = "헤라";
            c.age = 30;

            //ToString : object클래스 있는 메소드
            //이 메소드는 오버라이딩이 가능하다.
            //public virtual string ToString()
            //오버라이딩 하지 않으면 object 클래스 원래 있는 기능을 호출
            //namespace명.클래스명
            MessageBox.Show(c.ToString());

        }

        private void button3_Click(object sender, EventArgs e)
        {
            Tiger t = new Tiger();
            t.name = "호치";
            t.age = 100;
            //Tiger클래스에서 정의한 모양대로
            //값들을 리턴해준다.
            MessageBox.Show(t.ToString());
        }
    }
}
