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
    public class News : BaseAutomationTest
    {
        private static string _title = "";
        private static string _newsBody = "";


        [Test]
        public void Test01_Create()
        {
            driver.GotoUrl("/dang-nhap");
            Helper.SetUpLogin(_adminUser, _adminPass, driver);
            driver.GotoUrl("/AdminArea/News");

            driver.FindWebElement(By.XPath("//a[text()='Thêm mới']")).Click();
            Thread.Sleep(1000);

            var txtTitle = driver.FindWebElement(By.Id("Title"));
            var txtNewsBody = driver.FindWebElement(By.Id("NewsBody"));

            Random rnd = new Random();
            var title = "Tin tức mới_" + rnd.Next(100000, 999999999);
            var newsBody = "Nội dung bài viết_" + rnd.Next(100000, 999999999);

            _title = title;
            _newsBody = newsBody;

            txtTitle.ClearTextAndSendKeys(title);
            txtNewsBody.ClearTextAndSendKeys(newsBody);

            driver.FindWebElement(By.XPath("//input[@class='btn btn-sm btn-primary float-right m-t-n-xs' and @value='Save']")).Click();
            Thread.Sleep(1000);

            var lstRow = driver.FindWebElements(By.XPath("//table[@class='table table-hover table-bordered']/tbody/tr"));
            var isExist = lstRow.FirstOrDefault(s => s.Text.Contains(title));

            Assert.AreNotEqual(isExist, null);
        }

        [Test]
        public void Test02_ImportPicture()
        {
            driver.GotoUrl("/dang-nhap");
            Helper.SetUpLogin(_adminUser, _adminPass, driver);
            driver.GotoUrl("/AdminArea/News");

            var lstRow = driver.FindWebElements(By.XPath("//table[@class='table table-hover table-bordered']/tbody/tr"));
            var isExist = lstRow.FirstOrDefault(s => s.Text.Contains(_title));

            if (isExist != null)
            {

                driver.FindWebElement(By.XPath("//a[text()='Thêm hình ảnh']")).Click();
                Thread.Sleep(1000);


                var txtNewsID = driver.FindWebElement(By.Id("NewsID"));
                var txtPictureName = driver.FindWebElement(By.Id("PictureName"));
                var uplImage = driver.FindWebElement(By.Id("imageInput"));
                var path = System.IO.Path.Combine(Environment.CurrentDirectory, "FileUploads");

                var pictureName = "news_image.png";
                var picturePath = System.IO.Path.Combine(path, pictureName);
                var id = isExist.Text.Split(' ')[0];


                txtNewsID.ClearTextAndSendKeys(id);
                txtPictureName.ClearTextAndSendKeys(pictureName);
                uplImage.SendKeys(picturePath);

                driver.FindWebElement(By.XPath("//input[@class='btn btn-sm btn-primary float-right m-t-n-xs' and @value='Save']")).Click();
                Thread.Sleep(1000);

                lstRow = driver.FindWebElements(By.XPath("//table[@class='table table-hover table-bordered']/tbody/tr"));
                isExist = lstRow.FirstOrDefault(s => s.Text.Contains(_title));

                Assert.AreNotEqual(isExist, null);
            }
            else
                Assert.Pass();
        }

        [Test]
        public void Test03_Update()
        {
            driver.GotoUrl("/dang-nhap");
            Helper.SetUpLogin(_adminUser, _adminPass, driver);
            driver.GotoUrl("/AdminArea/News");

            var lstRow = driver.FindWebElements(By.XPath("//table[@class='table table-hover table-bordered']/tbody/tr"));
            var isExist = lstRow.FirstOrDefault(s => s.Text.Contains(_title));

            if (isExist != null)
            {
                isExist.FindElement(By.XPath(".//a[@class='btn btn-blue btn-circle text-white']")).Click();
                Thread.Sleep(1000);
                var txtTitle = driver.FindWebElement(By.Id("Title"));
                var txtNewsBody = driver.FindWebElement(By.Id("NewsBody"));

                Random rnd = new Random();
                var title = "Tin tức mới_" + rnd.Next(100000, 999999999);
                var newsBody = "Nội dung bài viết_" + rnd.Next(100000, 999999999);

                _title = title;
                _newsBody = newsBody;

                txtTitle.ClearTextAndSendKeys(title);
                txtNewsBody.ClearTextAndSendKeys(newsBody);

                driver.FindWebElement(By.XPath("//input[@class='btn btn-sm btn-primary float-right m-t-n-xs' and @value='Save']")).Click();
                Thread.Sleep(1000);

                lstRow = driver.FindWebElements(By.XPath("//table[@class='table table-hover table-bordered']/tbody/tr"));
                isExist = lstRow.FirstOrDefault(s => s.Text.Contains(title));

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
            driver.GotoUrl("/AdminArea/News");

            var lstRow = driver.FindWebElements(By.XPath("//table[@class='table table-hover table-bordered']/tbody/tr"));
            var isExist = lstRow.FirstOrDefault(s => s.Text.Contains(_title));

            if (isExist != null)
            {
                isExist.FindElement(By.XPath(".//button[@class='btn btn-danger btn-circle']")).Click();
                Thread.Sleep(1000);

                driver.SwitchTo().Alert().Accept();
                Thread.Sleep(1000);

                lstRow = driver.FindWebElements(By.XPath("//table[@class='table table-hover table-bordered']/tbody/tr"));
                isExist = lstRow.FirstOrDefault(s => s.Text.Contains(_title));

                Assert.AreEqual(isExist, null);
            }
            else
                Assert.Fail();
        }
    }
}
