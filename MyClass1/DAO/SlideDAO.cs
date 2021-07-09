using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using MyClass1.Model;

namespace MyClass1.DAO
{
    public class SliderDAO
    {
        MyDbContext db = null;
        //Truy van CSDL
        public SliderDAO()
        {
            db = new MyDbContext();
        }
        // Truy van lay ra nhieu mau tin
        public List<Slider> getList(String position)
        {
            List<Slider> list = db.Sliders
                .Where(m => m.Position == position && m.Status == 1)
                .OrderBy(m => m.Orders)
                .ToList();
            return list;
        }
    }
}
