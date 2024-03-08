using OpenQA.Selenium.Support.UI;
using OpenQA.Selenium;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Threading;

namespace UnitTest.Extensitions
{
    public static class WebDriverExtensions
    {
        public static IWebElement FindWebElement(this IWebDriver driver, By by, int timeoutInSeconds = 10)
        {
            WebDriverWait wait = new WebDriverWait(driver, TimeSpan.FromSeconds(timeoutInSeconds));
            return wait.Until((drv) =>
            {
                try
                {
                    return drv.FindElement(by);
                }
                catch
                {
                    return null;
                }
            });
        }

        public static IReadOnlyCollection<IWebElement> FindWebElements(this IWebDriver driver, By by, int timeoutInSeconds = 10)
        {
            WebDriverWait wait = new WebDriverWait(driver, TimeSpan.FromSeconds(timeoutInSeconds));
            return wait.Until((drv) =>
            {
                return drv.FindElements(by);
            });
        }

        public static void GotoUrl(this IWebDriver driver, string url = "", int timeoutInSeconds = 10)
        {
            driver.Url = BaseAutomationTest._baseUrl + url;
            Thread.Sleep(500);
        }

        public static void ClearTextAndSendKeys(this IWebElement element, string text)
        {
            element.Clear();
            Thread.Sleep(100);
            element.SendKeys(text);
        }
    }
}
