using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace PracticeThreadWork
{
    public class User
    {
        public string time { get; set; }
        public string temp1 { get; set; }
        public string temp2 { get; set; }
        public int idx { get; set; }

        public Button btn { get; set; }

        public Timer timer { get; set; }

        public User()
        {

        }

        public User(Button btn)
        {
            this.btn = btn;
        }
    }
}
