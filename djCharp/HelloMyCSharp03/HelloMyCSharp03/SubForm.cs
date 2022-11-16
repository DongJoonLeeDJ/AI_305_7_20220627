using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace HelloMyCSharp03
{
    public partial class SubForm : Form
    {
        public SubForm()
        {
            InitializeComponent();
            //화면을 그리고 난 뒤에, 구성 요소의 값을 바꿀 수 있다.
            //구성 요소 = 컴포넌트 혹은 컨트롤
            //ex) 버튼이 3개 있다 = 컴포넌트가 3개 있다
            //= 컨트롤이 3개 있다 = 구성요소가 3개 있다.
            label_output.Text = "0";

            //2개의 컴포넌트(=컨트롤)을 추가한 것
            //디자인창에서 추가한 게 아니고 코드상에서 추가한 것

            //클래스의 다형성 이용함
            //왼쪽은 조상 클래스, 오른쪽은 자손 클래스
            Button b1 = new CircularButton();
            b1.Size = new System.Drawing.Size(100, 100); //사이즈 조절
            b1.Location = new Point(200, 10); //위치 조절
            b1.Text = "첫번째 원";
            CircularButton b2 = new CircularButton();
            b2.Size = new System.Drawing.Size(100, 100);
            b2.Location = new Point(100, 100);
            b2.Text = "두번째 원";
            //화룡점정코드. 이거 없으면 화면에 안 뜬다.
            //Controls가 뭐냐면 Form창의 컴포넌트들을 의미함
            //여기서 추가해주지 않으면 추가가 안 된다.
            Controls.Add(b1);
            Controls.Add(b2);

        }
        //생성자를 오버로딩함
        //Form 역시도 클래스이기 때문에
        //클래스의 생성자가 갖는 특징을 갖는다.
        public SubForm(string txt)
        {
            InitializeComponent();
            label_output.Text =
                $"{txt}님 환영합니다.";
        }
    }
}
