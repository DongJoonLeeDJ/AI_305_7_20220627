using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace HelloMyCSharp08_02
{
    //클래스는 하나만 상속이 된다.
    //인터페이스는 여러 개 상속됩니다.
    //자바의 경우에는 extends랑 implements로 나눴다.
    //C#은 콤마로 다 이어붙일 수 있다.
    public class LoLCharacter : GameCharacter, IRpgCharacter, IRts
    {
        public int level { get; set; }


        public virtual void Qkey() { Console.WriteLine("q키누름"); }
        public virtual void Wkey() { Console.WriteLine("w키누름"); }
        public virtual void Ekey() { Console.WriteLine("e키누름"); }
        public virtual void Rkey() { Console.WriteLine("r키누름"); }

        public void Attack()
        {
            Qkey();
            Wkey();
            Ekey();
            Rkey();
        }

        public void MoveDown()
        {
            Console.WriteLine("아래로 간다.");
        }

        public void MoveLeft()
        {
            Console.WriteLine("왼쪽으로 간다.");
        }

        public void MoveRight()
        {
            Console.WriteLine("오른쪽으로 간다.");
        }

        public void MoveUp()
        {
            Console.WriteLine("위로 간다.");
        }

        public override void sayHello()
        {
            Console.WriteLine("인사를 한다.");
        }
    }
}
