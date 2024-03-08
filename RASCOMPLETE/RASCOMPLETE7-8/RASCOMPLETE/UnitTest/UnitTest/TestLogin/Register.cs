using NUnit.Framework;
using OpenQA.Selenium;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading;
using System.Threading.Tasks;
using UnitTest.Extensitions;

namespace UnitTest.TestLogin
{
    [TestFixture]
    public class Register : BaseAutomationTest
    {
        private string _loginName = "";
        private string _passWord = "";

        [Test]
        public void TestRegister()
        {
            driver.GotoUrl("/dang-ki");
            Thread.Sleep(500);

            var loginName = driver.FindWebElement(By.Id("LoginName"));
            var agentName = driver.FindWebElement(By.Id("AgentName"));
            var phoneNumber = driver.FindWebElement(By.Id("PhoneNumber"));
            var email = driver.FindWebElement(By.Id("emailInput"));
            var password = driver.FindWebElement(By.Id("Password"));
            var confirmPassword = driver.FindWebElement(By.Id("ConfirmPassword"));
            var btnRegister = driver.FindWebElement(By.XPath("//button[text()='Đăng kí']"));

            var random = new Random();
            var loginNameRandom = "test" + random.Next(100000, 999999);

            _loginName = loginNameRandom;
            _passWord = "Taz@12345";

            loginName.ClearTextAndSendKeys(loginNameRandom);
            agentName.ClearTextAndSendKeys(loginNameRandom);
            phoneNumber.ClearTextAndSendKeys("0962965924");
            email.ClearTextAndSendKeys("test@gmail.com");
            password.ClearTextAndSendKeys("Taz@12345");
            confirmPassword.ClearTextAndSendKeys("Taz@12345");

            //Nhấn button Đăng ký
            btnRegister.Click();
            Thread.Sleep(1000);

            //Kiểm tra tiêu đề website = Trang OTP
            //Assert.AreEqual(driver.Title, "Nhập OTP");

            //Vào kiểm tra login
            Assert.AreEqual(driver.Title, "Xác thực OTP");
        }

        [Test]
        public void TestChangePassword()
        {
            //Setup data test
            if (string.IsNullOrEmpty(_loginName))
            {
                _loginName = "test403234";
                _passWord = "Taz@12345";
            }

            driver.GotoUrl("/doi-mat-khau");
            if (driver.Title == "Đăng nhập")
            {
                Helper.SetUpLogin(_loginName, _passWord, driver);
            }

            var oldPassword = driver.FindWebElement(By.Id("OldPassword"));
            var newPassword = driver.FindWebElement(By.Id("NewPassword"));
            var confirmPassword = driver.FindWebElement(By.Id("ConfirmPassword"));
            var btnChangePassword = driver.FindWebElement(By.XPath("//button[text()='Đổi mật khẩu']"));

            oldPassword.ClearTextAndSendKeys(_passWord);
            newPassword.ClearTextAndSendKeys("abc@98765");
            confirmPassword.ClearTextAndSendKeys("abc@98765");
            btnChangePassword.Click();

            //Lấy cái thông báo
            Thread.Sleep(2000);
            var mess = driver.FindWebElement(By.ClassName("text-navy")).Text;

            //
            driver.GotoUrl("/doi-mat-khau");
            Thread.Sleep(1000);

            if (driver.Title == "Đăng nhập")
            {
                Helper.SetUpLogin(_loginName, _passWord, driver);
            }

            oldPassword = driver.FindWebElement(By.Id("OldPassword"));
            newPassword = driver.FindWebElement(By.Id("NewPassword"));
            confirmPassword = driver.FindWebElement(By.Id("ConfirmPassword"));
            btnChangePassword = driver.FindWebElement(By.XPath("//button[text()='Đổi mật khẩu']"));

            //Cập nhật về giá trị cũ để cho lần sau test lại
            oldPassword.ClearTextAndSendKeys("abc@98765");
            newPassword.ClearTextAndSendKeys(_passWord);
            confirmPassword.ClearTextAndSendKeys(_passWord);
            btnChangePassword.Click();

            Assert.AreEqual(mess, "Cập nhật mật khẩu thành công!");


        }

        [Test]
        public void TestEditProfile()
        {
            //Setup data test
            if (string.IsNullOrEmpty(_loginName))
            {
                _loginName = "test403234";
                _passWord = "Taz@12345";
            }

            driver.GotoUrl("/thong-tin-ca-nhan");
            if (driver.Title == "Đăng nhập")
            {
                Helper.SetUpLogin(_loginName, _passWord, driver);
            }

            var random = new Random();
            var newInfo = "newInfo_" + random.Next(100000, 999999);

            var name = driver.FindWebElement(By.Id("Name"));
            var contactNumber = driver.FindWebElement(By.Id("ContactNumber"));
            var facebook = driver.FindWebElement(By.Id("Facebook"));
            var zalo = driver.FindWebElement(By.Id("Zalo"));
            var email = driver.FindWebElement(By.Id("Email"));
            var btnChangeInfo = driver.FindWebElement(By.XPath("//button[text()='Cập nhật thông tin']"));

            name.ClearTextAndSendKeys(_passWord);
            contactNumber.ClearTextAndSendKeys(random.Next(10000000, 99999999).ToString());
            facebook.ClearTextAndSendKeys(newInfo);
            zalo.ClearTextAndSendKeys(newInfo);
            email.ClearTextAndSendKeys(newInfo);
            btnChangeInfo.Click();
            Thread.Sleep(1000);

            //Kiểm tra thông báo
            var mess = driver.FindWebElement(By.XPath("//div[@class='sweet-alert showSweetAlert visible']/h2"));
            Assert.AreEqual(mess.Text, "Thành công!");
        }
    }
}
