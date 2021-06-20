using ModelEF.Model;
using System;
using PagedList;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ModelEF.DAO
{
   public class ProductDao
    {
        private NguyenThiThuUyenContext db;
        public ProductDao()
        {
            db = new NguyenThiThuUyenContext();
        }
        public List<Product> ListByCategoryId(string cateID)
        {
            return db.Products.Where(x => x.Category_ID.Equals(cateID)).ToList();
        }
        public IEnumerable<Product> ListAllPaging(string searchString, int page, int pageSize)
        {
            IQueryable<Product> model = db.Products;

            if (!string.IsNullOrEmpty(searchString))
            {
                model = model.Where(x => x.Name.Contains(searchString));

            }
            return model.OrderBy(x => x.Quantity).ThenByDescending(x=>x.UnitCost).ToPagedList(page, pageSize);
        }
        public IEnumerable<Product> List()
        {
            IQueryable<Product> model = db.Products;
            return model;
        }
            public Category FindProduct(string id)
        {
            return db.Categories.Find(id);
        }
        public Product ViewDetail(int id)
        {
            return db.Products.Find(id);
        }
        public long Find(Product entity)
        {
            db.Products.Add(entity);
            db.SaveChanges();
            return entity.ID;

        }
        
    }
}
