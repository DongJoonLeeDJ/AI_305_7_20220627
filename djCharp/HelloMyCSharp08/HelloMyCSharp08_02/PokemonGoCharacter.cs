using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace HelloMyCSharp08_02
{
    internal class PokemonGoCharacter : IRpgCharacter, IRts
    {
        public int level { get; set ; }
        public string pokeName { get; set; }

        public void Attack()
        {
            System.Windows.Forms.MessageBox.Show("평타공격");
        }

        public void MoveDown()
        {
            System.Windows.Forms.MessageBox.Show("아래");
        }

        public void MoveLeft()
        {
            System.Windows.Forms.MessageBox.Show("왼");
        }

        public void MoveRight()
        {
            System.Windows.Forms.MessageBox.Show("오");
        }

        public void MoveUp()
        {
            System.Windows.Forms.MessageBox.Show("위");
        }
    }
}
