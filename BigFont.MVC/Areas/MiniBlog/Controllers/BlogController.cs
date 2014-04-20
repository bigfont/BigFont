using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace BigFont.MVC.Areas.MiniBlog.Controllers
{
    public class BlogController : Controller
    {
        //
        // GET: /MiniBlog/Home/

        public ActionResult Index()
        {
            return View();
        }

    }
}
