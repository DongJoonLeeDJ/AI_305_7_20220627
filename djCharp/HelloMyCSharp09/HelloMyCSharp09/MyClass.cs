using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace HelloMyCSharp09
{
    //https://math-development-geometry.tistory.com/58

    public class MyClass : MyBase
    {
        //클래스변수가 아니고 인스턴스 변수입니다.
        //그러나 싱글톤패턴을 쓰면 
        //단 한 개의 객체만 생성해서, 그 객체에 있는 값을
        //공유합니다.
        public int num { get; set; }
        public void printMsg(string msg)
        {
            System.Windows.Forms.MessageBox.Show(msg+"Test"+num);
        }
        //static 메소드(=클래스 메소드)는 오버라이드 안 됨
        public override void print(string msg)
        {
            System.Windows.Forms.MessageBox.Show(msg);
            //base.print(msg);
        }
        //싱글톤의 핵심
        //단 한 개의 객체만 만듦

        //이유 : 클래스 메소드나 클래스 변수는 "상속"이 안 됨
        //"공유"한다. 그래서 오버라이딩등이 불가능
        //그리고 메모리상으로 봐도 static이 붙은 건 데이터영역에 저장
        //즉 프로그램이 시작되자마자 저장되고
        //인스턴스 변수나 메소드는 힙 영역에 저장된다.
        //다 쓰면 자동으로 소멸된다. 
        //메모리 관리 측면에서도 이 것이 더 효율적임.
        private static MyClass _instance = null;
        //생성자를 못 만든다.
        //오직 1개의 인스턴스만 생성하기 위함
        private MyClass()
        {

        }

        //C# 스타일
        //getInstance라는 public 타입 변수를 통해서 
        //_instance를 호출함
        public static MyClass getInstance
        {
            get
            {
                if(_instance == null)
                    _instance = new MyClass(); //딱 하나만 만든다.
                return _instance;
            }
        }
        //java 스타일
        public static MyClass _getInstance()
        {
            if (_instance == null)
                _instance = new MyClass();
            return _instance;
        }

    }
}
