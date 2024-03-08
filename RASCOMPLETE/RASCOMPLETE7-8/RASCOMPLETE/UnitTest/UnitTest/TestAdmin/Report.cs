using NUnit.Framework;
using OpenQA.Selenium;
using OpenQA.Selenium.Support.UI;
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
    public class Report : BaseAutomationTest
    {
        [Test]
        public void TestChart()
        {
            driver.GotoUrl("/dang-nhap");
            Helper.SetUpLogin(_adminUser, _adminPass, driver);
            driver.GotoUrl("/AdminArea/HistoryPayment/Chart");

            var month = "August";
            var year = "2023";

            var cbxMonth = new SelectElement(driver.FindWebElement(By.Id("Month")));
            var cbxYear = new SelectElement(driver.FindWebElement(By.Id("Year")));
            var btnGenerateReport = driver.FindWebElement(By.Id("btn-generate-report-by-month"));

            cbxMonth.SelectByText(month);
            Thread.Sleep(500);
            cbxYear.SelectByText(year);
            Thread.Sleep(500);
            btnGenerateReport.Click();
            Thread.Sleep(1500);

            var checkChart = driver.FindWebElement(By.XPath("//div[@id='resizable-report-by-month']"));
            Assert.IsNotNull(checkChart);
        }

        [Test]
        public void TestRevenueStatistics()
        {
            driver.GotoUrl("/dang-nhap");
            Helper.SetUpLogin(_adminUser, _adminPass, driver);
            driver.GotoUrl("/AdminArea/HistoryPayment");

            var dateStart = "7/17/2023";
            var dateEnd = "7/17/2023";

            var txtStartDate = driver.FindWebElement(By.Id("startDate"));
            var txtEndDate = driver.FindWebElement(By.Id("endDate"));
            var btnFilter = driver.FindWebElement(By.XPath("//button[@class='btn btn-primary' and text()='Filter']"));


            var lstRow = driver.FindWebElements(By.XPath("//table[@class='table table-hover table-bordered']/tbody/tr")).ToList();
            Assert.AreNotEqual(lstRow.Count, 0);
        }
    }
}
