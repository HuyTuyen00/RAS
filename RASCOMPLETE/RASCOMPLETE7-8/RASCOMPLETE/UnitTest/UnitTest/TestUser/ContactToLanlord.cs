using NUnit.Framework;
using OpenQA.Selenium;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using UnitTest.Extensitions;

namespace UnitTest.TestUser
{
    [TestFixture]
    public class ContactToLanlord : BaseAutomationTest
    {
        [Test]
        public void TestContactFacebookZalo()
        {
            driver.GotoUrl("/thong-tin-chi-tiet?id=35");
            var facebook = driver.FindWebElement(By.XPath("//a[.//i[@class='fa fa-facebook  ']]"));
            var zalo = driver.FindWebElement(By.XPath("//a[.//i[@class='fa fa-volume-control-phone  ']]"));

            var linkFacebook = facebook.GetAttribute("href");
            var linkZalo = zalo.GetAttribute("href");

            if (!string.IsNullOrEmpty(linkFacebook) && !string.IsNullOrEmpty(linkZalo))
                Assert.Pass();
            else
                Assert.Fail();

        }
    }
}
