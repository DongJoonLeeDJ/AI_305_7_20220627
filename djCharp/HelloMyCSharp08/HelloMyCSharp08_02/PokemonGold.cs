using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace HelloMyCSharp08_02
{
    public class PokemonGold : IRpgCharacter
    {
        private int lv;
        public int level {
            get
            {
                return lv;
            } 
            set
            {
                if (value >= 100 || lv>=100)
                    lv = 100;
            }  
        }

        public void Attack()
        {
            System.Windows.Forms.MessageBox.Show("혼신의 맞다이");
        }
    }
}
