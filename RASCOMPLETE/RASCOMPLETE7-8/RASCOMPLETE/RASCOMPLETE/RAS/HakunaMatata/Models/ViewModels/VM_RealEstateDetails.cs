using HakunaMatata.Models.DataModels;
using Microsoft.AspNetCore.Http;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Globalization;
using Twilio.TwiML.Voice;

namespace HakunaMatata.Models.ViewModels
{
    public class VM_RealEstateDetails : IValidatableObject
    {
        public int Id { get; set; }

        [Required(ErrorMessage = "Tiêu đề không được bỏ trống!")]
        public string Title { get; set; }

        [Required(ErrorMessage = "Địa chỉ không được bỏ trống!")]
        public string? Address { get; set; }

        [Required(ErrorMessage = "Giá phòng không được bỏ trống")]
        [DataType(DataType.Currency)]
        [Range(1, 1000, ErrorMessage = "Vui lòng nhập số lớn hơn {1} nhỏ hơn 1000")]
        public decimal? Price { get; set; }

        [Range(1, 1000, ErrorMessage = "Vui lòng nhập số lớn hơn {1} nhỏ hơn 1000")]
        [Required(ErrorMessage = "Diện tích không được bỏ trống!")]
        public int? Acreage { get; set; }

        [Required(ErrorMessage ="Số điện thoại liên lạc không được để trống")]
        public string ContactNumber { get; set; }

        public string PostTime { get; set; }
        public string LastUpdate { get; set; }

        [Required(ErrorMessage = "Ngày bắt đầu không được bỏ trống!")]
        public string BeginTime { get; set; }
        public string BackupBeginTime { get; set; }

        [Required(ErrorMessage = "Ngày hết hạn không được bỏ trống!")]
        public string ExprireTime { get; set; }
        public string BackupExpireTime { get; set; }

        [Required(ErrorMessage = "Số Lượng phòng không được để trống")]
        [Range(1,1000, ErrorMessage = "Vui lòng nhập số lớn hơn {1} nhỏ hơn 1000")]
        public int? RoomNumber { get; set; }

        public string Description { get; set; }
        public int AgentId { get; set; }
        public string AgentName { get; set; }
        public string Avatar { get; set; }
        public string Zalo { get; set; }
        public string Facebook { get; set; }
        public List<string> ImageUrls { get; set; }
        public List<Picture> Pictures { get; set; }
        public bool HasPrivateWc { get; set; }
        public bool HasMezzanine { get; set; }
        public bool AllowCook { get; set; }
        public bool FreeTime { get; set; }
        public bool SecurityCamera { get; set; }
        public decimal? WaterPrice { get; set; }
        public decimal? ElectronicPrice { get; set; }
        public decimal? WifiPrice { get; set; }
        public decimal? Latitude { get; set; }
        public decimal? Longtitude { get; set; }
        public int RealEstateTypeId { get; set; }
        public bool IsActive { get; set; }
        public bool IsConfirm { get; set; }
        public string Status { get; set; }
        public bool IsFreeWater { get; set; }
        public bool IsAvailable { get; set; }
        public bool IsFreeElectronic { get; set; }
        public bool IsFreeWifi { get; set; }
        [NotMapped]
        public List<Result> RecommmendList { get; set; }
        [NotMapped]
        public List<IFormFile> Files { get; set; }

        public IEnumerable<ValidationResult> Validate(ValidationContext validationContext)
        {
            bool isValid;
            DateTime beginDate, expireDate;

            //isValid = DateTime.TryParse(BeginTime, out beginDate);
            isValid = DateTime.TryParseExact(BeginTime, "MM/dd/yyyy",
    CultureInfo.CurrentCulture, DateTimeStyles.None, out beginDate);
            if (!isValid)
            {
                yield return new ValidationResult(errorMessage: "Giá trị không hợp lệ!", memberNames: new[] { "BeginTime" });
            }
            else
            {
                TimeSpan d1 = DateTime.Now.Subtract(beginDate);
                if (d1.TotalDays > 365 || d1.TotalDays < -365)  //start time < or > 1 year from current day => invalid
                {
                    yield return new ValidationResult(errorMessage: "Giá trị không hợp lệ!", memberNames: new[] { "BeginTime" });
                }
            }

            //isValid = DateTime.TryParse(ExprireTime, out expireDate);
            isValid = DateTime.TryParseExact(ExprireTime, "MM/dd/yyyy",
    CultureInfo.CurrentCulture, DateTimeStyles.None, out expireDate);
            if (!isValid)
            {
                yield return new ValidationResult(errorMessage: "Giá trị không hợp lệ!", memberNames: new[] { "ExprireTime" });
            }
            else
            {
                TimeSpan d2 = expireDate.Subtract(DateTime.Now);
                if (d2.TotalDays < -1 || d2.TotalDays > 365)     //end time < current day || > 1 year from current day => invalid
                {
                    yield return new ValidationResult(errorMessage: "Giá trị không hợp lệ!", memberNames: new[] { "ExprireTime" });
                }
            }

            if (expireDate < beginDate)
            {
                yield return
                  new ValidationResult(errorMessage: "Ngày hết hạn phải lớn hơn ngày bắt đầu!",
                                       memberNames: new[] { "ExprireTime" });
            }
        }

    }
}
