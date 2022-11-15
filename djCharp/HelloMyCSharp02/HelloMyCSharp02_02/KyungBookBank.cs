using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace HelloMyCSharp02_02
{
    //KBBank를 상속한 클래스
    //KBBank에 있는 메소드, 변수 등을 다 쓸 수 있다.
    //KBBank에 있는 Name, Balance, info함수도 있고
    //그 외에 더 추가할 수 있다.
    public class KyungBookBank : KBBank
    {
        //이 안에 Name, Balance, info가 없지만
        //상속받은 것이므로 쓸 수 있다.

        //이름값을 선언하자마자 정하는 생성자.
        public KyungBookBank(string Name)
        {
            this.Name = Name;
        }
        public void Withdrawal(int money)
        {
            this.Balance -= money;
        }
        public void Saving(int money)
        {
            this.Balance += money;
        }
    }
}
