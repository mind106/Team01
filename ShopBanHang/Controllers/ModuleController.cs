using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using MyClass1;
using MyClass1.DAO;
using MyClass1.Model;

namespace ShopBanHang.Controllers
{
    public class ModuleController : Controller
    {

        // GET: Module
        public ActionResult MainMenu()
        {
            MenuDAO menuDAO = new MenuDAO();
            return View("MainMenu", menuDAO.getList(0));
        }
        public ActionResult SlideShow()
        {
            SliderDAO sliderDAO = new SliderDAO();
            var list = sliderDAO.getList("slideshow");
            return View("SlideShow",list);
        }
    }
}