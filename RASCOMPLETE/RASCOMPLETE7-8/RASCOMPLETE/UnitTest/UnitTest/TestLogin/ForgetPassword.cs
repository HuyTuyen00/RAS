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
    public class ForgetPassword : BaseAutomationTest
    {
        private static string _email = "ntdat321@gmail.com";
        private static string _password = "vcdssgyftmwdywhx";

        [Test]
        public void TestForgetPassword()
        {
            driver.GotoUrl("/quen-mat-khau");




            var txtEmail = driver.FindWebElement(By.XPath("//input[@placeholder='Địa chỉ email']"));
            var btnSendOTP = driver.FindWebElement(By.XPath("//button[text()='Gửi mã OTP']"));

            txtEmail.ClearTextAndSendKeys(_email);
            btnSendOTP.Click();


            //Chờ 10s cho chắc để check email
            Thread.Sleep(10000);
            var otp = Helper.GetOTP(_email, _password);

            Random rnd = new Random();
            var newPassword = "change" + rnd.Next(1000, 9999);

            var txtOtp = driver.FindWebElement(By.Id("input-otp"));
            var txtNewPassword = driver.FindWebElement(By.Id("new-password"));
            var btnChangePassword = driver.FindWebElement(By.Id("btn-submit-reset-pass"));

            txtOtp.ClearTextAndSendKeys(otp);
            txtNewPassword.ClearTextAndSendKeys(newPassword);
            btnChangePassword.Click();
            Thread.Sleep(1000);

            Assert.AreEqual(driver.Title, "Đăng nhập");

        }



    }
}
