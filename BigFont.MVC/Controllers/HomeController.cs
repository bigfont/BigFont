using BigFont.MVC.Models;
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

        [OutputCache(CacheProfile = "StalePage")]
        public ActionResult Index()
        {

            // TODO - Implement the Entity Framework to persist this data.
            #region Prototyping

            List<Project> clients = new List<Project>
            {
                new Project {               
                    PublicName = "The Castaway Endurance Run Race Map",
                    PublicDescription = "Uploaded Garmin GPS data to create a printable, responsive map of the race. ",
                    Thumbnail = "portfolio_castaway",
                    WebsiteUrl = "castaway.azurewebsites.net/" },
                new Project {               
                    PublicName = "The Slope of Kongwa Hill - Alpha",
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
                    WebsiteUrl = "www.fowlmoodfarm.com" }, 
                new Project { 
                    PublicName = "Nature Works", 
                    PublicDescription = "Built a refrigeration monitoring system that graphs temperatures and sends warning emails.", 
                    Thumbnail = "portfolio_natureworks", 
                    WebsiteUrl = null,
                    Image = "portfolio_natureworks_large" }
            };
            #endregion

            return View("Index", clients);
        }

        [OutputCache(CacheProfile = "StalePage")]
        public ActionResult Services(int id = 0)
        {
            return View();
        }

        [OutputCache(CacheProfile = "StalePage")]
        public ActionResult Packages()
        {
            return View();
        }

        [OutputCache(CacheProfile = "StalePage")]
        public ActionResult People()
        {
            return View();
        }

        [OutputCache(CacheProfile = "StalePage")]
        public ActionResult Links()
        {
            return View();
        }

        [OutputCache(CacheProfile = "StalePage")]
        public ActionResult Contact()
        {
            return View();
        }

        [OutputCache(CacheProfile = "StalePage")]
        public ActionResult Checklists()
        {
            return View();
        }

        [OutputCache(CacheProfile = "StalePage")]
        public ActionResult Presentations()
        {
            return View();
        }

        [OutputCache(CacheProfile = "StalePage")]
        public ActionResult Shop()
        {
            return Redirect("https://bigfont-demo-store.myshopify.com/");
        }

        [OutputCache(CacheProfile = "StalePage")]
        public ActionResult SiteMap()
        {
            return View();
        }
    }
}
