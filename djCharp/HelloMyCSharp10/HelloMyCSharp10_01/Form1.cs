using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace HelloMyCSharp10_01
{
    //delegate : 대리자
    //일종의 클래스처럼 사용자 정의 자료형같은 것
    //함수를 매개변수로처럼 쓰게 만드는 것
    //js의 콜백함수와 같은 것.
    //델리게이트와 람다를 이용하면 코드를 적게 쓰고
    //많은 기능 동작하게 하거나
    //불필요한 함수 선언을 줄일 수 있다.

    //클래스 밖에서도 선언 됨
    public delegate void VoidFunc();
    public delegate int IntegerParamFunc(int i);
    public partial class Form1 : Form
    {
        //클래스 안에서도 선언 됨
        public delegate int IntegerFunc();
        public delegate void ParameterFunc(int i);

        public int power(int num)
        {
            return num * num;
        
        }

        //executeFunc 오버로딩
        //public void executeFunc(VoidFunc v, int c)
        //이번엔 매개변수와 반환형이 필요한 함수를 i라는 변수에
        //받아온 다음에 매개변수는 num으로 하고, i의 반환형을 활용
        public void executeFunc(IntegerParamFunc i, int num)
        {
            MessageBox.Show("num의 제곱 : " + i(num));
        }

        public void myTest()
        {
            MessageBox.Show("Test");
        }
        public void yourTest()
        {
            MessageBox.Show("Your Test");
        }

        public void executeFunc(VoidFunc v, int c)
        {
            for (int i = 0; i < c; i++)
                v();
        }


        List<Product> products = new List<Product>();


        public Form1()
        {
            InitializeComponent();
            products.Add(new Product() { id=5,name="감자",price=100});
            products.Add(new Product() { id = 1, name = "돌", price = 50 });
            products.Add(new Product() { id = 3, name = "칫솔살균기", price = 0 });


            //button4같은 경우엔 첫번째 매개변수 object,
            //두번쨰 매개변수 EventArgs인 함수라면
            //누구나 다 이벤트 추가됨
            //함수를 아래와 같이 축약할 수 있다.
            button4.Click += Button4_Click;


            button4.Click += (s, e) =>
            {
                MessageBox.Show("버튼4클릭");
            };
            //이벤트를 여러 개 붙일 수 있다.
            button4.Click += delegate (object s, EventArgs e)
            {
                MessageBox.Show((s as Button).Text);
            };
            //일반적인 델리게이트 형태, 함수의 이름을 추가한다.
            button4.Click += button1_Click;
        }

        private void Button4_Click(object sender, EventArgs e)
        {
            MessageBox.Show("tab키와 +=로 만든 함수");
        }

        private void button1_Click(object sender, EventArgs e)
        {
            executeFunc(myTest, 2);
        }

        private void button2_Click(object sender, EventArgs e)
        {
            //무명 델리게이트
            //함수는 함수인 데, 이름이 없다.
            //한 군데서만 쓰일 거라면 굳이 함수를 만들 필요도 없다.
            //즉 이름을 지을 필요도 없는 경우에 함수 안에 바로 함수 쓴다.
            
            //executeFunc는 첫번째 매개변수가 반환형과 매개변수가 없는 함수라서
            //그에 맞는 함수를 집어넣어 준 것
            executeFunc(
                
                delegate () {
                MessageBox.Show("안녕하세요");
            }, 
            
            
            3);
        }

        private void button3_Click(object sender, EventArgs e)
        {
            //람다
            //무명 델리게이트를 더 줄인 형태
            //무명 델리게이트와 마찬 가지로 간단하게 함수를
            //쓰고 싶을 때 쓴다.
            //한 번밖에 안 쓰이거나 임시로 쓰는 함수 쓸 때 이렇게 함
            //메모리 관리 측면에서도 무명델리게이트나 람다가 더 효율적
            executeFunc(() => { MessageBox.Show("aaa"); },
                10);
        }

        private void button5_Click(object sender, EventArgs e)
        {
            executeFunc(power, 10); //10의 제곱인 100이 출력된다.

            //델리게이트를 매개변수나 변수로 만들 수 있다.
            VoidFunc myvoid = yourTest;
            myvoid(); //yourTest를 호출한다.
        }

        private void button6_Click(object sender, EventArgs e)
        {
            //세제곱하는 함수를 매개변수로 함
            //매개변수는 5이다.
            executeFunc(delegate (int n) { return n * n * n; }, 5);

        }

        private void button7_Click(object sender, EventArgs e)
        {
            //return도 생략됨
            executeFunc((n) => n * n * n * n, 10);

            executeFunc((n) => { return n * n * n * n * n; }, 10);


        }

        private void button8_Click(object sender, EventArgs e)
        {
            //id정렬
            products.Sort(delegate (Product a, Product b)
            {
                return a.id.CompareTo(b.id);
            });
        }

        private void button9_Click(object sender, EventArgs e)
        {
            //가격정렬
            products.Sort((a, b) => a.price.CompareTo(b.price));
        }

        private void button10_Click(object sender, EventArgs e)
        {
            //출력
            foreach(Product p in products)
                MessageBox.Show($"{p.name},{p.price},{p.id}");
        }
    }
}
