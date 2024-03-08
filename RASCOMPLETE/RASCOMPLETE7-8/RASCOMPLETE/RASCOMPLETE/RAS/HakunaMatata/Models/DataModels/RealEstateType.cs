using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;

namespace HakunaMatata.Models.DataModels
{
    public partial class RealEstateType
    {
        public RealEstateType()
        {
            RealEstate = new HashSet<RealEstate>();
        }
       //tuyen wjbu vai
        public int Id { get; set; }

        [Required(ErrorMessage = "loại hình bất động sản không được để trống")]
        [StringLength(50, ErrorMessage = "Loại hình bất động sản không được vượt quá 50 ký tự")]
        public string RealEstateTypeName { get; set; }

        public virtual ICollection<RealEstate> RealEstate { get; set; }
    }
}
