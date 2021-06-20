using ModelEF.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ModelEF.DAO
{
   public class CategoryDao
    {
        private NguyenThiThuUyenContext db;
        public CategoryDao() { 
            db = new NguyenThiThuUyenContext();
        }
        public List<Category> ListAll()
        {
            return db.Categories.ToList();
        }
        public Category ViewDetail(string id)
        {
            return db.Categories.Find(id);
        }
    }
}
