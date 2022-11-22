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

            
            //이동순때문에 돈이 깎인다. 
            List<MyParent> family = new List<MyParent>() { myParent1, myParent2, myChild, new MyChild() {name="이동순",age=0 } };

            Console.WriteLine(MyParent.money);//7999
            Console.WriteLine(MyChild.money);

            foreach (var item in family) 
            {
                item.eat();
                item.sleep();
                MyChild temp = item as MyChild;
                if(temp!=null) //item이 MyParent라면 null값
                {
                    temp.study();
                    temp.playgame();
                    //1억 1만원을 두 번 더함
                    //7999+10001+10001 = 28001
                    temp.buyBitCoin(10001); //열심히 벌어 호강하는!?
                }
            }

            Console.WriteLine(MyParent.money);//자식이 태어나고 그 자식이 비트코인 투자하면서 2000만원 날린 우리집!?
            Console.WriteLine(MyChild.money);


        }

        //MyParent p
        //매개변수가 MyParent라고 해서 MyParent 타입의 변수만 
        //들어가는 거 아니다.
        //이걸 상속받은 자식 클래스 역시 매개변수로 들어갈 수 있다.
        //이 것이 다형성의 특징
        void introduce(MyParent p) //MyParent 타입이나 MyParent를 상속받은 타입의 모든 변수들을 의미
        {
            p.eat();
            p.sleep();
            if(p is MyChild) // new MyChild()로 된 경우
            {
                (p as MyChild).study();
                (p as MyChild).playgame();
            }
        }
        private void button1_Click(object sender, EventArgs e)
        {
            MyParent myParent1 = new MyParent() { age = 28, name = "이상길" };
            MyParent myParent2 = new MyParent() { age = 30, name = "최정은" };
            MyChild myChild = new MyChild() { age = 1, name = "이동준" };

            introduce(myParent1);
            introduce(myParent2);
            introduce(myChild);
        }
    }
}
