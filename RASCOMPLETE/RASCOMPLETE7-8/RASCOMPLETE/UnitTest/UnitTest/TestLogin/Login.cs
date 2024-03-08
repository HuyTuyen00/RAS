using NUnit.Framework;
using OpenQA.Selenium;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.CompilerServices;
using System.Text;
using System.Threading;
using System.Threading.Tasks;

namespace UnitTest.TestLogin
{
    [TestFixture]
    public class Login : BaseAutomationTest
    {
        [Test]
        public void TestLogin()
        {
            string username = "sondzugudboiz";
            string password = "Vudeptraivodich1.";

            string username_admin = "Tedadeza";
            string password_admin = "xewca123";

            driver.Url = _baseUrl + "/dang-nhap";

            Helper.SetUpLogin(username, password, driver);
            driver.Url = _baseUrl + "/danh-sach-bai-viet";
            Thread.Sleep(500);
            Assert.AreEqual(driver.Title, "Trang quản lý");
        }
    }
}
