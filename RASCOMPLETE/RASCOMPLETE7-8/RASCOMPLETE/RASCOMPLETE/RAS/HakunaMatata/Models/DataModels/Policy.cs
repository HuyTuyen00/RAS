using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;

namespace HakunaMatata.Models.DataModels
{
    public partial class Policy
    {
        public int Id { get; set; }
        [Required(ErrorMessage = "Policy không được để trống.")]
        [StringLength(50, ErrorMessage = "Policy không được vượt quá 50 ký tự")]
        public string PolicyContent { get; set; }
    }
}
