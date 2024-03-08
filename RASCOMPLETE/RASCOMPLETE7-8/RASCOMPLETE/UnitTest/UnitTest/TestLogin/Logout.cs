using NUnit.Framework;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace UnitTest.TestLogin
{
    [TestFixture]
    public class Logout : BaseAutomationTest
    {
        [Test]
        public void TestLogOut()
        {
            Helper.SetUpLogOut(driver);
            Assert.AreEqual(driver.Title, "Đăng nhập");
        }


    }
}

