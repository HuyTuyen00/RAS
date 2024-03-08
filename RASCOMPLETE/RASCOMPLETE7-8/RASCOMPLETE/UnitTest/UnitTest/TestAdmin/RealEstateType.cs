using NUnit.Framework;
using OpenQA.Selenium;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading;
using System.Threading.Tasks;
using UnitTest.Extensitions;

namespace UnitTest.TestAdmin
{
    [TestFixture]
    public class RealEstateType: BaseAutomationTest
    {
        [Test]
        public void TestCreate()
        {
            driver.GotoUrl("/dang-nhap");
            Helper.SetUpLogin(_adminUser, _adminPass, driver);
            driver.GotoUrl("/AdminArea/RealEstateType");

            var btnThemMoi = driver.FindElement(By.XPath("//a[@class='btn btn-brown col-lg-1 mr-2 text-white' and text()='Thêm mới']"));
            btnThemMoi.Click();
            Thread.Sleep(1000);

            var txtName = driver.FindElement(By.XPath("//input[@id='RealEstateTypeName']"));
            var btnSave = driver.FindElement(By.XPath("//input[@type='submit' and @value='Save']"));

            txtName.SendKeys("Demo");
            btnSave.Click();
            Thread.Sleep(1000);

            var lstRow = driver.FindElements(By.XPath("//table[@class='table table-hover table-bordered']/tbody/tr"));

            if (lstRow.Any(s => s.Text.Contains("Demo")))
            {
                Assert.Pass("Thêm mới thành công! Có dòng trên lưới.");
            }
            else
            {
                Assert.Fail("Thêm mới thành công! Nhưng không có dòng trên lưới.");
            }

        }
    }
}
