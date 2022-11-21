using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace HelloMyCSharp06
{
    public class Circle
    {
        public int r { get; set; }
        protected double PI = 3.14;//Circle, Circle을 상속한 곳에서만 접근 가능

        //기본 생성자
        //굳이 적지 않아도 생김
        //public Circle()
        //{
        //}
        //아래와 같이 생성자를 명시적으로 하나 만들면
        //아무것도 없는 기본생성자는 삭제가 됨
        //그래서 new Circle()쓰면 오류난다.
        //만약 원을 만드는 시점에 반지름을 모른다면
        //위와 같이 
        //public Circle()
        //{
        //}
        //이렇게 만들어줘야 함

        public Circle(int r)
        {
            this.r = r;
        }

         public double getArea()
        {
            return r * r * PI;
        }
        public double getRound()
        {
            return 2 * r * PI;
        }
    }
}
