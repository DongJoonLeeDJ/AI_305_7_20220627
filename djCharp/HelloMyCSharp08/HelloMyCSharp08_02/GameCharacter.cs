using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace HelloMyCSharp08_02
{
    abstract public class GameCharacter
    {
        //캐릭터의 이름이 있을 것이고
        //어떻게 인사하는지 기능이 있을 것이다.
        public string name { get; set; }
        abstract public void sayHello();
    }
}
