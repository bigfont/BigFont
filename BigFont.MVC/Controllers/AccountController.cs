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

        [AllowAnonymous]
        public ActionResult Login() {
            return View();
        }

        [HttpPost]
        [AllowAnonymous]
        [ValidateAntiForgeryToken]
        public ActionResult Login(LoginModel model)
        {
            if (ModelState.IsValid && WebSecurity.Login(model.UserName, model.Password, persistCookie: model.RememberMe))
            {
                // successful login
                return RedirectToAction("Index", "Home");
            }

            // If we got this far, something failed, redisplay form
            ModelState.AddModelError("", "Wrong Username/Email and password combination.");
            return View(model);
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult LogOff() {
            WebSecurity.Logout();

            return RedirectToAction("Index", "Home");
        }
    }
}
