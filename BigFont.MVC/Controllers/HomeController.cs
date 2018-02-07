using System;
using System.Collections.Generic;
using System.Web.Mvc;
using BigFont.MVC.Models;
using BigFont.MVC.ViewModels;
using NodaTime;

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
                ViewData["error"] = "Unknown Action: \"" + Server.HtmlEncode(actionName) + "\"";
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

            var clients = new List<Project>
            {
                new Project // lrj-global
                {
                    PublicName = "LRJ Global",
                    PublicDescription = "This is a content management system for LRJ Global Ventures Group.",
                    WebsiteUrl = "www.lrjglobal.ca"
                },
                new Project // de-en
                {
                    PublicName = "DE-EN Translation",
                    PublicDescription = "Created a simple, responsive, business website.",
                    WebsiteUrl = "www.de-en-translation.com"
                },
                new Project // ingrid-hauss
                {
                    PublicName = "Ingrid Hauss | Yoga & Art",
                    PublicDescription = "A simple, fast, responsive, brochure-style website, using ASP.NET Web Pages and Bootstrap, hosted in a Windows Azure Website, hand coded in Visual Studio, and version controlled in GitHub.",
                    WebsiteUrl = "www.ingridhauss.com"
                },
                new Project // singular-biogenics
                {
                    PublicName = "Singular Biogenics",
                    PublicDescription = "Created and themed a simple, responsive Orchard CMS.",
                    WebsiteUrl = "www.singularbiogenics.com"
                },
                new Project // arceconomic
                {
                    PublicName = "Arc Economics",
                    PublicDescription = "Integrated DropBox into a clean, responsive, and custom content management system.",
                    WebsiteUrl = "www.arceconomics.com"
                },
                new Project // petsite
                {
                    PublicName = "Pet Portraitures",
                    PublicDescription = "The under-construction Pet Portraitures website.",
                    WebsiteUrl = "www.petportraiture.ca"
                },
                new Project // tsokh
                {
                    PublicName = "The Slope of Kongwa Hill",
                    PublicDescription =
                        "Renovated the existing website to make it both responsive and easy for the client to edit.",
                    WebsiteUrl = "www.slopeofkongwahill.com"
                },
                new Project // davesblasting1
                {
                    PublicName = "Dave's Blasting",
                    PublicDescription = "Designed and created a responsive, multi-page, media-rich website to market the business.",
                    WebsiteUrl = "www.davesblasting.com"
                },
                new Project // gardenfaire2
                {
                    PublicName = "Garden Faire",
                    PublicDescription = "Modernized the existing by moving its content into a new, responsive content management system.",
                    WebsiteUrl = "www.gardenfaire.ca"
                },
                new Project // conjuring
                {
                    PublicName = "Salt Spring Conjuring Club",
                    PublicDescription = "AngularJS and Bootstrap on the client with SQL Server, MVC.NET and C# hosted in Windows Azure.",
                    WebsiteUrl = "www.1in52.ca"
                },
                new Project // muddlingthru
                {
                    PublicName = "Muddling Thru",
                    PublicDescription = "Created a simple, responsive blog to answer client questions and to explore computer programming.",
                    WebsiteUrl = "www.muddlingthru.ca"
                }
             };

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

        public ActionResult Community()
        {
            return View();
        }

        public ActionResult Presentations()
        {
            ViewBag.Winter2015Presentations = GetWinter2015Presentations();

            ViewBag.MuddlingThruPresentations = GetMuddlingThruPresentations();

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

        public RedirectResult OldBlog()
        {
            return Redirect("http://www.muddlingthru.ca/");
        }

        public RedirectResult NewBlog()
        {
            return Redirect("http://blog.bigfont.ca/");
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

        #region Presentations

        private PresentationViewModel[] GetWinter2015Presentations()
        {
            var pacificTime = DateTimeZoneProviders.Tzdb.GetZoneOrNull("America/Vancouver");
            var presentations = new PresentationViewModel[]
            {
                new PresentationViewModel()
                {
                    Name = "Internet Security",
                    StartDateUtc = pacificTime.AtStrictly(new LocalDateTime(year: 2015, month: 09, day: 08, hour: 17, minute: 0)),
                    Description = "Keep your online accounts secure."
                },
                new PresentationViewModel()
                {
                    Name = "What is the Internet?",
                    StartDateUtc = pacificTime.AtStrictly(new LocalDateTime(year: 2015, month: 10, day: 13, hour: 17, minute: 0)),
                    Description = "The Internet is wires."
                },
                new PresentationViewModel()
                {
                    Name = "What is the World Wide Web?",
                    StartDateUtc = pacificTime.AtStrictly(new LocalDateTime(year: 2015, month: 11, day: 10, hour: 17, minute: 00)),
                    Description = "The World Wide Web is documents."
                },
                new PresentationViewModel()
                {
                    Name = "What is the Cloud?",
                    StartDateUtc = pacificTime.AtStrictly(new LocalDateTime(year: 2015, month: 12, day: 08, hour: 17, minute: 00)),
                    Description = "The Cloud is computers for rent."
                }
            };

            return presentations;
        }

        private PresentationViewModel[] GetMuddlingThruPresentations()
        {
            var presentations = new PresentationViewModel[]  {

                new PresentationViewModel(
                        "May",
                        2014,
                        @"Internet Security?",
                        @"Web security is a matter of degree and risk. Consider an analogy to your home. While it cannot be as secure as Fort Knox, you can avoid leaving your door ajar, and while you might never have a flood, you should probably buy insurance. How secure do you need to be?",
                        "Shaun Luttin with Cindy Jacobsen",
                        @"http://1drv.ms/1rT7n7I",
                        "PowerPoint",
                        "Poster_InternetSecurity_May2014",
                        true),

                new PresentationViewModel(
                        "April",
                        2014,
                        @"What’s up with Windows XP?",
                        @"Microsoft stopped supporting Windows XP in early April. If you're using Windows XP, you might wonder, 'Do I need to do anything?' We will look at three options. This is a beginner level talk for people currently using Windows XP.",
                        "Shaun Luttin",
                        @"http://1drv.ms/1rT7m3T",
                        "PowerPoint",
                        "Poster_WindowsXP_Apr2014",
                        true),

                new PresentationViewModel(
                        "March",
                        2014,
                        "Intro to Windows 8",
                        "Back by Popular Demand! Understand the new layout and metro mode; learn key locations and navigation skills; backup your data and minimize viruses.",
                        "Shaun Luttin",
                        "http://1drv.ms/1rT7ksM",
                        "Windows 8.1 Cheat Sheet",
                        "Poster_Windows8_101_Mar2014",
                        true),

                new PresentationViewModel(
                        "January",
                        2014,
                        "Intro to Windows 8",
                        "Understand the new layout and metro mode; learn key locations and navigation skills; backup your data and minimize viruses.",
                        "Shaun Luttin",
                        "http://1drv.ms/1rT7ksM",
                        "Windows 8.1 Cheat Sheet",
                        "Poster_Windows8_101_Jan2014",
                        true),

                new PresentationViewModel(
                        "July",
                        2013,
                        "Searching the Internet",
                        "Ways to Search the Internet with a Focus on Using Google.",
                        "Shaun Luttin",
                        @"http://1drv.ms/1rT7iRG",
                        "PowerPoint",
                        "Poster_GoogleSearch_101",
                        true),

                new PresentationViewModel(
                        "June",
                        2013,
                        "Getting on the Internet",
                        "Ways to Access the Internet with a Focus on Using a Browser.",
                        "Shaun Luttin",
                        @"http://1drv.ms/1rT7fVW",
                        "PowerPoint",
                        "Poster_Internet_101",
                        true)

            };

            return presentations;
        }

        #endregion
    }
}
