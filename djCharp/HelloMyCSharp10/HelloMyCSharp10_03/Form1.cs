using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace HelloMyCSharp10_03
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            label1.Text = "";

            List<int> list = new List<int>()
            {1,2,3,4,5,6,7,8,9,10 };

            //LINQ Language-Integrated Query 

            //list에 있는 item들을 제곱해서 output에 하나하나 집어넣는다.
            var output = from item in list select item * item;
            //output은 list에 있는 값들을 전부 제곱해서
            //저장하는 일종의 리스트

            foreach (var item in output)
                label1.Text += item + " ";

        }

        private void button2_Click(object sender, EventArgs e)
        {
            label2.Text = "";
            List<int> list = new List<int>()
            {1,2,3,4,5,6,7,8,9,10 };

            //from 뒤에 있는 item : list에 있는 값들
            //where : 조건
            //select : 실제로 출력될 값
            var output = from item in list 
                         where item % 2 == 0 select item;

            //원본인 list엔 변화가 없고
            //output에 list의 특정값들만 집어넣음
            //혹은 list값들을 가공한 것을 output에 넣는 것
            foreach (var item in output)
                label2.Text += item + " ";

            //LINQ의 결과물은 배열이나 List로 변환도 가능함
            int[] a = output.ToArray<int>();
            List<int> b = output.ToList<int>();

        }

        private void button3_Click(object sender, EventArgs e)
        {
            label3.Text = "";
            List<int> ages = new List<int> { 10, 20, 30, 40, 50 };
            var output = from item in ages
                         select new
                         {
                             age = item,
                             money = item*100*2
                         };

            foreach (var item in output)
                label3.Text += item.age + "," + item.money + "   ";
        }

        private void button4_Click(object sender, EventArgs e)
        {
            List<Product> products = new List<Product>();
            products.Add(new Product() { name = "비빔밥", price = 5000 });
            products.Add(new Product() { name = "라면", price = 1500 });
            products.Add(new Product() { name = "국밥", price = 4500 });
            products.Add(new Product() { name = "귤", price = 500 });

            //만약에 1000원 넘는 거만 나오게 하고, 비싼 순으로 정렬하고
            //싶다면 어떻게 해야할까요?
            var output = from item in products orderby item.price select item;


            label4.Text = "";
            foreach (var item in output)
                label4.Text += $"{item.name}, {item.price}   ";
                         


        }

        private void button5_Click(object sender, EventArgs e)
        {
            List<Product> products = new List<Product>();
            products.Add(new Product() { name = "비빔밥", price = 5000 });
            products.Add(new Product() { name = "라면", price = 1500 });
            products.Add(new Product() { name = "국밥", price = 4500 });
            products.Add(new Product() { name = "귤", price = 500 });

            //만약에 1000원 넘는 거만 나오게 하고, 비싼 순으로 정렬하고
            //싶다면 어떻게 해야할까요?
            var output = from item in products
                         where item.price>1000 
                         orderby item.price descending 
                         select item;
            label5.Text = "";
            foreach (var item in output)
                label5.Text += $"{item.name}, {item.price}{Environment.NewLine}";
        }
    }
}
