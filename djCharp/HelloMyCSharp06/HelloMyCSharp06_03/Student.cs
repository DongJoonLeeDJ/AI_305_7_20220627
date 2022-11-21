using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace HelloMyCSharp06_03
{
    public class Student
    {
        //인스턴스 변수, 인스턴스 메소드는 모두
        //인스턴스가 만들어 질 때부터 쓸 수 있다.

        //인스턴스 변수
        public string name { get; set; }
        public int grade { get; set; }

        //인스턴스 메소드
        public void introduce()
        {
            System.Windows.Forms.MessageBox.Show("이름 : " + name + ", 학년 : " + grade);
        }
    }
}
