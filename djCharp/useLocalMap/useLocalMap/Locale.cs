using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace useLocalMap
{
    //위치정보 (위치이름, 그 위치의 좌표들)
    public class Locale
    {
        public string name { get; set; }
        public double Lat { get; set; } //Y
        public double Lng { get; set; } //X

        public Locale(string name, double lat, double lng)
        {
            this.name = name;
            Lat = lat;
            Lng = lng;
        }
        public override string ToString()
        {
            return name; //String으로 변환시 이름만 리턴
        }
    }
}
