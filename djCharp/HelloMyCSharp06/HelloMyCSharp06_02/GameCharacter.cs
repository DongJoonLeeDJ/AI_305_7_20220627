using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace HelloMyCSharp06_02
{
    public class GameCharacter
    {
        //게임 캐릭터의 수
        //static 변수 = 클래스 변수
        //프로그램 시작하자마자 메모리에 올라감
        //공통적으로 쓰는 값(클래스이름.클래스변수)
        public static int Count = 0;
        //해당 캐릭터의 ID
        //인스턴스가 만드러질 때(=new GameCharacter() 메모리에 올라감
        //인스턴스명.인스턴스변수
        public string id { get; set; }
        //캐릭터가 생성될 때 마다 
        //캐릭터의 수는 증가한다.
        //캐릭터 수는 공통적으로 쓰는 값
        public GameCharacter()
        {
            Count++;
        }
    }
}
