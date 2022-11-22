using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace HelloMyCSharp07_03
{
    enum 가위바위보
    {
        가위=1,바위,보
    }
    enum Fruit
    {
        apple,banana=5,orange
    }

    public partial class Form1 : Form
    {
        const int 가위 = 0;
        public Form1()
        {
            InitializeComponent();

            string[] fruits = new string[10];
            fruits[0] = "영주사과";
            fruits[1] = "청주사과";
            fruits[2] = "공주사과";
            fruits[3] = "경주사과";
            fruits[4] = "성주사과";
            fruits[5] = "대구 바나나";
            fruits[6] = "제주도 귤";

            MessageBox.Show(fruits[0]);
            MessageBox.Show(fruits[5]);
            MessageBox.Show(fruits[6]);
            MessageBox.Show(fruits[(int)Fruit.apple]);
            MessageBox.Show(fruits[(int)Fruit.banana]);
            MessageBox.Show(fruits[(int)Fruit.orange]);


            MessageBox.Show(가위바위보.가위.ToString());
            MessageBox.Show(((int)가위바위보.가위).ToString());
        }

        private void button1_Click(object sender, EventArgs e)
        {
            //추상클래스 단독으로는 인스턴스 만들지 못 함
            //인터페이스도 마찬가지임.
            //Animal a = new Animal();

            //List에 여러 개의 자료형을 추가하거나
            //메소드의 매개변수로써 조상 클래스를 활용함
            Animal a = new Dog(); //다형성
            //Dog a = new Dog(); //다형성 필요없다면 이렇게 써도 됨
            a.name = "퍼피";
            a.age = 10;
            a.sleep();
            a.eat();
        }

        private void button2_Click(object sender, EventArgs e)
        {
            Animal b = new Cat() { name="야옹야옹", age=5};
            b.sleep();
            b.eat();
        }

        //Animal을 상속한 클래스들로 만들어진 인스턴스들
        //new Dog(), new Cat()들...
        private void sleep_and_eat(Animal a)
        {
            a.sleep();
            a.eat();
        }

        private void button3_Click(object sender, EventArgs e)
        {
            sleep_and_eat(new Cat() { name = "랑이", age = 7 });
            sleep_and_eat(new Dog() { name = "행복이", age = 8 });
        }

        private void button4_Click(object sender, EventArgs e)
        {
            List<Animal> animals = new List<Animal>();
            animals.Add(new Cat() { name = "야홍이", age = 1 });
            animals.Add(new Dog() { name = "멍뭉이", age = 10 });
            animals.Add(new Cat() { name = "캣캣캣", age = 5 });

            foreach (var item in animals)
                sleep_and_eat(item);

        }

        private void button5_Click(object sender, EventArgs e)
        {
            Pig p = new Pig() { age = 1, name = "윌버" };
            sleep_and_eat(p);
            Animal pp = new Pig() { age = 2, name = "저팔계" };
            sleep_and_eat(pp);


        }
    }
}
