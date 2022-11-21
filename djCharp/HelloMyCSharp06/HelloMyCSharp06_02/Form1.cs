using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace HelloMyCSharp06_02
{
    public partial class Form1 : Form
    {
        public List<GameCharacter> gamers 
            = new List<GameCharacter>(); //게임 캐릭터들 저장함
        public Form1()
        {
            InitializeComponent();
        }
        private void button1_Click(object sender, EventArgs e)
        {
            GameCharacter g = new GameCharacter();
            g.id = textBox1.Text;
            gamers.Add(g); //게임 캐릭터 리스트에 추가

            string gamerList = "";
            foreach (var item in gamers)
                gamerList += item.id + Environment.NewLine;
            MessageBox.Show(gamerList);
        }

        private void button2_Click(object sender, EventArgs e)
        {
            MessageBox.Show("이 게임의 총 유저 수 : " 
                + GameCharacter.Count); 
            //Count 값은 인스턴스 추가 관계없이 동작함
        }
    }
}
