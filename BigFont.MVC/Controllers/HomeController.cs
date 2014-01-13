using BigFont.MVC.Filters;
using BigFont.MVC.Models;
using BigFont.MVC.Services;
using Google.Apis.Analytics.v3.Data;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.UI;

namespace BigFont.MVC.Controllers
{
    public class HomeController : Controller
    {
        private IGoogleAnalyticsService gaService;

        public HomeController(IGoogleAnalyticsService gaService)
        {
            this.gaService = gaService;
        }

        #region Utilities
        protected override void HandleUnknownAction(string actionName)
        {
            try
            {
                this.View(actionName).ExecuteResult(this.ControllerContext);
            }
            catch (InvalidOperationException ieox)
            {
                ViewData["error"] = "Unknown Action: \"" +
                    Server.HtmlEncode(actionName) + "\"";
                ViewData["exMessage"] = ieox.Message;
                this.View("Error").ExecuteResult(this.ControllerContext);
            }
        }

        #endregion

        #region Actions

        // Switch to Http otherwise iFrames will throw a "Blocked loading mixed active content" error.         
        [SwitchToHttp]
        ////[OutputCache(CacheProfile = "StalePage")]
        public ActionResult Index()
        {
            // TODO - Implement the Entity Framework to persist this data.
            #region Prototyping

            List<Project> clients = new List<Project>
            {
                new Project {
                    PublicName = "David Jackson Gallery",
                    PublicDescription = "Repaired the broken WordPress website after it broke due to improper upgrades.",
                    Thumbnail = "portfolio_davidJacksonGallery",
                    WebsiteUrl = "www.davidjacksongallery.com/" },
                new Project {
                    PublicName = "Salt Spring Conjuring Club",
                    PublicDescription = "AngularJS and Bootstrap on the client with SQL Server, MVC.NET and C# hosted in Windows Azure.",
                    Thumbnail = "portfolio_conjuringclub",
                    WebsiteUrl = "www.1in52.ca" },
                new Project {
                    PublicName = "Arc Economics",
                    PublicDescription = "Integrated DropBox into a clean, responsive, and custom content management system.",
                    Thumbnail = "portfolio_arceconomics",
                    WebsiteUrl = "www.arceconomics.com" },
                new Project {
                    PublicName = "Sweet Water Revolver",
                    PublicDescription = "The under-construction Sweet Water Revolver website.",
                    Thumbnail = "portfolio_sweetwater",
                    WebsiteUrl = "sweetwater.azurewebsites.net" },
                new Project {
                    PublicName = "Pet Portraitures",
                    PublicDescription = "The under-construction Pet Portraitures website.",
                    Thumbnail = "portfolio_pets",
                    WebsiteUrl = "petsite.azurewebsites.net" },
                new Project {               
                    PublicName = "Muddling Thru",
                    PublicDescription = "Created a simple, responsive blog to answer client questions and to explore computer programming.",
                    Thumbnail = "portfolio_muddlingthru",
                    WebsiteUrl = "www.muddlingthru.ca" },
                new Project {               
                    PublicName = "The Castaway Endurance Run",
                    PublicDescription = "Uploaded Garmin GPS data to create a printable, responsive map of the race.",
                    Thumbnail = "portfolio_castaway",
                    WebsiteUrl = "castaway.azurewebsites.net/" },
                new Project {               
                    PublicName = "The Slope of Kongwa Hill",
                    PublicDescription = "Renovated the existing website to make it both responsive and easy for the client to edit.",
                    Thumbnail = "portfolio_tsokh",
                    WebsiteUrl = "tsokh.azurewebsites.net/" },
                new Project { 
                    PublicName = "Marill Design", 
                    PublicDescription = "Constructed this clean, responsive, marketing site from scratch.", 
                    Thumbnail = "portfolio_marilldesign", 
                    WebsiteUrl = "www.marilldesign.com" }, 
                new Project { 
                    PublicName = "Fernwood Road Cafe", 
                    PublicDescription = "Provided custom CSS to integrate the cafe's shopping cart into its existing WordPress theme.", 
                    Thumbnail = "portfolio_fernwoodroadcafe", 
                    WebsiteUrl = "www.fernwoodcafe.com" }, 
                new Project { 
                    PublicName = "Gulf Island Detailing", 
                    PublicDescription = "Built a clean, responsive, single-page website to market the business.", 
                    Thumbnail = "portfolio_ssidetailing", 
                    WebsiteUrl = "www.ssidetailing.com" }, 
                new Project { 
                    PublicName = "Dave's Blasting", 
                    PublicDescription = "Designed and created a responsive, multi-page, media-rich website to market the business.", 
                    Thumbnail = "portfolio_davesblasting", 
                    WebsiteUrl = "www.davesblasting.com" }, 
                new Project { 
                    PublicName = "Garden Faire", 
                    PublicDescription = "Modernized the existing by moving its content into a new, responsive content management system.", 
                    Thumbnail = "portfolio_gardenfaire", 
                    WebsiteUrl = "www.gardenfaire.ca" }, 
                new Project { 
                    PublicName = "Fowl Mood Farm", 
                    PublicDescription = "Designed our first responsive website and included functionality to allow the owners to update the content.", 
                    Thumbnail = "portfolio_fowlmoodfarm", 
                    WebsiteUrl = "www.fowlmoodfarm.com" }
                // disclude nature works, 
                // because their website has a X-Frame same origin policy
            };
            #endregion

            return View("Index", clients);
        }

        ////[OutputCache(CacheProfile = "StalePage")]
        public ActionResult People()
        {
            return View();
        }

        ////[OutputCache(CacheProfile = "StalePage")]
        public ActionResult Services(int id = 0)
        {
            return View();
        }

        ////[OutputCache(CacheProfile = "StalePage")]
        public ActionResult Packages()
        {
            return View();
        }

        ////[OutputCache(CacheProfile = "StalePage")]
        public ActionResult Community()
        {
            return View();
        }

        ////[OutputCache(CacheProfile = "StalePage")]
        public ActionResult Presentations()
        {
            return View();
        }

        ////[OutputCache(CacheProfile = "StalePage")]
        public ActionResult Checklists()
        {
            return View();
        }

        ////[OutputCache(CacheProfile = "StalePage")]
        public ActionResult Links()
        {
            return View();
        }

        ////[OutputCache(CacheProfile = "StalePage")]
        public ActionResult Shop()
        {
            return Redirect("https://bigfont-demo-store.myshopify.com/");
        }

        ////[OutputCache(CacheProfile = "StalePage")]
        public ActionResult SiteMap()
        {
            return View();
        }

        ////[OutputCache(CacheProfile = "StalePage")]
        public ActionResult Contact()
        {
            return View();
        }

        ////[OutputCache(CacheProfile = "StalePage")]
        public ActionResult ThankYou()
        {
            return View();
        }

        ////[OutputCache(CacheProfile = "StalePage")]
        public ActionResult Analytics()
        {
            string privateKeyRelativePath, publicKey, serviceAccountEmail;
            GaData queryResult;

            queryResult = null;

            // set auth parameters
            publicKey = "notasecret";
            privateKeyRelativePath = System.Configuration.ConfigurationManager.AppSettings["gaServicePrivateKeyFilePath"];
            serviceAccountEmail = System.Configuration.ConfigurationManager.AppSettings["gaServiceAccountEmail"];

            // query ga
            gaService.AuthenticateGaService(HttpContext.Server.MapPath("~/" + privateKeyRelativePath), publicKey, serviceAccountEmail);
            queryResult = gaService.GetVisitsByBrowser(66062262);

            // return result
            return View(queryResult);
        }

        #endregion
    }
}
