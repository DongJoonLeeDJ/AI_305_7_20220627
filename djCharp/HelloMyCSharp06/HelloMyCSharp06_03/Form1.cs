using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace HelloMyCSharp06_03
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
            List<Student> students = new List<Student>();
            students.Add(new Student() { name="이동준", grade=1});
            students.Add(new Student() { name="김동준", grade=2});
            students.Add(new Student() { name="최동준", grade=3});
            students.Add(new Student() { name="배동준", grade=4});
            students.Add(new Student() { name="백동준", grade=1});
            students.Add(new Student() { name="박동준", grade=2});

            for(int i = 0; i<students.Count; i++)
            {
                Label l = new Label();
                l.Text = $"{students[i].grade} 학년 {students[i].name}학생" ;
                l.AutoSize = true;
                l.Location = new Point(13, 13 + 26 * i);
                Controls.Add(l);
            }

            for(int i =  students.Count-1; i>=0; i--)
            {
                if (students[i].grade > 1)
                    students.RemoveAt(i);

                // if (students[i].grade > 1)
                //{
                //temp가 i번째 값을 "가리키기" 때문이다.

                //var temp = students[i];
                //Student temp = students[i];
                //students.Remove(temp);

                //Student t = new Student() { name = students[i].name, 
                //    grade = students[i].grade };
                //students.Remove(t);
                //}
            }

            for (int i = 0; i < students.Count; i++)
            {
                Label l = new Label();
                l.Text = $"{students[i].grade} 학년 {students[i].name}학생";
                l.AutoSize = true;
                l.Location = new Point(130, 13 + 26 * i);
                Controls.Add(l);
            }

            //foreach (var item in students)
            //    item.introduce();
        }
    }
}
