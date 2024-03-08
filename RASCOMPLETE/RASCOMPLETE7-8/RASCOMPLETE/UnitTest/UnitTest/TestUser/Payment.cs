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
    public class Payment : BaseAutomationTest
    {
        [Test]
        public void TestPayment()
        {
            driver.GotoUrl("/dang-nhap");
            Helper.SetUpLogin(_rootUser, _rootPass, driver);
            driver.GotoUrl("/AdminArea/Payment?userID=6");

            var txtCoinNumber = driver.FindWebElement(By.Id("Coin"));
            var rdbVNPay = driver.FindWebElement(By.XPath("//ul[@id='PaymentOption']/li[1]/input[1]"));
            var rdbMoMo = driver.FindWebElement(By.XPath("//ul[@id='PaymentOption']/li[2]/input[1]"));
            var btnOrder = driver.FindWebElement(By.Id("btn-submit-order"));

            var coinNumber = 100000;
            var paymentMethod = "MoMo";
            //hoặc 
            //var paymentMethod = "VNPay"
            txtCoinNumber.ClearTextAndSendKeys(coinNumber.ToString());
            Thread.Sleep(500);
            switch (paymentMethod)
            {
                case "MoMo":
                    rdbMoMo.Click();
                    Thread.Sleep(500);
                    btnOrder.Click();
                    Thread.Sleep(1500);
                    Assert.AreEqual(driver.Title, "Cổng thanh toán MoMo");
                    break;
                    
                case "VNPay":
                    rdbVNPay.Click();
                    Thread.Sleep(500);
                    btnOrder.Click();
                    Thread.Sleep(1500);
                    Assert.AreEqual(driver.Title, "Chọn phương thức thanh toán");
                    break;
            }
        }
    }
}
