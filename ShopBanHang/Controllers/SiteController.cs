using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using MyClass1.DAO;
using MyClass1.Model;

namespace ShopBanHang.Controllers
{
    public class SiteController : Controller
    {
        // GET: Site
        public ActionResult Index(String slug = null)
        {
            LinkDAO linkDAO = new LinkDAO();
            ProductDAO productDAO = new ProductDAO();
            PostDAO postDAO = new PostDAO();
            if( slug == null)
            {
                return this.Home();
            }
            else
            {
                Link row_link = linkDAO.getRow(slug);
                if (row_link != null)
                {
                    string type = row_link.TypeLink;
                    switch (type)
                    {
                        case "category": return this.ProductCategory(slug);
                        case "topic": return this.PostTopic(slug);
                        case "page": return this.PostPage(slug);
                    }
                }
                else
                {
                    // chi tiet san pham 
                    Product product_row = productDAO.getRow(slug);
                    if (product_row != null)
                    {
                        return this.ProductDetail(slug);
                    }
                    else
                    {
                        // chi tiet bai viet
                        Post post_row = postDAO.getRow(slug);
                        if(post_row != null) 
                        {
                            return this.PostDetail(slug);
                        }
                        else
                        {
                            return this.Error404(slug);
                        }
                    }
                }
            }
            return this.Error404(slug);
        }
        public ActionResult Home()
        {
            return View("Home");
        }
        public ActionResult ProductCategory(String slug)
        {
            return View("ProductCategory");
        }
        public ActionResult ProductDetail(String slug)
        {
            return View("ProductDetail");
        }
        public ActionResult PostTopic(String slug)
        {
            return View("PostTopic");
        }
        public ActionResult PostPage(String slug)
        {
            return View("PostPage");
        }
        public ActionResult PostDetail(String slug)
        {
            return View("PostDetail");
        }
        public ActionResult Error404(String slug)
        {
            return View("Error404");
        }
    }
}