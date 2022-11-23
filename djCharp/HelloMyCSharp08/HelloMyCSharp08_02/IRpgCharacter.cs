using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace HelloMyCSharp08_02
{
    public interface IRpgCharacter
    {
        int level { get; set; } //해당 속성도 구체화해줘야 함

        void Attack(); //Attack이라는 이름의 메소드를 구현해야 됨
    }
}
