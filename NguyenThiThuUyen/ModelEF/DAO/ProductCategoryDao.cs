using ModelEF.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ModelEF.DAO
{
   public class ProductCategoryDao
    {
        NguyenThiThuUyenContext db = null;
        public ProductCategoryDao()
        {
            db = new NguyenThiThuUyenContext();
        }
      

    }
}
