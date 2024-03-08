using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;

namespace HakunaMatata.Models.DataModels
{
    public partial class News
    {
        public News()
        {
            Newspicture = new HashSet<Newspicture>();
        }

        public int Id { get; set; }

        [Required(ErrorMessage = "Title không được để trống.")]
        [StringLength(5000, ErrorMessage = "Policy không được vượt quá 5000 ký tự")]
        public string Title { get; set; }
        [Required(ErrorMessage = "Thân Bài không được để trống.")]
        [StringLength(5000, ErrorMessage = "Policy không được vượt quá 50 ký tự")]
        public string NewsBody { get; set; }
        public int AgentId { get; set; }

        public virtual Agent Agent { get; set; }
        public virtual ICollection<Newspicture> Newspicture { get; set; }
    }
}
