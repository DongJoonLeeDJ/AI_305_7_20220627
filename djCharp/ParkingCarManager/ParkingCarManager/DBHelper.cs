using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

//DAO 같은 부분 = DB에 직접 연결하고 
//CRUD 하는 부분
namespace ParkingCarManager
{
    //https://timeboxstory.tistory.com/10
    //이 링크대로만 하면 연결은 되고, 권한은 없음
    //보안 -> 로그인 -> 서버역할에 다 체크해줘야 다른 데서도 제어가 가능함!

    //db 연결하는 부분
    /*
     public static void ConnectDB()
        {//접속해주는 함수
            try
            {
                string connect = string.Format("Data Source={0};" +
                "Initial Catalog = {1};" +
                "Persist Security Info = True;"+
                "User ID=team;Password=1234",
                "192.168.0.84,1433", "Csharp_Team");
                conn = new SqlConnection(connect);
                conn.Open();
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex);
                Console.WriteLine("connect Fail");
            }
        }
     */
    //conn.ConnectionString = $"Data Source=192.168.0.111,1433; Initial Catalog = MYDB; Persist Security Info = True; User ID=user1; Password=1234";



    public class DBHelper
    {
        //DB연결 부분
        private static SqlConnection conn = new SqlConnection();
        //DB에 있는 데이터를 가져 오는 부분들
        public static SqlDataAdapter da;
        public static DataSet ds;
        public static DataTable dt;
        //db 열고 -> crud 수행 -> db 닫아줌
        private static void ConnectDB()
        {
            string dataSource = "local";
            string db = "MYDB";
            string security = "SSPI";
            conn.ConnectionString = string.Format
                ("Data Source=({0}); initial Catalog={1}; " +
                "integrated Security = {2};" +
                "Timeout=3", dataSource,db,security);
            conn = new SqlConnection(conn.ConnectionString);
            conn.Open();
        }

        //db에서 데이터를 읽어오는 부분
        //selectQuery() => parkingSpot값은 -1
        //selectQuery(n) => parkingSpot값은 n값이 들어감
        //자바에서 오버로딩이면 함수 2개를 만든다.
        public static void selectQuery(int parkingSpot=-1)
        {
            try
            {
                ConnectDB(); //db 연결

                SqlCommand cmd = new SqlCommand();
                cmd.Connection = conn; //어디에 커맨드 보낼지 지정
                if (parkingSpot == -1) //전체 조회
                    cmd.CommandText = "select * from parkingManager";
                else //특정 번호만 조회. 공간추가/삭제/주차/출차 체크 등에 쓰임
                    cmd.CommandText = "select * from parkingManager " +
                        "where parkingSpot = " + parkingSpot;
                da = new SqlDataAdapter(cmd);
                ds = new DataSet();
                da.Fill(ds, "ParkingManager");
                dt = ds.Tables[0];
            }
            catch (Exception e)
            {
                System.Windows.Forms.MessageBox.Show(e.Message+"select");
                DataManager.printLog("select"+e.StackTrace);
                return;
            }
            finally
            {
                conn.Close(); //db 연결 해제
            }
        }

        public static void updateQuery
            (string parkingSpotText, string carNumber,
            string driverName, string phoneNumber, bool isRemove)
        {
            //isRemove = 주차 및 출차 여부
            try
            {
                ConnectDB();
                SqlCommand cmd = new SqlCommand();
                cmd.Connection = conn;
                cmd.CommandType = CommandType.Text;
                string sqlcommand = "";
                if(isRemove)
                {
                    sqlcommand = "update parkingmanager set carnumber=''," +
                        "drivername='', phonenumber='', parkingtime=null where " +
                        "parkingspot=@p1";
                    //파라메터 값을 @에 실어서 보내는 방식
                    //sql injection(sql 삽입공격) 방지를 위함
                    cmd.Parameters.AddWithValue("@p1", parkingSpotText);

                }
                else
                {
                    sqlcommand = "update parkingmanager set carnumber=@p1," +
                        "drivername=@p2, phonenumber=@p3, parkingtime=@p4 where " +
                        "parkingspot=@p5";
                    //파라메터 값을 @에 실어서 보내는 방식
                    //sql injection(sql 삽입공격) 방지를 위함
                    cmd.Parameters.AddWithValue("@p1", carNumber);
                    cmd.Parameters.AddWithValue("@p2", driverName);
                    cmd.Parameters.AddWithValue("@p3", phoneNumber);
                    cmd.Parameters.AddWithValue("@p4", DateTime.Now.ToString
                        ("yyyy-MM-dd HH:mm:ss.fff"));
                    cmd.Parameters.AddWithValue("@p5", parkingSpotText);
                }
                cmd.CommandText = sqlcommand;
                cmd.ExecuteNonQuery();
            }
            catch (Exception e)
            {
                System.Windows.Forms.MessageBox.Show("update"+e.Message);
                DataManager.printLog("update" + e.StackTrace);
            }
            finally
            {
                conn.Close();
            }
        }

        private static void executeQuery(string parkingSpot, 
            string command)
        {
            string sqlcommand = "";
            if (command == "insert")
                sqlcommand =
                    "insert into parkingmanager(parkingspot) values (@p1)";
            else
                sqlcommand =
                    "delete from parkingmanager where parkingspot=@p1";

            try
            {
                ConnectDB();
                SqlCommand cmd = new SqlCommand();
                cmd.Connection = conn;
                cmd.CommandType = CommandType.Text;
                cmd.Parameters.AddWithValue("@p1", parkingSpot);
                cmd.CommandText = sqlcommand;
                cmd.ExecuteNonQuery();
            }
            catch (Exception e)
            {

            }
            finally
            {
                conn.Close();
            }


        }
        public static void deleteQuery(string parkingSpot)
        {
            executeQuery(parkingSpot, "delete");
        }
        public static void insertQuery(string parkingSpot)
        {
            executeQuery(parkingSpot, "insert");
        }

    }
}
