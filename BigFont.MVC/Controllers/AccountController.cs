using System;
using System.Collections.Generic;
using System.Linq;
using System.Transactions;
using System.Web;
using System.Web.Mvc;
using System.Web.Security;
using DotNetOpenAuth.AspNet;
using Microsoft.Web.WebPages.OAuth;
using WebMatrix.WebData;
using BigFont.MVC.Filters;
using BigFont.MVC.Models;

namespace BigFont.MVC.Controllers {
    [Authorize]
    [InitializeSimpleMembership]
    public class AccountController : Controller {
        //
        // GET: /Account/Login

        [AllowAnonymous]
        public ActionResult Login() {
            return View();
        }

        //
        // POST: /Account/LogOff

        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult LogOff() {
            WebSecurity.Logout();

            return RedirectToAction("Index", "Home");
        }
    }
}
