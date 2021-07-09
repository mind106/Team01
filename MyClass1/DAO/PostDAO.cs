using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using MyClass1.Model;

namespace MyClass1.DAO
{
    public class PostDAO
    {
        MyDbContext db = null;
        public PostDAO()
        {
            db = new MyDbContext();
        }

        public Post getRow(String slug)
        {
            Post row = db.Posts.Where(m => m.Slug == slug && m.Status == 1).FirstOrDefault();
            return row;
        }
    }
}
