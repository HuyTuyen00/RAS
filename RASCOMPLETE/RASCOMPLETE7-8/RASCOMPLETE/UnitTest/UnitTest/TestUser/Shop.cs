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
    public class Shop : BaseAutomationTest
    {
        [Test]
        public void TestByPackage()
        {
            driver.GotoUrl("/dang-nhap");
            Helper.SetUpLogin(_rootUser, _rootPass, driver);
            driver.GotoUrl("/AdminArea/Shop?userID=6");

            var package = "Gói 3 tháng";

            var lstShopItem = driver.FindElements(By.XPath("//div[@class='container_card']/div[@class='card']"));
            foreach(var item in lstShopItem)
            {
                var itemName = item.FindElement(By.XPath(".//h3"));
                if (itemName.Text == package)
                {
                    item.FindElement(By.XPath(".//button")).Click();
                    Thread.Sleep(1000);
                    driver.FindWebElement(By.Id("confirmButton")).Click();
                    Thread.Sleep(1500);
                    break;
                }
            }
            var mess = driver.FindWebElement(By.XPath("//div[@class='container']/h2"));
            Assert.AreEqual(mess.Text, "Mua gói đăng bài thành công, vui lòng đăng nhập lại để cập nhật gói đăng ký");

        }
    }
}
