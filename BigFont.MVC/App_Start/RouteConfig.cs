using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.Routing;

namespace BigFont.MVC
{
    public class RouteConfig
    {
        public static void RegisterRoutes(RouteCollection routes)
        {
            // do not route these paths
            routes.IgnoreRoute("{resource}.axd/{*pathInfo}");
            routes.IgnoreRoute("Permalinks/{*relpath}");
            routes.IgnoreRoute("Scripts/{*relpath}");
            routes.IgnoreRoute("Images/{*relpath}");

            // route all other paths, even if they exist on disk
            routes.RouteExistingFiles = true;

            routes.MapRoute(
                name: "TechTips",
                url: "TechTips",
                defaults: new { controller = "TechTips", action = UrlParameter.Optional }
            );

            routes.MapRoute(
                name: "Home Actions",
                url: "{action}",
                defaults: new { controller = "Home", action = "Index", id = UrlParameter.Optional }
            );

            routes.MapRoute(
                name: "Controller and Action", 
                url: "{controller}/{action}",
                defaults: new { controller = "Home", action = "Index", id = UrlParameter.Optional }
            );

            routes.MapRoute(
                name: "Default", 
                url: "{controller}/{action}/{id}",
                defaults: new { controller = "Home", action = "Index", id = UrlParameter.Optional }
            );
        }
    }
}
