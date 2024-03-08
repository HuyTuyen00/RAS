using NUnit.Framework;
using OpenQA.Selenium;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Reflection;
using System.Text;
using System.Threading;
using System.Threading.Tasks;
using UnitTest.Extensitions;

namespace UnitTest.TestAdmin
{
    [TestFixture]
    public class Role : BaseAutomationTest
    {
        private static string _role = "";


        [Test]
        public void Test01_Create()
        {
            driver.GotoUrl("/dang-nhap");
            Helper.SetUpLogin(_adminUser, _adminPass, driver);
            driver.GotoUrl("/AdminArea/Level");

            driver.FindWebElement(By.XPath("//a[text()='Thêm mới']")).Click();
            Thread.Sleep(1000);

            var txtRoleName = driver.FindWebElement(By.Id("LevelName"));

            Random rnd = new Random();
            var RoleName = "Role _" + rnd.Next(100000, 999999999);

            _role = RoleName;

            txtRoleName.ClearTextAndSendKeys(RoleName);

            driver.FindWebElement(By.XPath("//input[@class='btn btn-sm btn-primary float-right m-t-n-xs' and @value='Save']")).Click();
            Thread.Sleep(2000);

            var lstRow = driver.FindWebElements(By.XPath("//table[@class='table table-hover table-bordered']/tbody/tr"));
            var isExist = lstRow.FirstOrDefault(s => s.Text.Contains(RoleName));
            Assert.AreNotEqual(isExist, null);
        }

        [Test]
        public void Test02_Update()
        {
            Thread.Sleep(2000);
            driver.GotoUrl("/dang-nhap");
            Helper.SetUpLogin(_adminUser, _adminPass, driver);
            driver.GotoUrl("/AdminArea/Level");

            var lstRow = driver.FindWebElements(By.XPath("//table[@class='table table-hover table-bordered']/tbody/tr"));
            var isExist = lstRow.FirstOrDefault(s => s.Text.Contains(_role));

            if (isExist != null)
            {
                isExist.FindElement(By.XPath(".//a[@class='btn btn-blue btn-circle text-white']")).Click();
                Thread.Sleep(1000);
                var txtRoleName = driver.FindWebElement(By.Id("LevelName"));

                Random rnd = new Random();
                var role = "RoleNew_" + rnd.Next(100000, 999999999);

                _role = role;

                txtRoleName.ClearTextAndSendKeys(role);
                Thread.Sleep(1000);
                driver.FindWebElement(By.XPath("//input[@class='btn btn-sm btn-primary float-right m-t-n-xs' and @value='Save']")).Click();
                Thread.Sleep(2000);

                lstRow = driver.FindWebElements(By.XPath("//table[@class='table table-hover table-bordered']/tbody/tr"));
                isExist = lstRow.FirstOrDefault(s => s.Text.Contains(role));

                Assert.AreNotEqual(isExist, null);
            }
            else
                Assert.Pass();
        }
        [Test]
        public void Test04_Delete()
        {
            driver.GotoUrl("/dang-nhap");
            Helper.SetUpLogin(_adminUser, _adminPass, driver);
            driver.GotoUrl("/AdminArea/Level");

            var lstRow = driver.FindWebElements(By.XPath("//table[@class='table table-hover table-bordered']/tbody/tr"));
            var isExist = lstRow.FirstOrDefault(s => s.Text.Contains(_role));

            if (isExist != null)
            {
                isExist.FindElement(By.XPath(".//button[@class='btn btn-danger btn-circle']")).Click();
                Thread.Sleep(1000);

                driver.SwitchTo().Alert().Accept();
                Thread.Sleep(1000);

                lstRow = driver.FindWebElements(By.XPath("//table[@class='table table-hover table-bordered']/tbody/tr"));
                isExist = lstRow.FirstOrDefault(s => s.Text.Contains(_role));

                Assert.AreEqual(isExist, null);
            }
            else
                Assert.Fail();
        }
    }
}
