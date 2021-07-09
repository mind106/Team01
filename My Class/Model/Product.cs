namespace My_Class.Model
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    public partial class Product
    {
        public int Id { get; set; }

        public int CatId { get; set; }

        [Required]
        public string Name { get; set; }

        [Required]
        public string Slug { get; set; }

        [Column(TypeName = "text")]
        [Required]
        public string Detail { get; set; }

        public double PriceBuy { get; set; }

        [Required]
        [StringLength(255)]
        public string Img { get; set; }

        [Required]
        [StringLength(155)]
        public string MetaKey { get; set; }

        [Required]
        [StringLength(155)]
        public string MetaDesc { get; set; }

        public int? Created_By { get; set; }

        public DateTime? Created_At { get; set; }

        public int? Updated_By { get; set; }

        public DateTime? Updated_At { get; set; }

        public int? Status { get; set; }
    }
}
