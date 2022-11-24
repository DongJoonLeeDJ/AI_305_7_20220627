using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace HelloMyCSharp09_01
{
    //옵저버 = 관찰자
    //관찰자들(특정 인터페이스를 구현한 것들)을 관리
    //등록/삭제/일괄통지

    public interface ISubject
    {
        void register(IObserver o); //객체 등록
        void unregister(IObserver o);//객체 삭제
        void notify(string msg); //일괄적으로 전달
    }
}
