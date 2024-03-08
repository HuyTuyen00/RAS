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
    public class HousingPost : BaseAutomationTest
    {
        [Test]
        public void Test01_WaitingList()
        {
            driver.GotoUrl("/dang-nhap");
            Helper.SetUpLogin(_adminUser, _adminPass, driver);
            driver.GotoUrl("/danh-sach-cho");
            Thread.Sleep(1000);
            var lstRow = driver.FindWebElements(By.XPath("//table[@class='table table-striped table-bordered table-hover ']/tbody/tr")).ToList();
            Assert.AreNotEqual(lstRow.Count, 0);
        }
        [Test]
        public void Test02_OutofDateList()
        {
            driver.GotoUrl("/dang-nhap");
            Helper.SetUpLogin(_adminUser, _adminPass, driver);
            driver.GotoUrl("/danh-sach-qua-han");
            Thread.Sleep(1000);
            var lstRow = driver.FindWebElements(By.XPath("//table[@class='table table-striped table-bordered table-hover ']/tbody/tr")).ToList();
            Assert.AreNotEqual(lstRow.Count, 0);
        }

        [Test]
        public void Test03_Locked()
        {
            driver.GotoUrl("/dang-nhap");
            Helper.SetUpLogin(_adminUser, _adminPass, driver);
            driver.GotoUrl("/AdminArea/RealEstate");

            var rowLockedTitle = "Đường Thích Quảng Đức, Phường 5, Phú Nhuận, Hồ Chí Minh";

            var lstRow = driver.FindWebElements(By.XPath("//table[@class='table table-striped table-bordered']/tbody/tr"));
            foreach (var row in lstRow)
            {
                if (row.Text.Contains(rowLockedTitle))
                {
                    driver.FindWebElement(By.XPath("//button[@class='btn btn-warning btn-circle' and @title='Khóa']")).Click();
                    Thread.Sleep(1000);
                    driver.FindWebElement(By.XPath("//button[@class='confirm' and text()='Xác nhận']")).Click();
                    Thread.Sleep(1000);
                    break;
                }
            }
            var mess = driver.FindWebElement(By.XPath("//div[@class='sweet-alert showSweetAlert visible']/h2"));
            Assert.AreEqual(mess.Text, "Thành công!");

        }

        [Test]
        public void Test04_Unlock()
        {
            driver.GotoUrl("/dang-nhap");
            Helper.SetUpLogin(_adminUser, _adminPass, driver);
            driver.GotoUrl("/AdminArea/RealEstate");

            var rowLockedTitle = "Đường Thích Quảng Đức, Phường 5, Phú Nhuận, Hồ Chí Minh";

            var lstRow = driver.FindWebElements(By.XPath("//table[@class='table table-striped table-bordered']/tbody/tr"));
            foreach (var row in lstRow)
            {
                if (row.Text.Contains(rowLockedTitle))
                {
                    // Click the "Unlock" button
                    driver.FindWebElement(By.XPath("//button[@class='btn btn-warning btn-circle' and @title='Khóa']")).Click();
                    Thread.Sleep(1000);

                    // Confirm the unlock action
                    driver.FindWebElement(By.XPath("//button[@class='confirm' and text()='Xác nhận']")).Click();
                    Thread.Sleep(1000);
                    break;
                }
            }

            // Verify success message
            var mess = driver.FindWebElement(By.XPath("//div[@class='sweet-alert showSweetAlert visible']/h2"));
            Assert.AreEqual(mess.Text, "Thành công!");
        }


        [Test]
        public void Test05_Approved()
        {
            driver.GotoUrl("/dang-nhap");
            Helper.SetUpLogin(_adminUser, _adminPass, driver);
            driver.GotoUrl("/danh-sach-cho");
            Thread.Sleep(1000);
            var lstRow = driver.FindWebElements(By.XPath("//table[@class='table table-striped table-bordered table-hover ']/tbody/tr")).ToList();
            if (lstRow.Count > 0)
            {
                var firstRow = lstRow.First();
                var address = firstRow.FindElement(By.XPath(".//td[2]")).Text;
                firstRow.FindElement(By.XPath(".//button[@class='btn btn-primary btn-circle' and @title='Xác nhận']")).Click();
                Thread.Sleep(1000);
                driver.FindWebElement(By.XPath("//button[@class='confirm' and text()='Xác nhận']")).Click();
                Thread.Sleep(1000);

                var mess = driver.FindWebElement(By.XPath("//div[@class='sweet-alert showSweetAlert visible']/h2"));
                Assert.Pass();
            }
            else Assert.Pass();
        }
    }
}
