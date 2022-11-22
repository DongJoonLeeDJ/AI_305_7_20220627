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
            MyParent.openDoor();

            MyParent myParent1 = new MyParent() { age=28, name="이상길"};
            MyParent myParent2 = new MyParent() { age=30, name="최정은"};
            MyChild myChild = new MyChild() { age=1, name="이동준"};

            //money는 static 변수라서 자식 클래스에서든 부모 클래스 에서든 공통적으로 접근 됨
            Console.WriteLine(MyParent.money);
            Console.WriteLine(MyChild.money);

            MyChild.openDoor(); //부모 클래스에서의 메소드 그대로 호출 가능

            myParent1.eat();
            myParent1.sleep();
            
            myParent2.eat();
            myParent2.sleep();

            myChild.eat();
            myChild.sleep();
            myChild.study();
            myChild.playgame();

            myChild.buyBitCoin(-1999); //2000만원도 안 되는 돈을 쓴...?

            Console.WriteLine(MyParent.money);//자식이 태어나고 그 자식이 비트코인 투자하면서 2000만원 날린 우리집!?
            Console.WriteLine(MyChild.money);

            List<MyParent> family = new List<MyParent>() { myParent1, myParent2, myChild };

            foreach(var item in family)
            {
                item.eat();
                item.sleep();
                MyChild temp = item as MyChild;
                if(temp!=null)
                {
                    temp.study();
                    temp.playgame();
                    temp.buyBitCoin(10000); //열심히 벌어 호강하는!?
                }
            }

            Console.WriteLine(MyParent.money);//자식이 태어나고 그 자식이 비트코인 투자하면서 2000만원 날린 우리집!?
            Console.WriteLine(MyChild.money);


        }
    }
}
