using MailKit;
using MailKit.Net.Imap;
using MailKit.Search;
using OpenQA.Selenium;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading;
using System.Threading.Tasks;
using static System.Net.WebRequestMethods;

namespace UnitTest
{
    public class Helper
    {
        public static void SetUpLogin(string userName, string password, IWebDriver webdriver)
        {
            webdriver.FindElement(By.Id("LoginName")).SendKeys(userName);
            webdriver.FindElement(By.Id("Password")).SendKeys(password);
            webdriver.FindElement(By.XPath("//button[@type='submit' and text()='LOG-IN']")).Click();
            Thread.Sleep(1000);
        }

        public static void SetUpLogOut(IWebDriver webdriver)
        {
            webdriver.Url = BaseAutomationTest._baseUrl + "/AdminArea/Account/Logout";
            Thread.Sleep(500);
        }

        public static string GetOTP(string email, string password)
        {
            var result = "";

            var imapServer = "imap.gmail.com";
            var imapPort = 993;

            using (var client = new ImapClient())
            {
                client.Connect(imapServer, imapPort, true);
                client.Authenticate(email, password);
                client.Inbox.Open(MailKit.FolderAccess.ReadWrite);

                var lstEmailNotSeen = client.Inbox.Search(SearchQuery.NotSeen).OrderByDescending(s => s).ToList();

                if (lstEmailNotSeen.Count > 0)
                {
                    foreach (var emailUid in lstEmailNotSeen)
                    {
                        var message = client.Inbox.GetMessage(emailUid);
                        if (message.Subject.Trim() == "Xác thực mã OTP")
                        {
                            result = message.HtmlBody;

                            client.Inbox.AddFlags(emailUid, MessageFlags.Seen, true);
                            break;
                        }
                    }
                }
                client.Disconnect(true);
            }
            result = result.Replace("<b>Mã OTP xác minh đăng ký tài khoản của bạn là: ", "");
            result = result.Replace("</b>", "").Trim();
            return result;
        }
    }
}
