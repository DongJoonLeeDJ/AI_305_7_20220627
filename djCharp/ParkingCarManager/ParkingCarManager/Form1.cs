using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace ParkingCarManager
{
    //뷰 같은 곳
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
            //프로그램 시작하자마자 현재 시간을 표시함
            label1.Text = DateTime.Now.ToString
                ($"yyyy년 MM월 dd일 HH시 mm분 ss초");

            try
            {
                //+"" 하든지 .ToString() 하기
                textBox1.Text = DataManager.Cars[0].ParkingSpot + "";
                textBox2.Text = DataManager.Cars[0].carNumber;
                textBox3.Text = DataManager.Cars[0].driverName;
                textBox4.Text = DataManager.Cars[0].phoneNumber;
                textBox5.Text = textBox1.Text;
            }
            catch (Exception)
            {
            }
            //Cars 길이가 0 인데,
            //DataSource로 넣으려고 하면 셀 선택시 오류 남
            //셀 : datagridview의 칸들을 의미(엑셀의 셀처럼)
            if (DataManager.Cars.Count > 0)
                dataGridView1.DataSource = DataManager.Cars;
        }

        private void button1_Click(object sender, EventArgs e)
        {
            //WriteLog("주차");
            if(textBox1.Text.Trim()=="")
                MessageBox.Show("주차 공간 번호 입력하세요(주차)");
            else if(textBox2.Text.Trim()=="")
                MessageBox.Show("차량 번호 입력해주세요.");
            else
            {
                try
                {
                    //Single = List에서 원하는 거 하나만 가져오는 것
                    //값을 갖고 오는 게 아니고 참조값을 가져옴
                    //즉 car를 바꾸면 Cars 안에 있는 내용도 같이 바뀜
                    //만약 못 찾으면 catch로 빠진다.
                    //즉 엉뚱한 공간에 주차하려고 하면 catch로 빠짐
                    ParkingCar car =
                        DataManager.Cars.Single
                        (x => x.ParkingSpot.ToString() == textBox1.Text);
                    //공간이 있는 데 이미 그 공간에 차가 있다면?
                    if(car.carNumber.Trim() != "")
                        MessageBox.Show("해당 공간에 이미 차가 있습니다.");
                    else
                    {
                        car.carNumber = textBox2.Text;
                        car.driverName = textBox3.Text;
                        car.phoneNumber = textBox4.Text;
                        car.parkingTime = DateTime.Now;

                        //데이터 그리드 뷰에 반영
                        dataGridView1.DataSource = null;
                        dataGridView1.DataSource = DataManager.Cars;

                        DataManager.Save(textBox1.Text, textBox2.Text,
                            textBox3.Text, textBox4.Text);//끝에 bool생략 = 주차
                        string contents = $"주차 공간 {textBox1.Text}에" +
                            $"{textBox2.Text}차를 주차했습니다.";
                        WriteLog(contents);
                        MessageBox.Show(contents);
                    }
                }
                catch (Exception)
                {
                    MessageBox.Show($"주차공간 {textBox1.Text}은/는 없습니다.");
                    WriteLog($"주차공간 {textBox1.Text}은/는 없습니다.");
                }
            }

        }

        private void button2_Click(object sender, EventArgs e)
        {
            WriteLog("출차");
        }

        private void button3_Click(object sender, EventArgs e)
        {

        }

        private void button4_Click(object sender, EventArgs e)
        {

        }

        private void button5_Click(object sender, EventArgs e)
        {

        }

        private void button6_Click(object sender, EventArgs e)
        {

        }


        private void WriteLog(string contents)
        {
            string log
                = $"[{DateTime.Now.ToString("yyyy/MM/dd hh:mm:ss")}]" +
                $"{contents}";
            DataManager.printLog(log); //파일에 적기
            listBox1.Items.Insert(0, log); //화면에 적기

        }

        private void timer1_Tick(object sender, EventArgs e)
        {
            label1.Text = DateTime.Now.ToString
                ($"yyyy년 MM월 dd일 HH시 mm분 ss초");
        }

        private void dataGridView1_CellClick(object sender, DataGridViewCellEventArgs e)
        {

        }
    }
}
