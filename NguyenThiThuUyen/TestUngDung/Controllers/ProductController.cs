using ModelEF.DAO;
using ModelEF.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace TestUngDung.Controllers
{
    public class ProductController : Controller
    {
        // GET: Product
        public ActionResult Index()
        {
            return View();
        }
        [ChildActionOnly]
        public PartialViewResult ProductCategory()
        {
            var model = new CategoryDao().ListAll();
            return PartialView(model);
        }
        public ActionResult Category(string ID)
        {
            var category = new CategoryDao().ViewDetail(ID);
            ViewBag.Category = category;
            var model = new ProductDao().ListByCategoryId(ID);
            return View(model);
        }
    }
}