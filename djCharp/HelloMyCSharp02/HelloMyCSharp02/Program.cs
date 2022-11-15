using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace HelloMyCSharp02
{
    enum 가위바위보
    {
       // 가위,바위=500,보
       가위,바위,보
    }
    internal class Program
    {

        static void Main(string[] args)
        {
            Console.WriteLine("1번");
            Console.WriteLine("안녕하세요");

            Console.WriteLine("2번");
            Console.WriteLine(10+20);
            Console.WriteLine(7/3);//2
            Console.WriteLine(7/3.0);//소수점 나옴 2.333
            Console.WriteLine(7%3);
            Console.WriteLine(7-3);
            Console.WriteLine(10*20);

            Console.WriteLine("3번");
            Console.WriteLine("10"+10);//1010
            Console.WriteLine('2'+100);//150 '2'=50
            Console.WriteLine("10"+'2'); //102

            Console.WriteLine("4번문제 입력받기");
            int mybirth = int.Parse(Console.ReadLine());
            Console.WriteLine("나는 " + mybirth + "생입니다.");

            Console.WriteLine("5번문제 입력받기");
            string myname = Console.ReadLine();
            Console.WriteLine("내 이름은 " + myname+"입니다.");

            Console.WriteLine("6번");
            int age = 30;
            string name = "이동준";
            Console.WriteLine("나는 \""+name +"\"입니다. \""+age+"\"대입니다.");
            Console.WriteLine($"나는 \"{name}\"입니다. \"{age}\"대입니다.");

            Console.WriteLine("7번");
            int myage = int.Parse(Console.ReadLine());
            Console.WriteLine(DateTime.Now.Year-myage+1);
            
            Console.WriteLine("8번");
            Console.WriteLine("현재 몇년도인가?");
            int nowYear = int.Parse(Console.ReadLine());
            Console.WriteLine("태어난 건 몇년도인가?");
            int bornYear = int.Parse(Console.ReadLine());
            Console.WriteLine(nowYear-bornYear+1);

            Console.WriteLine("9번");
            string input = Console.ReadLine();
            Console.WriteLine(input[0]);

            Console.WriteLine("10번");
            int w = int.Parse(Console.ReadLine());
            Console.WriteLine(w*w);

            Console.WriteLine("11번");
            int mynum = int.Parse(Console.ReadLine());
            if(mynum<0)
                Console.WriteLine("음수");
            
            Console.WriteLine("12번");
            int myinput = int.Parse(Console.ReadLine());
            if(myinput>0)
                Console.WriteLine("자연수");
            else
                Console.WriteLine("자연수 아님");

            Console.WriteLine("13번");
            Random r = new Random();
            int com = r.Next(3);//0이상 3미만의 숫자 아무거나
            if(com==0)
                Console.WriteLine("가위");
            else if(com==1)
                Console.WriteLine("바위");
            else if(com==2)
                Console.WriteLine("보"); //끝에 else를 안 적고 else if로 끝내도 됨

            Console.WriteLine("14번");
            int mychoice = int.Parse(Console.ReadLine());

            //상수를 쓴다.
            const int 가위 = 0;
            Console.WriteLine(가위바위보.가위); //가위 그대로 출력됨
            switch (mychoice)
            {
                case 가위: //가위
                    switch (com)
                    {
                        case 가위:
                            Console.WriteLine("비김");
                            break;
                        case 1:
                            Console.WriteLine("패배");
                            break;
                        case 2:
                            Console.WriteLine("승리");
                            break;
                        default:
                            break;
                    }
                    break;
                case (int)가위바위보.바위: //바위
                    switch (com)
                    {
                        case 가위:
                            Console.WriteLine("승리");
                            break;
                        case 1:
                            Console.WriteLine("비김");
                            break;
                        case 2:
                            Console.WriteLine("패배");
                            break;
                        default:
                            break;
                    }
                    break;
                case (int)가위바위보.보: //보
                    switch (com)
                    {
                        case 가위:
                            Console.WriteLine("패배");
                            break;
                        case 1:
                            Console.WriteLine("승리");
                            break;
                        case 2:
                            Console.WriteLine("비김");
                            break;
                        default:
                            break;
                    }
                    break;
                default:
                    Console.WriteLine("잘못된 값");
                    break;
            }

            Console.WriteLine("15번");
            if (com==mychoice)
                Console.WriteLine("비김");
            else if( (mychoice==(int)가위바위보.가위 && com== (int)가위바위보.보) 
                || (mychoice==1 && com==가위) 
                ||(mychoice == 2 && com == 1) ) //가위(0) -> 보(2), 바위(1) -> 가위(0), 보(2) -> 바위(1)
                Console.WriteLine("이김");
            else
                Console.WriteLine("짐");

            Console.WriteLine("16번");
            for(int i = 1; i<=10; i++)
                Console.WriteLine(i);

            Console.WriteLine("17번");
            int sum = 1;//sum=0;
            for (int i = 1; i <= 10; i++)
                sum *= i;

            Console.WriteLine("18번");
            for (int i = 1; i <= 10; i++)
                Console.WriteLine($"안녕하세요 {i}번째 손님");

            Console.WriteLine("19번");
            while(true)
            {
                Console.WriteLine("숫자 입력");
                int m = int.Parse(Console.ReadLine());
                if (m == 0)
                    break; //반복문 종료
                Console.WriteLine(m*m);
            }
            Console.WriteLine("20-1번");

            sum = 1;
            for (int i = 1; i <= 10; i++)
            {
                if(i%2!=0)
                    sum *= i;
            }
            Console.WriteLine("sum="+sum);
            Console.WriteLine("20-2번");
            sum = 1;
            for (int i = 1; i <= 10; i++)
            {
                if (i % 2 == 0)
                    continue;
                sum *= i;
            }
            Console.WriteLine("sum=" + sum);

        }
    }
}
