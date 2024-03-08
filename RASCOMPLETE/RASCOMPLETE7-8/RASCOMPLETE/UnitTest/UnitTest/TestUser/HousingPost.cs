using NUnit.Framework;
using OpenQA.Selenium;
using OpenQA.Selenium.Support.UI;
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
    public class HousingPost : BaseAutomationTest
    {
        private static string _map = "";
        private static string _realEstateTypeId = "";

        [Test]
        public void Test01_Create()
        {
            driver.GotoUrl("/dang-nhap");
            Helper.SetUpLogin(_rootUser, _rootPass, driver);

            driver.GotoUrl("/bai-dang-moi");
            Random random = new Random();

            var realEstateTypeId = "Chung cư mini";
            var title = "Thêm bài đăng_" + random.Next(1000000, 99999999);
            var roomNumber = 5;
            var electronicPrice = 1000;
            var acreage = 100;
            var waterPrice = 1000;
            var roomPrice = 1000000;
            var wifiPrice = 200;
            var dateStart = DateTime.Now.AddDays(0);
            var dateEnd = DateTime.Now.AddMonths(1);
            var phoneContact = "0912012012";
            var hasPrivateWc = true;
            var hasMezzanine = true;
            var freeTime = true;
            var allowCook = true;
            var securityCamera = true;
            var description = "Mô tả chi tiết\r\n Ngày đăng: " + DateTime.Now.ToString("dd/MMM/yyyy HH:mm:ss");
            var map = "Tọa độ " + random.Next(1000000, 99999999) + ", An Hải, An Hải Tây, Sơn Trà, Đà Nẵng, Việt Nam";
            //var map = "Cầu Rồng Đà Nẵng, An Hải, An Hải Tây, Sơn Trà, Đà Nẵng, Việt Nam";

            _map = map;
            _realEstateTypeId = realEstateTypeId;

            InputHousingPost(driver, realEstateTypeId, title,
                 roomNumber, electronicPrice, acreage, waterPrice, roomPrice, wifiPrice,
                 dateStart, dateEnd,
                 phoneContact, map, description,
                 hasPrivateWc, hasMezzanine, allowCook, freeTime, securityCamera);

            driver.FindWebElement(By.XPath("//button[@id='submitButton' and text()='Đăng bài']")).Click();
            Thread.Sleep(1000);
            var mess = driver.FindWebElement(By.XPath("//div[@class='alert alert-success alert-dismissible fade show']"));
            if (mess.Text.Contains("Thêm phòng trọ thành công"))
                Assert.Pass();
            else
                Assert.Fail();

        }
        [Test]
        public void Test02_Fillter()
        {
            driver.GotoUrl("/RealEstate");

            var type = "Chung cư mini";
            var city = "Đà Nẵng";
            //var price = "1 triệu - 2 triệu";
            var name = "Nguyễn Phước Lan";

            var cmbType = driver.FindWebElement(By.XPath("//div[.//select[@id='Type']]/div[@class='nice-select select single-select']"));
            cmbType.Click();
            Thread.Sleep(500);
            var lstTypeOption = cmbType.FindElements(By.XPath(".//li"));
            foreach (var option in lstTypeOption)
            {
                if (option.Text == type)
                {
                    option.Click();
                    Thread.Sleep(500);
                    break;
                }
            }

            var cmbCity = driver.FindWebElement(By.XPath("//div[.//select[@id='City']]/div[@class='nice-select select single-select']"));
            cmbCity.Click();
            Thread.Sleep(500);
            var lstCityOption = cmbCity.FindElements(By.XPath(".//li"));
            foreach (var option in lstCityOption)
            {
                if (option.Text == city)
                {
                    option.Click();
                    Thread.Sleep(500);
                    break;
                }
            }

            driver.FindWebElement(By.XPath("//button[.//i[@class='fa fa-filter']]")).Click();
            Thread.Sleep(1000);
            var lstItem = driver.FindWebElements(By.XPath("//div[@class='card-item row']")).ToList();
            Assert.AreNotEqual(0, lstItem.Count);

        }

        [Test]
        public void Test03_Update()
        {
            driver.GotoUrl("/dang-nhap");
            Helper.SetUpLogin(_rootUser, _rootPass, driver);


            Random random = new Random();


            var realEstateTypeId = _realEstateTypeId == "" ? "Chung cư mini" : _realEstateTypeId;
            var map = _map != "" ? _map : "Cầu Rồng Đà Nẵng, An Hải, An Hải Tây, Sơn Trà, Đà Nẵng, Việt Nam";
           
            var title = "Thêm bài đăng_" + random.Next(1000000, 99999999);
            var roomNumber = 51;
            var electronicPrice = 10001;
            var acreage = 1001;
            var waterPrice = 10001;
            var roomPrice = 10000001;
            var wifiPrice = 2001;
            var dateStart = DateTime.Now.AddDays(0);
            var dateEnd = DateTime.Now.AddMonths(2);
            var phoneContact = "099999999";
            var hasPrivateWc = true;
            var hasMezzanine = true;
            var freeTime = true;
            var allowCook = true;
            var securityCamera = true;
            var description = "Mô tả chi tiết\r\n Ngày đăng: " + DateTime.Now.ToString("dd/MMM/yyyy HH:mm:ss");

            driver.GotoUrl("/danh-sach-bai-viet");

            var lstRows = driver.FindWebElements(By.XPath("//table[@class='table table-striped table-bordered table-hover ']/tbody/tr"));
            var rowExist = lstRows.FirstOrDefault(s => s.Text.Contains(map));

            if (rowExist != null)
            {
                rowExist.FindElement(By.XPath(".//a[@class='btn btn-primary btn-circle']")).Click();
                Thread.Sleep(1000);
            }
            else
                Assert.Fail();

            InputHousingPost(driver, realEstateTypeId, title,
                 roomNumber, electronicPrice, acreage, waterPrice, roomPrice, wifiPrice,
                 dateStart, dateEnd,
                 phoneContact, map, description,
                 hasPrivateWc, hasMezzanine, allowCook, freeTime, securityCamera,
                 true);

            driver.FindWebElement(By.XPath("//input[@value='Cập nhật thông tin']")).Click();
            Thread.Sleep(1000);
            Assert.AreEqual(driver.Url, _baseUrl + "/danh-sach-bai-viet");
        }



        [Test]
        public void Test04_Delete()
        {
            driver.GotoUrl("/dang-nhap");
            Helper.SetUpLogin(_rootUser, _rootPass, driver);


            Random random = new Random();
            var realEstateTypeId = _realEstateTypeId == "" ? "Chung cư mini" : _realEstateTypeId;
            var map = _map != "" ? _map : "Cầu Rồng Đà Nẵng, An Hải, An Hải Tây, Sơn Trà, Đà Nẵng, Việt Nam";


            var title = "Thêm bài đăng_" + random.Next(1000000, 99999999);
            var roomNumber = 51;
            var electronicPrice = 10001;
            var acreage = 1001;
            var waterPrice = 10001;
            var roomPrice = 10000001;
            var wifiPrice = 2001;
            var dateStart = DateTime.Now.AddDays(2);
            var dateEnd = DateTime.Now.AddMonths(2);
            var phoneContact = "099999999";
            var hasPrivateWc = true;
            var hasMezzanine = true;
            var freeTime = true;
            var allowCook = true;
            var securityCamera = true;
            var description = "Mô tả chi tiết\r\n Ngày đăng: " + DateTime.Now.ToString("dd/MMM/yyyy HH:mm:ss");

            driver.GotoUrl("/danh-sach-bai-viet");
            Thread.Sleep(3000);
            var lstRows = driver.FindWebElements(By.XPath("//table[@class='table table-striped table-bordered table-hover ']/tbody/tr"));
            var rowExist = lstRows.FirstOrDefault(s => s.Text.Contains(map));

            if (rowExist != null)
            {
                rowExist.FindElement(By.XPath(".//button[@class='btn btn-danger btn-circle']")).Click();
                Thread.Sleep(1000);

                driver.FindWebElement(By.XPath("//button[@class='confirm' and text()='Xác nhận']")).Click();
                Thread.Sleep(1000);

                var mess = driver.FindWebElement(By.XPath("//div[@class='sweet-alert showSweetAlert visible']/h2"));

                Assert.AreEqual(mess.Text, "Thành công!");

            }
            else
                Assert.Fail();
        }

        private void InputHousingPost(IWebDriver driver, string realEstateTypeId, string title,
                int roomNumber, int electronicPrice, int acreage, int waterPrice, int roomPrice, int wifiPrice,
                DateTime dateStart, DateTime dateEnd,
                string phoneContact, string map, string description,
                bool hasPrivateWc, bool hasMezzanine, bool allowCook, bool freeTime, bool securityCamera, bool isEdit = false)
        {
            if (!isEdit)
            {
                var cmbRealEstateTypeId = new SelectElement(driver.FindWebElement(By.Id("RealEstateTypeId")));
                cmbRealEstateTypeId.SelectByText(realEstateTypeId);
                Thread.Sleep(500);
            }

            driver.FindWebElement(By.Id("Title")).ClearTextAndSendKeys(title);
            driver.FindWebElement(By.Id("RoomNumber")).ClearTextAndSendKeys(roomNumber.ToString());
            driver.FindWebElement(By.Id("tien-dien")).ClearTextAndSendKeys(electronicPrice.ToString());
            driver.FindWebElement(By.Id("Acreage")).ClearTextAndSendKeys(acreage.ToString());
            driver.FindWebElement(By.Id("tien-nuoc")).ClearTextAndSendKeys(waterPrice.ToString());
            driver.FindWebElement(By.Id("currency-field")).ClearTextAndSendKeys(roomPrice.ToString());
            driver.FindWebElement(By.Id("tien-wifi")).ClearTextAndSendKeys(wifiPrice.ToString());

            driver.FindWebElement(By.Id("BeginTime")).ClearTextAndSendKeys(dateStart.ToString("dd/MM/yyyy"));
            Thread.Sleep(500);
            driver.FindWebElement(By.Id("ExprireTime")).ClearTextAndSendKeys(dateEnd.ToString("dd/MM/yyyy"));
            Thread.Sleep(500);
            driver.FindWebElement(By.Id("ContactNumber")).ClearTextAndSendKeys(phoneContact.ToString());
            if (!isEdit)
                driver.FindWebElement(By.Id("searchTextField")).ClearTextAndSendKeys(map.ToString());
            Thread.Sleep(500);
            driver.FindWebElement(By.XPath("//div[@class='note-editable card-block']/p[1]")).ClearTextAndSendKeys(description.ToString());
            if (hasPrivateWc) driver.FindWebElement(By.Id("checkbox1")).Click();
            if (hasMezzanine) driver.FindWebElement(By.Id("checkbox2")).Click();
            if (allowCook) driver.FindWebElement(By.Id("checkbox3")).Click();
            if (freeTime) driver.FindWebElement(By.Id("checkbox4")).Click();
            if (securityCamera) driver.FindWebElement(By.Id("checkbox5")).Click();
        }
    }
}
