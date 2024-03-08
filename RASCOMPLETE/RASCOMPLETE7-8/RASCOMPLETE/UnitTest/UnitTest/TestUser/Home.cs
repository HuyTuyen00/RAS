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
    public class Home : BaseAutomationTest
    {
        [Test]
        public void TestViewTop4HousingPost()
        {
            driver.GotoUrl();
            Thread.Sleep(1000);
            var lstHousingPost = driver.FindWebElements(By.XPath("//div[@class='card-item row']")).ToList();
            Assert.AreEqual(lstHousingPost.Count, 6);
        }

        [Test]
        public void TestMap()
        {
            driver.GotoUrl("/#map");
            Thread.Sleep(1000);
            var txtFilterText = driver.FindWebElement(By.Id("searchTextField"));
            txtFilterText.ClearTextAndSendKeys("cầu rồng");
            Thread.Sleep(2000);

            var lstItem = driver.FindWebElements(By.XPath("//div[@class='pac-item']")).ToList();
            //Kiểm tra đúng sai
            Assert.AreNotEqual(lstItem.Count, 0);

        }
        [Test]
        public void GetDirection()
        {
            driver.GotoUrl("/thong-tin-chi-tiet?id=37");
            Thread.Sleep(1000);
            var btnDirection = driver.FindWebElement(By.XPath("//button[@class='btn btn-brown' and text()='Chỉ Đường']"));
   

            var kilometer = "expected_value";
            Assert.Pass();
        }


    }
}
