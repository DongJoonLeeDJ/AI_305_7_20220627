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
    public partial class Form2 : Form
    {
        public Form2()
        {
            InitializeComponent();
            dataGridView1.DataSource = null;
            if (DataManager.Books.Count > 0)
                dataGridView1.DataSource = DataManager.Books;
        }

        private void button1_Click(object sender, EventArgs e)
        {
            //책 추가
            bool existBook = false; //책 존재 여부

            foreach(var item in DataManager.Books)
            {
                if(item.Isbn == textBox1.Text)
                {
                    existBook = true;
                    break;
                }
            }
            if(existBook)
                MessageBox.Show("이미 존재하는 도서입니다.");
            else
            {
                Book book = new Book();
                book.Isbn = textBox1.Text;
                book.Name = textBox2.Text;
                book.Publisher = textBox3.Text;
                //텍스트로 인한 오류 줄이고 싶다면
                //try catch나 int.TryParse를 쓰면 된다.
                book.Page = int.Parse(textBox4.Text);
                DataManager.Books.Add(book);

                dataGridView1.DataSource = null;
                dataGridView1.DataSource = DataManager.Books;
                DataManager.Save(); //Save해야 XML에 반영이 됨
            }
        }

        private void button2_Click(object sender, EventArgs e)
        {
            Book book = null;
            for(int i = 0; i<DataManager.Books.Count; i++)
            {
                if(DataManager.Books[i].Isbn == textBox1.Text)
                {
                    book = DataManager.Books[i];
                    book.Name = textBox2.Text;
                    book.Publisher = textBox3.Text;
                    book.Page = int.Parse(textBox4.Text);

                    dataGridView1.DataSource = null;
                    dataGridView1.DataSource= DataManager.Books;
                    DataManager.Save();
                }
            }
            if(book==null)
                MessageBox.Show("없는 책입니다.");
        }

        private void button3_Click(object sender, EventArgs e)
        {
            bool existBook = false;
            for(int i = 0; i<DataManager.Books.Count;i++)
            {
                if (DataManager.Books[i].Isbn == textBox1.Text)
                {
                    //DataManager.Books.RemoveAt(i);
                    DataManager.Books.Remove(DataManager.Books[i]);
                    existBook = true;
                }
            }
            if(existBook == false)
                MessageBox.Show("없는 책입니다.");
            else
            {
                dataGridView1.DataSource = null;
                if(DataManager.Books.Count > 0)
                    dataGridView1.DataSource = DataManager.Books;
                DataManager.Save();
            }
        }

        private void dataGridView1_CellClick(object sender, DataGridViewCellEventArgs e)
        {
            Book book = dataGridView1.CurrentRow.DataBoundItem as Book;
            textBox1.Text = book.Isbn;
            textBox2.Text = book.Name;
            textBox3.Text = book.Publisher;
            textBox4.Text = book.Page.ToString();
        }
    }
}
