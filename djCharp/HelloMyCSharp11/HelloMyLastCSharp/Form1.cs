using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace HelloMyLastCSharp
{
    public partial class Form1 : Form
    {
        private bool checkIsBorrowed(Book b)
        {
            return b.isBorrowed;
        }
        public Form1()
        {
            InitializeComponent();
            toolStripStatusLabel1.Text
                = DateTime.Now.ToString("yyyy년 MM월 dd일 HH시 mm분 ss초");

            label5.Text = "";
            label6.Text = "";
            label7.Text = "";
            label8.Text = "";

            ScreenRefresh();

            DataGridViewCellEventHandler dgclick1 = (sender, e) =>
            {
                Book book = dataGridView1.CurrentRow.DataBoundItem as Book;
                textBox1.Text = book.Isbn;
                textBox2.Text = book.Name;
            };

            dataGridView1.CellClick += dgclick1;

            DataGridViewCellEventHandler dgclick2 = userDataGridViewCellClick;
            dataGridView2.CellClick += dgclick2;

        }

        private void userDataGridViewCellClick(object s, EventArgs e)
        {
            //이벤트를 발생시킨 주체 = s
            DataGridView thisGridView = s as DataGridView;
            User u = thisGridView.CurrentRow.DataBoundItem as User;
            textBox3.Text = u.Id.ToString();
        }


        private void timer1_Tick(object sender, EventArgs e)
        {
            toolStripStatusLabel1.Text
                = DateTime.Now.ToString("yyyy년 MM월 dd일 HH시 mm분 ss초");
        }

        private void 도서관리ToolStripMenuItem_Click(object sender, EventArgs e)
        {
            new Form2().ShowDialog(); //모달. 창에 꺼져야 밑에 코드 실행
            DataManager.Load(); //책을 추가했으니 다시 불러 온다.
            ScreenRefresh(); //도서 수 회원 수 등을 다시 리셋하는 함수
        }

        private void 사용자관리ToolStripMenuItem_Click(object sender, EventArgs e)
        {
            new Form3().ShowDialog(); //모달. 창에 꺼져야 밑에 코드 실행
            DataManager.Load(); //회원을 추가했으니 다시 불러 온다.
            ScreenRefresh(); //도서 수 회원 수 등을 다시 리셋하는 함수
        }

        private void ScreenRefresh()
        {
            //전체 도서 수
            label5.Text = DataManager.Books.Count.ToString();
            //전체 회원 수
            label6.Text = DataManager.Users.Count.ToString();
            //대출 중인 도서의 수
            //Where
            //Books에 데이터들 중에 isBorrowed가 true인 것만 모은다.
            //label7.Text = DataManager.Books.Where
            //    (x=>x.isBorrowed).Count().ToString();
            label7.Text = DataManager.Books.Where
                (checkIsBorrowed).Count().ToString();


            //연체 중인 도서의 수
            //빌리고 나서 7일 넘게 지난 경우
            label8.Text = DataManager.Books.Where(
                delegate (Book x)
                {
                    return x.isBorrowed && x.BorrowedAt.AddDays(7) < DateTime.Now;
                }
                ).Count().ToString();


            dataGridView1.DataSource = null;
            dataGridView2.DataSource = null;

            if (DataManager.Books.Count > 0)
                dataGridView1.DataSource = DataManager.Books;
            if (DataManager.Users.Count > 0)
                dataGridView2.DataSource = DataManager.Users;
        }

        private void button1_Click(object sender, EventArgs e)
        {
            if(textBox1.Text.Trim()=="")
                MessageBox.Show("isbn 없음");
            else if(textBox3.Text.Trim()=="")
                MessageBox.Show("사용자 id 입력해야 함");
            else
            {
                try
                {
                    Book b = DataManager.Books.Single
                        (x => x.Isbn == textBox1.Text);
                    if(b.isBorrowed)
                        MessageBox.Show("이미 다른 사람이 빌렸습니다.");
                    else
                    {
                        User u = DataManager.Users.Single
                            (x => x.Id.ToString() == textBox3.Text);
                        b.UserId = u.Id;
                        b.UserName = u.Name;
                        b.isBorrowed = true;
                        b.BorrowedAt = DateTime.Now;

                        ScreenRefresh();
                        DataManager.Save();
                        MessageBox.Show($"{b.Name}이가 {u.Name}님께 대여됨");
                    }

                }
                catch (Exception)
                {
                    MessageBox.Show("없는 책입니다.");
                }
            }
        }

        private void button2_Click(object sender, EventArgs e)
        {
            if (textBox1.Text.Trim() == "")
                MessageBox.Show("isbn 없음");
            else
            {
                try
                {
                    Book b = DataManager.Books.Single
                        (x => x.Isbn == textBox1.Text);
                    if (b.isBorrowed) //빌렸을 경우에만 반납됨
                    {
                        b.UserId = 0; //빌린 사람 없다는 뜻
                        b.UserName = "";
                        b.isBorrowed = false;
                        DateTime oldDay = b.BorrowedAt; //빌린 날짜
                        //현재 빌린 날짜 부분은 초기화함
                        b.BorrowedAt = new DateTime();

                        TimeSpan timeDiff = DateTime.Now - oldDay;

                        ScreenRefresh();
                        DataManager.Save();
                        if(timeDiff.Days > 7)
                            MessageBox.Show(b.Name+"연체 반납");
                        else
                            MessageBox.Show(b.Name+"정상 반납");
                        //MessageBox.Show($"{b.Name}이가 {u.Name}님께 대여됨");
                    }
                    else
                    {
                        MessageBox.Show("대여 상태 아님");
                    }

                }
                catch (Exception)
                {
                    MessageBox.Show("없는 책입니다.");
                }
            }
        }
    }
}
