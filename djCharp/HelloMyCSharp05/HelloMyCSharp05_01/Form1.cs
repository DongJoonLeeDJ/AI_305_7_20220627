using System;
using System.Collections;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace HelloMyCSharp05_01
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            //숫자 10개를 저장하는 방법 2개
            //1. 배열
            int[] numbers1 = new int[10];
            for(int i = 0; i<10; i++)
                numbers1[i] = i;
            foreach (var item in numbers1)
            {
                Console.WriteLine(item);
            }
            //2. List = Java의 ArrayList랑 똑같은 것
            //배열이랑은 다르게 길이가 정해져 있지 않음
            List<int> numbers2 = new List<int>();
            for (int i = 0; i < 10; i++)
                numbers2.Add(i*i);
            foreach (var item in numbers2)
            {
                Console.WriteLine(item);
            }
            //java의 ArrayList랑은 다르게 각 구성요소 접근시
            //배열이랑 똑같이 접근함(자바에선 get을 썼음)
            for(int i = 0; i<numbers2.Count;i++)
                Console.WriteLine(numbers2[i]);

            //일반 배열... 배열의 길이는 Length,
            //List의 길이는 Count라고 표기
            for (int i = 0; i < numbers1.Length; i++)
                Console.WriteLine(numbers1[i]);


            //C#에서의 ArrayList는 뭐든지 담는 객체
            //java로 따지자면...
            //ArrayList<Object> test = new ArrayList<Object>();
            ArrayList test = new ArrayList();
            test.Add("안녕");
            test.Add(123);
            test.Add('a');
            test.Add(new Random());

        }
    }
}
