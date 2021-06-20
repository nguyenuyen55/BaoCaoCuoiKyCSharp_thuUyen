namespace ModelEF.Model
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("Product")]
    public partial class Product
    {
        public int ID { get; set; }

        [StringLength(150)]
        [DisplayName("Tên sản phẩm")]
        [Required(ErrorMessage = "Bạn chưa nhập tên sản phẩm")]

        public string Name { get; set; }
        [DisplayName("giá sản phẩm")]
        [Required(ErrorMessage = "Bạn chưa nhập giá sản phẩm")]

        public int? UnitCost { get; set; }
        [DisplayName("Số lượng sản phẩm")]
        [Required(ErrorMessage = "Bạn chưa nhập số lượng sản phẩm")]

        [Range(0,Int32.MaxValue,ErrorMessage ="Bạn phải nhập sso")]

        public int? Quantity { get; set; }

        [StringLength(150)]
        public string Image { get; set; }

        [StringLength(250)]
        

        public string Description { get; set; }

        public bool? Status { get; set; }

        [StringLength(50)]
        public string Category_ID { get; set; }

        public virtual Category Category { get; set; }
    }
}
