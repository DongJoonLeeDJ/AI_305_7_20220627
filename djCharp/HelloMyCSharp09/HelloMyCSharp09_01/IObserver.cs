using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace HelloMyCSharp09_01
{
    //관찰자 = 옵저버 = Observer
    //이 인터페이스를 구현한 클래스들은
    //update 라는 메소드를 호출할 수 있다.
    public interface IObserver
    {
        void update(string value);
    }
}
