using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Text;
using System.Threading.Tasks;

namespace useLocalMap
{
    public class KakaoAPI
    {
        //클래스 메소드 만듦
        //KakaoAPI.Search("대구");
        public static List<Locale> Search(string text)
        {
            List<Locale> list = new List<Locale>();

            string site = "https://dapi.kakao.com/v2/local/search/keyword.json";
            string query = $"{site}?query={text}";
            string restApiKey = "894d02d154f5deca7c46014d9247a0ad";
            string Header = $"KakaoAK {restApiKey}";
            //Using System.Net
            WebRequest request = WebRequest.Create(query);
            request.Headers.Add("Authorization", Header);

            return list;

        }
    }
}
