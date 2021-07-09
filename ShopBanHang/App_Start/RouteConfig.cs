using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.Routing;

namespace ShopBanHang
{
    public class RouteConfig
    {
        public static void RegisterRoutes(RouteCollection routes)
        {
            routes.IgnoreRoute("{resource}.axd/{*pathInfo}");
            routes.MapRoute(
                name: "LienHe",
                url: "lien-he",
                defaults: new { controller = "LienHe", action = "Index", id = UrlParameter.Optional }
            );
            routes.MapRoute(
                name: "DangNhap",
                url: "dang-nhap",
                defaults: new { controller = "KhachHang", action = "Login", id = UrlParameter.Optional }
            );
            routes.MapRoute(
               name: "DangKi",
               url: "dang-ki",
               defaults: new { controller = "KhachHang", action = "Register", id = UrlParameter.Optional }
           );
            routes.MapRoute(
              name: "Giohang",
              url: "gio-hang",
              defaults: new { controller = "Giohang", action = "Index", id = UrlParameter.Optional }
          );
            routes.MapRoute(
              name: "SiteSlug",
              url: "{slug}",
              defaults: new { controller = "Site", action = "Index", id = UrlParameter.Optional }
          );
            routes.MapRoute(
                name: "Default",
                url: "{controller}/{action}/{id}",
                defaults: new { controller = "Site", action = "Index", id = UrlParameter.Optional }
            );
        }
    }
}
