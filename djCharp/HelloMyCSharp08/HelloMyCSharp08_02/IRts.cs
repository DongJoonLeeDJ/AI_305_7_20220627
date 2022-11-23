using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace HelloMyCSharp08_02
{
    //실시간 전략 게임
    public interface IRts
    {
        void MoveUp();
        void MoveDown();
        void MoveLeft();
        void MoveRight();
    }
}
