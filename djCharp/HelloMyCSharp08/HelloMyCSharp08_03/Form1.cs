using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace HelloMyCSharp08_03
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            Dog d = new Dog();
            d.actCute();
            d.smile();
            d.welCome();

            //인터페이스도 다형성이 적용됨
            ICharming pet1 = new Dog();
            ICharming pet2 = new RobotPet();
            ICharming pet3 = new ZergDron();

            pet1.actCute();
            pet2.actCute();
            pet3.actCute();
        }

        //ICharming 을 구현한 모든 것들이 c 자리에 들어갈 수 있다.
        void cute_smile_wel(ICharming c)
        {
            c.actCute();
            c.smile();
            c.welCome();
        }
        void fightForMe(IFight f, string m)
        {
            f.attackTarget();
            f.killTarget();
            f.protectMaster(m);
        }
        private void button2_Click(object sender, EventArgs e)
        {
            cute_smile_wel(new Dog());
            cute_smile_wel(new RobotPet());
        }

        private void button3_Click(object sender, EventArgs e)
        {
            //IFight를 구현하는 클래스만 들어갈 수 있다.
            List<IFight> fighters = new List<IFight>();
            fighters.Add(new RobotPet());
            fighters.Add(new Dron());

            //fightForMe : IFight를 구현하는 클래스만 매개변수로 됨
            foreach (IFight item in fighters)
                fightForMe(item, textBox1.Text);

        }
    }
}
