using System;
using System.Collections.Generic;
using System.Data;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

//컨트롤러 같은 곳
namespace ParkingCarManager
{
    //메소드들은 전부 클래스 메소드
    //인스턴스 따로 만들거나 상속받을 게 없다.
    //하나의 메소드만 쓰면 된다.
    //하나의 변수만 쓸 것
    public class DataManager
    {
        //자동차들 저장하는 List 변수
        public static List<ParkingCar> Cars
            = new List<ParkingCar>();

        //정적 생성자
        //딱 한 번만 호출
        //DataManager 관련된 호출이 보이면
        //(DataManager에 접근하려고 할 때)
        //그 때 호출됨
        static DataManager()
        {
            Load();
        }

        public static void Load()
        {
            try
            {
                DBHelper.selectQuery();
                Cars.Clear();
                foreach(DataRow item in DBHelper.dt.Rows)
                {
                    ParkingCar car = new ParkingCar();
                    car.ParkingSpot = int.Parse(item["parkingspot"].ToString());
                    car.carNumber = item["carnumber"].ToString();
                    car.driverName = item["drivername"].ToString();
                    car.phoneNumber = item["phonenumber"].ToString();
                    car.parkingTime = item["parkingtime"].ToString() == "" ?
                        new DateTime() /*DateTime의 기본 값*/:
                        DateTime.Parse(item["parkingtime"].ToString());
                    Cars.Add(car);
                }
            }
            catch (Exception e)
            {
                System.Windows.Forms.MessageBox.Show(e.Message+"load");
                printLog(e.StackTrace + "load");
            }
        }
        //파일에 내용 적는 것
        public static void printLog(string contents)
        {
            //ParkingHistory 폴더
            DirectoryInfo di = new DirectoryInfo("ParkingHistory");
            if (di.Exists == false) //해당 폴더 없다면
                di.Create(); //폴더 생성함

            //ParkingHistory 폴더 안에 ParkingHistory.txt에 글을 쓸 것
            //끝에 붙은 true 의미
            //append를 한다. 즉 새로운 내용을 뒤에 추가한다는 뜻
            using (StreamWriter w = new StreamWriter
                ("ParkingHistory\\ParkingHistory.txt", true))
            {
                w.WriteLine(contents);
            }
        }
    }
}
