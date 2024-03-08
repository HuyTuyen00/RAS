using NUnit.Framework;
using OpenQA.Selenium;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading;
using System.Threading.Tasks;
using UnitTest.Extensitions;

namespace UnitTest.TestUser
{
    [TestFixture]
    public class Rating : BaseAutomationTest
    {
        [Test]
        public void TestRating()
        {
            driver.GotoUrl("/dang-nhap");
            string username = "test403234";
            string password = "Taz@12345";

            Helper.SetUpLogin(username, password, driver);
            driver.GotoUrl("/thong-tin-chi-tiet?id=35");
            Thread.Sleep(1000);

            Random random = new Random();
            var rating = random.Next(1, 5);

            var lstStar = driver.FindElements(By.XPath("//div[@class='star-rating']/span")).ToList();
            lstStar[rating].Click();
            Thread.Sleep(1000);
            driver.Navigate().Refresh();

            lstStar = driver.FindElements(By.XPath("//div[@class='star-rating']/span")).ToList();

            var checkStar = lstStar[rating];
            Assert.AreEqual(checkStar.GetAttribute("class"), "fa fa-star check");

        }
    }
}
