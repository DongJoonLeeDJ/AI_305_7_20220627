using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace HelloMyCSharp01_09
{
    internal class Program
    {
        static void Main(string[] args)
        {
            int[] numbers = { 1, 2, 3 };
            int[] numbers2 = new int[3];//변수로 크기 잡는 거 가능
            numbers2[0] = 1;
            numbers2[1] = 2;
            numbers2[2] = 3;
            //2차원 배열
            //2행 3열. 2줄 3칸 총 6칸
            //이런 모양이다 ▽
            //ㅁㅁㅁ
            //ㅁㅁㅁ
            int[,] numbers_2 = new int[2, 3];
            numbers_2[0,0] = 1;
            numbers_2[0, 1] = 2;
            numbers_2[0, 2] = 3;
            numbers_2[1, 0] = 4;
            numbers_2[1, 1] = 5;
            numbers_2[1, 2] = 6;

            //for문이랑 while문으로도 되고
            //foreach문이라는 것도 됨
           for(int i = 0; i<numbers.Length;i++)
                Console.WriteLine(numbers[i]);

            //자바의 for(int a : numbers) 똑같음
            //Js의 for(let item of numbers)똑같음

            //var는 in 뒤에 있는 것의
            //타입에 따라서 타입 결정됨
            //여기선 numbers가 int 배열이므로
            //var는 int가 됨
            //자바스크립트의 var랑은 다름
            //자바스크립트의 var는 타입이
            //유동적이다.
            //c#은 한 번 정해지면 안 바뀜

            var a = 10;//한 번 int로 정해지면
            a = 5;
            //a = "10"; //다른 타입으로 변경 안 됨

            dynamic b = 10;
            b = "10"; //js의 var나 let같은 것

            //배열이나 ArrayList의 길이만큼
            //반복문 돈다
            //item은 그 배열 안에 있는 값
            //장점 : 반복문을 쉽게 돌린다.
            //단점 : 인덱스가 필요할 땐 쓸 필요 없음
            foreach (var item in numbers)
            {
                Console.WriteLine(item);
            }

            //2차원 배열 반복문
            //numbers_2.GetLength(0) : 2
            //numbers_2.GetLength(1) : 3
            for (int i = 0; i<numbers_2.GetLength(0); i++)
            {
                for(int j =0; j<numbers_2.GetLength(1); j++)
                    Console.WriteLine($"[{i},{j}]={numbers_2[i,j]}");
            }
        }
    }
}
