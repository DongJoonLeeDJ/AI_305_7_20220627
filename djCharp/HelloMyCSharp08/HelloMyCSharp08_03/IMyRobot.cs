using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace HelloMyCSharp08_03
{
    //인터페이스 역시도 상속이 된다.
    interface IMyRobot : IFight, ICharming
    {
        void printMessage(string message);
    }
}
