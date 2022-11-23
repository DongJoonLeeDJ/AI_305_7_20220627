using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace HelloMyCSharp08_01
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            List<Product> products = new List<Product>();
            products.Add(new Product() { id = 1, price = 1000, name = "감자" });
            products.Add(new Product() { id = 3, price = 500, name = "파" });
            products.Add(new Product() { id = 2, price = 100, name = "젤리" });

            //var 대신 다른 거 적어도 됨. 타입을 알면, 타입을 적어줘도 됨
            foreach(Product p in products)
            {
                MessageBox.Show($"{p.name}");
            }

        }

        private void button2_Click(object sender, EventArgs e)
        {
            List<Product> products = new List<Product>();
            products.Add(new Product() { id = 1, price = 1000, name = "감자" });
            products.Add(new Product() { id = 3, price = 500, name = "파" });
            products.Add(new Product() { id = 2, price = 100, name = "젤리" });

            //CompareTo가 정의되어 있지 않다면
            //products는 정렬이 안 된다.
            //CompareTo가 정의되어 있으니
            //Sort에서는 내부적으로 CompareTo를 호출
            //이걸 이용해서 정렬이 됨.
            //여기선 상품 가격순 정렬 감자 파 젤리 아니고
            //젤리 파 감자 순으로 출력된다.
            products.Sort();

            //var 대신 다른 거 적어도 됨. 타입을 알면, 타입을 적어줘도 됨
            foreach (Product p in products)
            {
                MessageBox.Show($"{p.name}");
            }

        }

        private void button3_Click(object sender, EventArgs e)
        {
            Class1 a = new Class1();
            a[50] = 10;
            MessageBox.Show(a[100]+"");
        }

        private void button4_Click(object sender, EventArgs e)
        {
            Class1[] aa = new Class1[100];
            aa[0] = new Class1();
            aa[0][5] = 50;
            MessageBox.Show(aa[0][5].ToString()); 
        }

        void test(ref int a)
        {//ref는...
            a = 1; //이건 필수가 아니다. 대입연산자 없어도 됨
            Console.WriteLine(  a );//값읽기만 해도 됨
        }
        //out과 ref끼리는 오버로딩 안 됨
        void test2(out int a)
        {
            a = 1000;//반드시 대입 연산자 필요
            Console.WriteLine(a);
        }
        private void button5_Click(object sender, EventArgs e)
        {
            int aa = 100;
            test(ref aa);
            Console.WriteLine(  aa);
            test2(out aa);
            Console.WriteLine(aa);

        }
    }
}
