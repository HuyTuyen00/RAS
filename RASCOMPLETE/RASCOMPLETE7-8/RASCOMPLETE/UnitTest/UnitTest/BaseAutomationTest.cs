using NUnit.Framework;
using OpenQA.Selenium;
using OpenQA.Selenium.Chrome;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading;
using System.Threading.Tasks;

namespace UnitTest
{
    public class BaseAutomationTest
    {
        private static IWebDriver _driver;
        public IWebDriver driver;
        public static readonly string _baseUrl = "http://localhost:5000";
        public static readonly string _rootUser = "sondzugudboiz";
        public static readonly string _rootPass = "Vudeptraivodich1.";
        public static readonly string _adminUser = "Tedadeza";
        public static readonly string _adminPass = "xewca123";

        [SetUp]
        public void Setup()
        {

            if (_driver != null)
            {
                driver = _driver;
            }
            else
            {
                driver = new ChromeDriver();
                _driver = driver;
            }
            driver.Manage().Window.Maximize();

            
        }


        [TearDown]
        public void TearDown()
        {
            //driver.Close();
        }

    }
}
