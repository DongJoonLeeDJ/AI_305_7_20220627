using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ParkingCarManager
{
    public class ParkingCar
    {
        //주차공간번호(PK)
        public int ParkingSpot { get; set; }
        //차번호
        public string carNumber { get; set; }
        //운전자명
        public string driverName { get; set; }
        //운전자연락처
        public string phoneNumber { get; set; }
        //주차시간
        public DateTime parkingTime { get; set; }
    }
}
