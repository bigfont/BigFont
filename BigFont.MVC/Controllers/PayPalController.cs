using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace BigFont.MVC.Controllers
{
    public class PayPalController : Controller
    {
        // GET: PayPal
        public ActionResult Cancel()
        {
            return View();
        }

        public ActionResult Success()
        {
            return View();
        }
    }
}