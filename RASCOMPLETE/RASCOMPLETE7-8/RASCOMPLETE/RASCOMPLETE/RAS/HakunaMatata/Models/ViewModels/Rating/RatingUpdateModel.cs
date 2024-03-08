using System.ComponentModel.DataAnnotations;

namespace HakunaMatata.Models.ViewModels
{
    public class RatingUpdateModel
    {
        public int RealEstateId { get; set; }
        public int StarPoint { get; set; }
    }
}