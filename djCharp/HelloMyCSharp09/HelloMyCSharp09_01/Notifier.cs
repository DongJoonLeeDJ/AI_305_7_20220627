using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace HelloMyCSharp09_01
{
    public class Notifier : ISubject
    {
        //IObserver를 구현하는 객체(=인스턴스)들이 들어감
        //참고 : 접근제한자 생략되면 C#에선 private이 붙는다.
        private List<IObserver> observers = new List<IObserver>();

        public void notify(string msg)
        {
            //관찰자들에게 일괄적으로 동일 메소드를 호출하게 함
            //관찰자 = IObserver를 구현한 클래스들
            foreach (IObserver o in observers)
                o.update(msg);
        }

        public void register(IObserver o)
        {
            observers.Add(o);
        }

        public void unregister(IObserver o)
        {
            observers.Remove(o);
        }
    }
}
