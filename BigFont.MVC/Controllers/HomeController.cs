using System;
using System.Collections.Generic;
using System.Web.Mvc;
using BigFont.MVC.Models;

namespace BigFont.MVC.Controllers
{
    public class HomeController : Controller
    {
        public HomeController()
        {
        }

        #region Utilities

        protected override void HandleUnknownAction(string actionName)
        {
            try
            {
                View(actionName).ExecuteResult(ControllerContext);
            }
            catch (InvalidOperationException ieox)
            {
                ViewData["error"] = "Unknown Action: \"" +
                                    Server.HtmlEncode(actionName) + "\"";
                ViewData["exMessage"] = ieox.Message;
                View("Error").ExecuteResult(ControllerContext);
            }
        }

        #endregion

        #region Actions

        public ActionResult Index()
        {
            // Switch to Http otherwise iFrames will throw a "Blocked loading mixed active content" error.         
            if (Request.IsSecureConnection)
            {
                return new RedirectResult("http://www.bigfont.ca");
            }

            // TODO - Use a data store for this
            // E.g. Entity Framework, JSON, XML, CSV, XLXS other
            #region Prototyping

            var clients = new List<Project>
            {
                new Project
                {
                    PublicName = "DE-EN Translation",
                    PublicDescription = "Created a simple, responsive, business website.",
                    WebsiteUrl = "www.de-en-translation.com"
                },
                new Project
                {
                    PublicName = "Cobane Limited",
                    PublicDescription = "Took over the hosting of the existing website.",
                    WebsiteUrl = "cobane.azurewebsites.net"
                },
                new Project
                {
                    PublicName = "Salt Spring Studio Tour",
                    PublicDescription = "Took over the maintenance, development, and hosting of the existing website.",
                    WebsiteUrl = "www.saltspringstudiotour.com"
                },
                new Project
                {
                    PublicName = "Lcc Network",
                    PublicDescription = "A customized, responsive, Content Management System, built in collaboration with EnviroIssues.",
                    WebsiteUrl = "www.lccnetwork.org/"
                },
                new Project
                {
                    PublicName = "Ingrid Hauss | Yoga & Art",
                    PublicDescription = "A simple, fast, responsive, brochure-style website, using ASP.NET Web Pages and Bootstrap, hosted in a Windows Azure Website, hand coded in Visual Studio, and version controlled in GitHub.",
                    WebsiteUrl = "www.ingridhauss.com"
                },
                new Project
                {
                    PublicName = "The Theme Machine Designer",
                    PublicDescription = "A starter theme to help people understand and extend the The Theme Machine. It hides all content except for layout elements, and shows the layout element ids and classes. Use it as a reference when extending The Theme Machine.",
                    WebsiteUrl = "orchard-theme-machine-designer.azurewebsites.net/",
                    DisplayShowHideButton = false
                },
                new Project
                {
                    PublicName = "Orchard Project Website, Pre-Alpha",
                    PublicDescription = "The in-development website that will eventually replace the current orchardproject.net site.",
                    WebsiteUrl = "orchard-website.azurewebsites.net/"
                },
                new Project
                {
                    PublicName = "Singular Biogenics",
                    PublicDescription = "Created and themed a simple, responsive Orchard CMS.",
                    WebsiteUrl = "www.singularbiogenics.com"
                },
                new Project
                {
                    PublicName = "Cake Love Instructors Registration",
                    PublicDescription = "Created an online application form for potential Cake Love instructors.",
                    WebsiteUrl = "cakelove.azurewebsites.net"
                },
                new Project
                {
                    PublicName = "David Jackson Gallery",
                    PublicDescription = "Repaired the broken WordPress website after it broke due to improper upgrades.",
                    WebsiteUrl = "www.davidjacksongallery.com/"
                },
                new Project
                {
                    PublicName = "Salt Spring Conjuring Club",
                    PublicDescription = "AngularJS and Bootstrap on the client with SQL Server, MVC.NET and C# hosted in Windows Azure.",
                    WebsiteUrl = "www.1in52.ca"
                },
                new Project
                {
                    PublicName = "Arc Economics",
                    PublicDescription = "Integrated DropBox into a clean, responsive, and custom content management system.",
                    WebsiteUrl = "www.arceconomics.com"
                },
                new Project
                {
                    PublicName = "Sweet Water Revolver",
                    PublicDescription = "The under-construction Sweet Water Revolver website.",
                    WebsiteUrl = "sweetwater.azurewebsites.net"
                },
                new Project
                {
                    PublicName = "Pet Portraitures",
                    PublicDescription = "The under-construction Pet Portraitures website.",
                    WebsiteUrl = "petsite.azurewebsites.net"
                },
                new Project
                {
                    PublicName = "Muddling Thru",
                    PublicDescription = "Created a simple, responsive blog to answer client questions and to explore computer programming.",
                    WebsiteUrl = "www.muddlingthru.ca"
                },
                new Project
                {
                    PublicName = "The Castaway Endurance Run",
                    PublicDescription = "Uploaded Garmin GPS data to create a printable, responsive map of the race.",
                    WebsiteUrl = "castaway.azurewebsites.net/"
                },
                new Project
                {
                    PublicName = "The Slope of Kongwa Hill",
                    PublicDescription =
                        "Renovated the existing website to make it both responsive and easy for the client to edit.",
                    WebsiteUrl = "tsokh.azurewebsites.net/"
                },
                new Project
                {
                    PublicName = "Marill Design",
                    PublicDescription = "Constructed this clean, responsive, marketing site from scratch.",
                    WebsiteUrl = "marilldesign.azurewebsites.net"
                },
                new Project
                {
                    PublicName = "Fernwood Road Cafe",
                    PublicDescription = "Provided custom CSS to integrate the cafe's shopping cart into its existing WordPress theme.",
                    WebsiteUrl = "www.fernwoodcafe.com"
                },
                new Project
                {
                    PublicName = "Gulf Island Detailing",
                    PublicDescription = "Built a clean, responsive, single-page website to market the business.",
                    WebsiteUrl = "ssidetailing.azurewebsites.net"
                },
                new Project
                {
                    PublicName = "Dave's Blasting",
                    PublicDescription = "Designed and created a responsive, multi-page, media-rich website to market the business.",
                    WebsiteUrl = "www.davesblasting.com"
                },
                new Project
                {
                    PublicName = "Garden Faire",
                    PublicDescription = "Modernized the existing by moving its content into a new, responsive content management system.",
                    WebsiteUrl = "www.gardenfaire.ca"
                },
                new Project
                {
                    PublicName = "Fowl Mood Farm",
                    PublicDescription = "Designed our first responsive website and included functionality to allow the owners to update the content.",
                    WebsiteUrl = "www.fowlmoodfarm.com"
                }
                // disclude nature works, 
                // because their website has a X-Frame same origin policy
            };

            #endregion

            return View("Index", clients);
        }

        public ActionResult People()
        {
            return View();
        }

        public ActionResult Services(int id = 0)
        {
            return View();
        }

        public ViewResult Rates()
        {
            return View();
        }

        public ActionResult Packages()
        {
            return View();
        }

        public ActionResult TechTips()
        {
            return View();
        }

        public ActionResult Community()
        {
            return View();
        }

        public ActionResult Presentations()
        {
            return View();
        }

        public ActionResult Checklists()
        {
            return View();
        }

        public ActionResult Links()
        {
            return View();
        }

        public RedirectResult Shop()
        {
            return Redirect("https://bigfont-demo-store.myshopify.com/");
        }

        public RedirectResult Blog()
        {
            return Redirect("http://www.muddlingthru.ca/");
        }

        public ActionResult SiteMap()
        {
            return View();
        }

        public ActionResult Contact()
        {
            return View();
        }

        public ActionResult ThankYou()
        {
            return View();
        }

        public ActionResult Analytics()
        {
            return View();
        }

        #endregion
    }
}
