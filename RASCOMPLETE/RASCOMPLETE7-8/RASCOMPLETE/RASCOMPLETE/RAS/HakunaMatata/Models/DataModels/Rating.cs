using System;
using System.Collections.Generic;

namespace HakunaMatata.Models.DataModels
{
    public class Rating
    {
        public int Id { get; set; }
        public int AgentId { get; set; }
        public int RealEstateId { get; set; }
        public int StarPoint { get; set; }
    }
}
