using ModelEF.DAO;
using ModelEF.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace TestUngDung.Areas.Admin.Controllers
{
    public class ProductController : Controller
    {
        // GET: Admin/Product
        public ActionResult Index(string searchString, int page = 1, int pageSize = 5)
        {
            var dao = new ProductDao();
            var model = dao.ListAllPaging(searchString, page, pageSize);

            return View(model);
        }
     
        [HttpGet]
        public ActionResult Detail(int id)
        {
            var menu = new ProductDao().ViewDetail(id);
            return View(menu);
        }
        [HttpGet]
        public ActionResult Create()
        {
            SetViewBag();
            return View();
        }
        [HttpPost]
        public ActionResult Create(Product product)
        {
            try
            {

                if (ModelState.IsValid)
                {
                    var dao = new ProductDao();
                    long id = dao.Find(product);
                    if (id > 0)
                    {
                        SetAlert("tạo mới sản phẩm thành công", "success");
                        return RedirectToAction("Index", "Product");
                    }
                    else
                    {
                        ModelState.AddModelError("", "thêm product ko thành công");
                    }
                }
                else
                {
                    SetViewBag();
                    return View();
                }
                return View("Index");
            }
            catch { return View(); }
        }
        protected void SetAlert(string message, string type)
        {
            TempData["AlertMessage"] = message;
            if (type.Equals("success"))
            {
                TempData["AlertType"] = "alert-success";
            }
            else if (type == "warning")
            {
                TempData["AlertType"] = "alert-warning";

            }
            else if (type.Equals("error"))
            {
                TempData["AlertType"] = "alert-danger";
            }
        }
        public void SetViewBag(long? selectedID =null)
        {
            var dao = new CategoryDao();
            ViewBag.Category_ID = new SelectList(dao.ListAll(), "ID", "Name", selectedID);
        }

    }
}
