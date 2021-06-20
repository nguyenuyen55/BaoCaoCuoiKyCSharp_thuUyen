using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.Routing;

namespace TestUngDung
{
    public class RouteConfig
    {
        public static void RegisterRoutes(RouteCollection routes)
        {
            routes.IgnoreRoute("{resource}.axd/{*pathInfo}");
            routes.MapRoute(
              name: "Danh mục sản phẩm",
              url: "product/{ID}",
              defaults: new { controller = "Product", action = "Category", id = UrlParameter.Optional }, namespaces: new[] { "TestUngDung.Controllers" }
          );
        
            routes.MapRoute(
              name: "Default",
              url: "{controller}/{action}/{id}",
              defaults: new { controller = "Home", action = "Index", id = UrlParameter.Optional }, namespaces: new[] { "TestUngDung.Controllers" }
          );
          
        }
    }
}
