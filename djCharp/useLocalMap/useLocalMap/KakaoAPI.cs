using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Net;
using System.Text;
using System.Threading.Tasks;
using System.Web.Script.Serialization;

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

            //응답받기
            WebResponse response = request.GetResponse();
            //Using System.IO
            Stream stream = response.GetResponseStream();
            StreamReader reader = new StreamReader(stream, Encoding.UTF8);
            string json = reader.ReadToEnd();

            //using System.Web.Script.Serialization;
            JavaScriptSerializer js = new JavaScriptSerializer();

            //dynamic = js에서의 let같은 것
            dynamic dob = js.Deserialize<dynamic>(json);
            dynamic docs = dob["documents"];
            object[] buf = docs;
            int length = buf.Length;
            for(int i = 0; i<length; i++)
            {
                string lname = docs[i]["place_name"];
                double x = double.Parse(docs[i]["x"]);
                double y = double.Parse(docs[i]["y"]);
                list.Add(new Locale(lname, y, x));
            }
            return list;

        }
    }
}
