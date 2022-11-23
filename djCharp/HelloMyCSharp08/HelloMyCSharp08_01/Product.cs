using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace HelloMyCSharp08_01
{
    public class Product : IComparable<Product>
    {
        //IComparable 인터페이스는 CompareTo를 반드시 구현하라는
        //규칙을 부여한 것
        public int id { get; set; }
        public string name { get; set; }
        public int price { get; set; }
        //IComparable<Product> 대신 IComparable만 적으면
        //public int CompareTo(object other) 매개변수가 object가 됨
        //그러면 별도의 형변환을 해줘야 함...
        public int CompareTo(Product other)
        {
            //이 값이 음수,0,양수냐에 따라서 정렬이 달라짐
            //가격 오름 차순
            //return price.CompareTo(other.price);
            //throw new NotImplementedException(); //미구현 오류

            //가격 내림 차순
            //return -1*price.CompareTo(other.price);
            //return other.price.CompareTo(price);

            //id순으로 하고 싶다면?
            return id.CompareTo(other.id);
        }
    }
}
