using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using MyClass1.Model;


namespace MyClass1.DAO
{
    public class MenuDAO
    {
        MyDbContext db = null;
        //Truy van CSDL
        public MenuDAO()
        {
            db = new MyDbContext();
        }
        // Truy van lay ra nhieu mau tin
        public List<Menu> getList(int? parentid=0)
        {
            List<Menu> list = db.Menus
                .Where(m=>m.ParentId == parentid && m.Status ==1)
                .OrderBy(m=>m.Orders)
                .ToList();
            return list;
        }
    }
}
