using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;

namespace HakunaMatata.Models.DataModels
{
    public partial class Faq
    {
        public int Id { get; set; }

        [Required(ErrorMessage = "câu hỏi không được để trống.")]
        [StringLength(5000, ErrorMessage = "Câu hỏi không được vượt quá 5000 ký tự")]  
        public string Question { get; set; }

        [Required(ErrorMessage = "câu trả lời không được để trống.")]
        [StringLength(5000, ErrorMessage = "Câu trả lời không được vượt quá 5000 ký tự")]
        public string Answer { get; set; }
    }
}
