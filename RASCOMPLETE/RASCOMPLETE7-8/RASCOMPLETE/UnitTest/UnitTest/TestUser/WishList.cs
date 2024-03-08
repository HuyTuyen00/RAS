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
    public class WishList : BaseAutomationTest
    {
        [Test]
        public void TestAddToWishList()
        {
            driver.GotoUrl("/dang-nhap");
            string username = "test403234";
            string password = "Taz@12345";

            Helper.SetUpLogin(username, password, driver);
            driver.GotoUrl("/thong-tin-chi-tiet?id=35");
            Thread.Sleep(1000);

            var btnAddToWishList = driver.FindWebElement(By.XPath("//input[@class='btn btn-brown' and @value='Add to wishlist']"));
            btnAddToWishList.Click();
            Thread.Sleep(1000);
            driver.GotoUrl("/AdminArea/RealEstate/ClientRealWishList");

            var lstName = driver.FindWebElements(By.XPath("//span[@class='title-wish-item']"));
            var isAdded = lstName.Where(s => s.Text == "Bcons Plaza cho thuê ưu đãi cho khách HĐ 1 năm giá 4tr");
            if (isAdded != null)
                Assert.Pass();
            else
                Assert.Fail();

        }

        [Test]
        public void TestRemoveToWishList()
        {
            driver.GotoUrl("/dang-nhap");
            string username = "test403234";
            string password = "Taz@12345";

            Helper.SetUpLogin(username, password, driver);
            driver.GotoUrl("/AdminArea/RealEstate/ClientRealWishList");
            Thread.Sleep(1000);

            var lstWishList = driver.FindElements(By.XPath("//div[@class='wish-item row']")).ToList();
            var count = lstWishList.Count;
            if (count > 0)
            {
                lstWishList[0].FindElement(By.XPath(".//input[@value='REMOVE']")).Click();
                Thread.Sleep(1000);

                var newCount = driver.FindElements(By.XPath("//div[@class='wish-item row']")).ToList().Count;
                if(newCount != count )
                {
                    Assert.Pass();
                }    
                else
                    Assert.Fail();
            }  
            else
                Assert.Fail();
        }
    }
}
