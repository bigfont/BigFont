using System.Web.Mvc;
using System.Web.Security;
using BigFont.MVC.Filters;
using BigFont.MVC.Models;
using BigFont.MVC.Services;
using Google.Apis.Analytics.v3.Data;
using WebMatrix.WebData;

namespace BigFont.MVC.Controllers
{
    [Authorize]
    [InitializeSimpleMembership]
    public class AccountController : Controller
    {
        private readonly IAppSettingsService _appSettingsSvc;
        private readonly IGoogleAnalyticsService _gaSvc;

        public AccountController(IGoogleAnalyticsService gaService, IAppSettingsService appSettingsService)
        {
            _gaSvc = gaService;
            _appSettingsSvc = appSettingsService;
        }

        [AllowAnonymous]
        public ActionResult Login()
        {
            return View();
        }

        [HttpPost]
        [AllowAnonymous]
        [ValidateAntiForgeryToken]
        public ActionResult Login(LoginModel model)
        {
            if (ModelState.IsValid && WebSecurity.Login(model.UserName, model.Password, model.RememberMe))
            {
                // successful login
                return RedirectToAction("Index", "Home");
            }

            // If we got this far, something failed, redisplay form
            ModelState.AddModelError("", "Wrong username/email and password combination.");
            return View(model);
        }

        public ActionResult LogOff()
        {
            WebSecurity.Logout();

            return RedirectToAction("Index", "Home");
        }

        [AllowAnonymous]
        public ActionResult Register()
        {
            return View();
        }

        [HttpPost]
        [AllowAnonymous]
        [ValidateAntiForgeryToken]
        public ActionResult Register(RegisterModel model)
        {
            if (ModelState.IsValid)
            {
                // Attempt to register the user
                try
                {
                    WebSecurity.CreateUserAndAccount(model.UserName, model.Password);
                    WebSecurity.Login(model.UserName, model.Password);
                    return RedirectToAction("Index", "Home");
                }
                catch (MembershipCreateUserException e)
                {
                    ModelState.AddModelError("", ErrorCodeToString(e.StatusCode));
                }
            }

            // If we got this far, something failed, redisplay form
            return View(model);
        }

        public ActionResult MyAnalytics()
        {
            // set auth parameters
            string publicKey = _appSettingsSvc.GaServicePublicKey;
            string privateKeyRelativePath = _appSettingsSvc.GaServicePrivateKeyFilePath;
            string serviceAccountEmail = _appSettingsSvc.GaServiceAccountEmail;

            // query ga
            _gaSvc.AuthenticateGaService(HttpContext.Server.MapPath("~/" + privateKeyRelativePath), publicKey,
                serviceAccountEmail);
            GaData queryResult = _gaSvc.GetVisitsByBrowser(66062262);

            // return result
            return View(queryResult);
        }

        public ActionResult AspNetConfiguration()
        {
            return View();
        }

        public ActionResult AspNetPaths()
        {
            return View();
        }

        #region Helpers

        private static string ErrorCodeToString(MembershipCreateStatus createStatus)
        {
            // See http://go.microsoft.com/fwlink/?LinkID=177550 for
            // a full list of status codes.
            switch (createStatus)
            {
                case MembershipCreateStatus.DuplicateUserName:
                    return "User name already exists. Please enter a different user name.";

                case MembershipCreateStatus.DuplicateEmail:
                    return
                        "A user name for that e-mail address already exists. Please enter a different e-mail address.";

                case MembershipCreateStatus.InvalidPassword:
                    return "The password provided is invalid. Please enter a valid password value.";

                case MembershipCreateStatus.InvalidEmail:
                    return "The e-mail address provided is invalid. Please check the value and try again.";

                case MembershipCreateStatus.InvalidAnswer:
                    return "The password retrieval answer provided is invalid. Please check the value and try again.";

                case MembershipCreateStatus.InvalidQuestion:
                    return "The password retrieval question provided is invalid. Please check the value and try again.";

                case MembershipCreateStatus.InvalidUserName:
                    return "The user name provided is invalid. Please check the value and try again.";

                case MembershipCreateStatus.ProviderError:
                    return
                        "The authentication provider returned an error. Please verify your entry and try again. If the problem persists, please contact your system administrator.";

                case MembershipCreateStatus.UserRejected:
                    return
                        "The user creation request has been canceled. Please verify your entry and try again. If the problem persists, please contact your system administrator.";

                default:
                    return
                        "An unknown error occurred. Please verify your entry and try again. If the problem persists, please contact your system administrator.";
            }
        }

        #endregion
    }
}