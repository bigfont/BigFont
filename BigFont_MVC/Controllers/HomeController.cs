using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace BigFont_MVC.Controllers {
    public class HomeController : Controller {

        protected override void HandleUnknownAction(string actionName) {
            try {
                this.View(actionName).ExecuteResult(this.ControllerContext);
            }
            catch (InvalidOperationException ieox) {
                ViewData["error"] = "Unknown Action: \"" +
                    Server.HtmlEncode(actionName) + "\"";
                ViewData["exMessage"] = ieox.Message;
                this.View("Error").ExecuteResult(this.ControllerContext);
            }
        }

        public ActionResult Index() {
            return View();
        }

        public ActionResult Services() {
            return View();
        }

        public ActionResult Packages() {
            return View();
        }

        public ActionResult People() {
            return View();
        }

        public ActionResult Links() {
            return View();
        }

        public ActionResult Contact() {
            return View();
        }

        public ActionResult Checklists() {
            return View();
        }


    }
}
