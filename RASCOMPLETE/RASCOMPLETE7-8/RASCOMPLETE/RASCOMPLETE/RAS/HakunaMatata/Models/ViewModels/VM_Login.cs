using System.ComponentModel.DataAnnotations;

namespace HakunaMatata.Models.ViewModels
{
    public class VM_Login
    {
        [Required(ErrorMessage = "Tài khoản không được bỏ trống")]
        [StringLength(100, ErrorMessage = "Tài khoản đăng nhập phải tối thiểu 4 kí tự.", MinimumLength = 4)]
        [RegularExpression(@"^[^\s\,]+$", ErrorMessage = "Tên đăng nhập không được có khoảng trắng")]
        public string LoginName { get; set; }


        [Required(ErrorMessage = "Mật khẩu không được để trống")]
        [StringLength(100, ErrorMessage = "Mật khẩu chứa tối thiểu 6 kí tự.", MinimumLength = 6)]
        [DataType(DataType.Password)]
        public string Password { get; set; }

        public bool IsRememberMe { get; set; }

        public string ReturnUrl { get; set; }
    }
}

