using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;

namespace HakunaMatata.Models.DataModels
{
    public partial class Level
    {
        public Level()
        {
            Agent = new HashSet<Agent>();
        }

        public int Id { get; set; }

        [Required(ErrorMessage = "Chức vụ không được để trống")]
        [StringLength(50, ErrorMessage = "Chức vụ không được vượt quá 50 ký tự")]
        public string LevelName { get; set; }

        public virtual ICollection<Agent> Agent { get; set; }
    }
}
