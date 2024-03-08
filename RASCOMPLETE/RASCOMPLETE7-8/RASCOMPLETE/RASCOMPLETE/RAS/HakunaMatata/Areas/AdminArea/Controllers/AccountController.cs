
using HakunaMatata.Helpers;
using HakunaMatata.Models.ViewModels;
using HakunaMatata.Services;
using Microsoft.AspNetCore.Authentication;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using System;
using System.Threading.Tasks;
using MailKit.Net.Smtp;
using MailKit.Security;
using Microsoft.AspNetCore.Http;
using MimeKit;
using Newtonsoft.Json;


namespace HakunaMatata.Areas.AdminArea.Controllers
{
    [Area("AdminArea")]
    public class AccountController : Controller
    {
        private readonly IAccountServices _services;

        public AccountController(IAccountServices services)
        {
            _services = services;
        }

        [Route("dang-nhap")]
        public IActionResult Login(string returnUrl = "")
        {
            var model = new VM_Login { ReturnUrl = returnUrl };
            ViewBag.RegisterMessage = TempData["RegisterMessage"];
            return View(model);
        }

        [HttpPost]
        [AllowAnonymous]
        [Route("dang-nhap")]
        public async Task<IActionResult> Login(VM_Login account)
        {
            if (ModelState.IsValid)
            {
                try
                {
                    var member = _services.GetUser(account);
                    if (member != null)
                    {
                        var userPrincipal = Helper.GenerateIdentity(member);

                        var props = new AuthenticationProperties
                        {
                            IsPersistent = account.IsRememberMe
                        };

                        //sign in
                        await HttpContext.SignInAsync(
                            scheme: "MyCookieScheme",
                            principal: userPrincipal,
                            properties: props
                            );

                        if (!string.IsNullOrEmpty(account.ReturnUrl)
                            && Url.IsLocalUrl(account.ReturnUrl))
                            return Redirect(account.ReturnUrl);
                        else
                        {
                            //client
                            if (member.LevelId == 3)
                            {
                                return Redirect("http://localhost:5000/");
                            }
                            return RedirectToAction("ClientRealEstateList", "RealEstate");
                        }
                    }
                    else
                    {
                        ViewBag.Message = "Sai tài khoản hoặc mật khẩu!";
                    }
                }
                catch (Exception)
                {
                    throw;
                }
            }
            return View(account);
        }

        [Route("dang-ki")]
        public IActionResult Register(string email, string returnUrl = "")
        {

            var model = new VM_Register { ReturnUrl = returnUrl };

            if (!string.IsNullOrEmpty(email))
            {
                model.Email = email;
            }
            else
            {
                ViewBag.isActiveOtp = false;
            }

            return View(model);
        }


        [Route("send-otp")]
        public IActionResult SendOTP(string email)
        {


            if (!string.IsNullOrEmpty(email))
            {
                // Tạo mã OTP
                string otp = GenerateOTP();
                ViewBag.OTP = otp;
                // Gửi email chứa mã OTP
                var message = new MimeMessage();
                message.From.Add(new MailboxAddress("Web Quản Lý Nhà Trọ", "ntdat321@gmail.com"));
                message.To.Add(new MailboxAddress("Người nhận", email));

                message.Subject = "Xác thực mã OTP";
                message.Body = new TextPart(MimeKit.Text.TextFormat.Html)
                {
                    Text = $"<b>Mã OTP xác minh đăng ký tài khoản của bạn là: {otp}</b>"
                };

                using (var smtp = new SmtpClient())
                {
                    smtp.Connect("smtp.gmail.com", 587, false);

                    // Note: only needed if the SMTP server requires authentication
                    smtp.Authenticate("ntdat321@gmail.com", "etdgyzocavruaavx");

                    smtp.Send(message);
                    smtp.Disconnect(true);
                }
            }

            ViewData["Email"] = email; // Store the email in ViewData

            return View();
        }




        public IActionResult VerifyRegister()
        {
            var temp = HttpContext.Session.GetString("TempRegister");
            var model = JsonConvert.DeserializeObject<VM_Register>(temp);

            return View(model);
        }

        [HttpPost]
        [AllowAnonymous]
        public async Task<IActionResult> SubmitRegister(VM_Register newUser)
        {
            try
            {
                var temp = HttpContext.Session.GetString("TempRegister");
                var model = JsonConvert.DeserializeObject<VM_Register>(temp);

                var isSuccess = await _services.RegisterUser(model);
                if (isSuccess)
                {
                    TempData["RegisterMessage"] = "Đăng kí thành công, đăng nhập để tiếp tục.";
                    return RedirectToAction("Login", "Account");
                }
                else
                {
                    ModelState.AddModelError(string.Empty, "Đăng ký không thành công.");
                    return View("Register", newUser);
                }
            }
            catch (Exception ex)
            {
                ViewBag.ErrorMessage = ex.Message;
                return View("Register", newUser);
            }
        }

        [HttpPost]
        [AllowAnonymous]
        [Route("dang-ki")]
        public async Task<IActionResult> Register(VM_Register newUser)
        {
            if (!ModelState.IsValid)
            {
                return View(newUser); // Return the view with error messages
            }

            Random random = new Random();
            string otp = random.Next(100000, 999999).ToString();

            ViewBag.OTP = otp;

            // Gửi email chứa mã OTP
            var message = new MimeMessage();
            message.From.Add(new MailboxAddress("Web Quản Lý Nhà Trọ", "ntdat321@gmail.com"));
            message.To.Add(new MailboxAddress("Người nhận", newUser.Email));

            message.Subject = "Xác thực mã OTP";
            message.Body = new TextPart(MimeKit.Text.TextFormat.Html)
            {
                Text = $"<b>Mã OTP xác minh đăng ký tài khoản của bạn là: {otp}</b>"
            };

            using (var smtp = new SmtpClient())
            {
                await smtp.ConnectAsync("smtp.gmail.com", 587, SecureSocketOptions.StartTls);

                // Note: only needed if the SMTP server requires authentication
                await smtp.AuthenticateAsync("ntdat321@gmail.com", "etdgyzocavruaavx");

                await smtp.SendAsync(message);
                await smtp.DisconnectAsync(true);
            }

            newUser.Opt = otp;
            var json = JsonConvert.SerializeObject(newUser);
            HttpContext.Session.SetString("TempRegister", json);

            return RedirectToAction("VerifyRegister");
        }


        public IActionResult Denied()
        {
            return View();
        }

        [HttpPost]
        public IActionResult CheckExist(string loginName)
        {
            bool isExisted = _services.CheckExist(loginName);
            return Json(new { isExisted });
        }

        [HttpPost]
        public IActionResult CheckEmailExist(string email)
        {
            bool isExisted = _services.CheckEmailExist(email);
            return Json(new { isExisted });
        }

        public async Task<IActionResult> Logout()
        {
            HttpContext.Session.Clear();

            await HttpContext.SignOutAsync(
            scheme: "MyCookieScheme"
            );

            return RedirectToAction("Login");
        }
        public string GenerateOTP()
        {
            Random random = new Random();
            int otp = random.Next(100000, 999999);
            return otp.ToString();
        }
        public async Task SendEmailOTP(string email, string otp)
        {

        }

        [HttpGet]
        [Route("quen-mat-khau")]
        public IActionResult ForgotPassword()
        {
            return View();
        }

        [HttpGet]
        public IActionResult ResetPassword(string email)
        {
            bool isExisted = _services.CheckEmailExist(email);
            if (!isExisted)
            {
                return RedirectToAction("ForgotPassword", "Account");
            }
            // Tạo mã OTP
            string otp = GenerateOTP();
            ViewBag.OTP = otp;
            // Gửi email chứa mã OTP
            var message = new MimeMessage();
            message.From.Add(new MailboxAddress("Web Quản Lý Nhà Trọ", "ntdat321@gmail.com"));
            message.To.Add(new MailboxAddress("Người nhận", email));

            message.Subject = "Xác thực mã OTP";
            message.Body = new TextPart(MimeKit.Text.TextFormat.Html)
            {
                Text = $"<b>Mã OTP xác minh đăng ký tài khoản của bạn là: {otp}</b>"
            };

            using (var smtp = new SmtpClient())
            {
                smtp.Connect("smtp.gmail.com", 587, false);

                // Note: only needed if the SMTP server requires authentication
                smtp.Authenticate("ntdat321@gmail.com", "etdgyzocavruaavx");

                smtp.Send(message);
                smtp.Disconnect(true);
            }

            ViewBag.Email = email;

            ViewData["Email"] = email; // Store the email in ViewData

            return View();
        }

        [HttpGet]
        [Route("reset-password")]
        public IActionResult SubmitReset(string email, string newPassword)
        {
            var result = _services.ResetPassword(email, newPassword);
            return Redirect(result ? "dang-nhap" : "quen-mat-khau");
        }
    }
}