using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace HelloMyCSharp07_02
{
    public class Tiger : Cat
    {
        //하이딩 => 강제 형변환하면 부모 클래스의 메소드 호출됨
        public new void eat()
        {
            System.Windows.Forms.MessageBox.Show
                ($"!!!!!!!!!!!!!!{name} 호랑이는 무섭게 먹습니다.{age}살이에요.");
        }
        //오버라이딩 => 강제 형변환해도 부모 클래스의 메소드 호출 X
        public override void fight()
        {
            //base.fight(); //조상 클래스의 fight를 호출하는 것
            System.Windows.Forms.MessageBox.Show
                ($"!!!!!!!!!!!!!!{age}살 {name} 호랑이의 혈투 캬오오오");

        }
        
        //object에 있는 ToString을 오버라이드한 것
        //즉 object에 있는 ToString을 대체한 것(=덮어쓰기)
        public override string ToString()
        {
            return $"이름:{name}, 나이:{age}";
            //return base.ToString();
        }
    }
}
