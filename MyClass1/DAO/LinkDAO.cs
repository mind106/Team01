using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using MyClass1.Model;

namespace MyClass1.DAO
{
    public class LinkDAO
    {
        MyDbContext db = null;
        public LinkDAO()
        {
            db = new MyDbContext();
        }

        public Link getRow(String slug)
        {
            Link row = db.Links.Where(m => m.Slug == slug).FirstOrDefault();
            return row;
        }
    }
}
