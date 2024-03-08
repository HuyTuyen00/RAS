using NUnit.Framework;
using OpenQA.Selenium;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Reflection;
using System.Text;
using System.Threading;
using System.Threading.Tasks;
using UnitTest.Extensitions;

namespace UnitTest.TestAdmin
{
    [TestFixture]
    public class FAQ : BaseAutomationTest
    {
        private static string _question = "";
        private static string _answer = "";


        [Test]
        public void Test01_Create()
        {
            driver.GotoUrl("/dang-nhap");
            Helper.SetUpLogin(_adminUser, _adminPass, driver);
            driver.GotoUrl("/AdminArea/FAQ");

            driver.FindWebElement(By.XPath("//a[text()='Thêm mới']")).Click();
            Thread.Sleep(1000);

            var txtQuestion = driver.FindWebElement(By.Id("Question"));
            var txtAnswer = driver.FindWebElement(By.Id("Answer"));

            Random rnd = new Random();
            var Question = "Tin tức mới_" + rnd.Next(100000, 999999999);
            var Answer = "Nội dung bài viết_" + rnd.Next(100000, 999999999);

            _question = Question;
            _answer = Answer;

            txtQuestion.ClearTextAndSendKeys(Question);
            txtAnswer.ClearTextAndSendKeys(Answer);

            driver.FindWebElement(By.XPath("//input[@class='btn btn-sm btn-primary float-right m-t-n-xs' and @value='Save']")).Click();
            Thread.Sleep(1000);

            var lstRow = driver.FindWebElements(By.XPath("//table[@class='table table-hover table-bordered']/tbody/tr"));
            var isExist = lstRow.FirstOrDefault(s => s.Text.Contains(Question));

            Assert.AreNotEqual(isExist, null);
        }

        [Test]
        public void Test02_Update()
        {
            driver.GotoUrl("/dang-nhap");
            Helper.SetUpLogin(_adminUser, _adminPass, driver);
            driver.GotoUrl("/AdminArea/FAQ");

            var lstRow = driver.FindWebElements(By.XPath("//table[@class='table table-hover table-bordered']/tbody/tr"));
            var isExist = lstRow.FirstOrDefault(s => s.Text.Contains(_question));

            if (isExist != null)
            {
                isExist.FindElement(By.XPath(".//a[@class='btn btn-blue btn-circle text-white']")).Click();
                Thread.Sleep(1000);
                var txtQuestion = driver.FindWebElement(By.Id("Question"));
                var txtAnswer = driver.FindWebElement(By.Id("Answer"));

                Random rnd = new Random();
                var question = "Câu Hỏi Mới_" + rnd.Next(100000, 999999999);
                var answer = "Nội dung câu hỏi_" + rnd.Next(100000, 999999999);

                _question = question;
                _answer = answer;

                txtQuestion.ClearTextAndSendKeys(question);
                txtAnswer.ClearTextAndSendKeys(answer);

                driver.FindWebElement(By.XPath("//input[@class='btn btn-sm btn-primary float-right m-t-n-xs' and @value='Save']")).Click();
                Thread.Sleep(1000);

                lstRow = driver.FindWebElements(By.XPath("//table[@class='table table-hover table-bordered']/tbody/tr"));
                isExist = lstRow.FirstOrDefault(s => s.Text.Contains(question));

                Assert.AreNotEqual(isExist, null);
            }
            else
                Assert.Fail();
        }
        [Test]
        public void Test04_Delete()
        {
            driver.GotoUrl("/dang-nhap");
            Helper.SetUpLogin(_adminUser, _adminPass, driver);
            driver.GotoUrl("/AdminArea/FAQ");

            var lstRow = driver.FindWebElements(By.XPath("//table[@class='table table-hover table-bordered']/tbody/tr"));
            var isExist = lstRow.FirstOrDefault(s => s.Text.Contains(_question));

            if (isExist != null)
            {
                isExist.FindElement(By.XPath(".//button[@class='btn btn-danger btn-circle']")).Click();
                Thread.Sleep(1000);

                driver.SwitchTo().Alert().Accept();
                Thread.Sleep(1000);

                lstRow = driver.FindWebElements(By.XPath("//table[@class='table table-hover table-bordered']/tbody/tr"));
                isExist = lstRow.FirstOrDefault(s => s.Text.Contains(_question));

                Assert.AreEqual(isExist, null);
            }
            else
                Assert.Fail();
        }
    }
}
