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
