using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using MyClass1.Model;

namespace MyClass1.DAO
{
    public class ProductDAO
    {
        MyDbContext db = null;
        public ProductDAO()
        {
            db = new MyDbContext();
        }

        public Product getRow(String slug)
        {
            Product row = db.Products.Where( m=> m.Slug == slug && m.Status==1).FirstOrDefault();
            return row;
        }
    }
}
