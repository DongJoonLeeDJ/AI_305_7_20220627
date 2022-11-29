using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace HelloMyLastCSharp
{
    public class Book
    {
        public string Isbn { get; set; }
        public string Name { get; set; }
        public string Publisher { get; set; }
        public int Page { get; set; }

        public int UserId { get; set; }//책 빌린 자 ID
        public string UserName { get; set; }//책 빌린 자 이름
        public bool isBorrowed { get; set; }
        public DateTime BorrowedAt { get; set; }//언제 빌린건지

    }
}
