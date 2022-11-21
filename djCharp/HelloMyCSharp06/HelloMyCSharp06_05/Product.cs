using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace HelloMyCSharp06_05
{
    public class Product
    {
        public string Name { get; set; }
        public int Price { get; set; }
        //이 생성자는 기본 생성자(=아무 것도 하지 않음)
        //생성자를 적지 않아도 이건 기본적으로 내장되어 있음

        //생성자 역시 오버로딩이 된다.
        //매개변수의 개수나 타입에 따라서 여러 개의 생성자가
        //만들어 질 수 있다.
        public Product()
        {

        }
        //내가 생성자를 하나 만들면 
        //기본 생성자가 지워진다.
        //따라서 기본 생성자도 같이 쓰고 싶다면, 
        //직접 적어줘야 한다.
        public Product(string Name)
        {
            this.Name = Name;
        }
        public Product(int Price )
        {
            this.Price = Price;
        }
        public Product(string name, int price)
        {
            this.Name=name;
            this.Price = price;
        }
    }
}
