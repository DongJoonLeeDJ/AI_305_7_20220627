using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace HelloMyCSharp07_03
{
    //추상 클래스라고 함
    //인스턴스를 만들 수 없다.
    //해당 클래스를 상속받은 클래스는
    //반드시 기능 구체화 해야 함
    //추상 클래스랑 인터페이스가 "다형성"을 많이 활용한다.
    abstract public class Animal
    {
        public string name { get; set; }
        public int age { get; set; }
        public void sleep() //자는 건 모든 동물이 똑같다고 가정해 봄
        {
            System.Windows.Forms.MessageBox.Show
                ($"{name}은/는 {age}살처럼 잡니다.");
        }
        //동물 마다 먹는 모습이 다 다르다.
        public abstract void eat(); //Animal을 상속받은 클래스에서 구현해야 함
    }
}
