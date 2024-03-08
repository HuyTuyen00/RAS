using HakunaMatata.Models.DataModels;
using System;
using System.ComponentModel.DataAnnotations;

namespace HakunaMatata.Models.ViewModels
{
    public class VM_News
    {
        public int Id { get; set; }
        public string Title { get; set; }
        public string NewsBody { get; set; }
        public string UrlImage { get; set; }

        public string AgentName { get; set; }

        public virtual Agent Agent { get; set; }
    }
}
