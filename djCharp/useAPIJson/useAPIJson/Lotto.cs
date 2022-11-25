using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace useAPIJson
{
    public class Lotto
    {
        public string drwNo1 { get; set; } //1번째자리
        public string drwNo2 { get; set; } //2번째자리
        public string drwNo3 { get; set; } //3번째자리
        public string drwNo4 { get; set; } //4번째자리
        public string drwNo5 { get; set; } //5번째자리
        public string drwNo6 { get; set; } //6번째자리
        public string bnusNo { get; set; } //보너스 번호
        public string drwNo { get; set; } //회차
        public string drwNoDate { get; set; } //날짜

        //https://www.dhlottery.co.kr/common.do?method=getLottoNumber&drwNo=1000
    }
}
