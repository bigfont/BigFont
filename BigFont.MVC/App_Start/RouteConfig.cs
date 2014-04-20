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
            routes.IgnoreRoute("metaweblog");

            // route all other paths, even if they exist on disk
            routes.RouteExistingFiles = true;

            routes.MapRoute("ActionOnly", "{action}",
                new {controller = "Home", action = "Index", id = UrlParameter.Optional}
                );

            routes.MapRoute("ControllerAction", "{controller}/{action}",
                new {controller = "Home", action = "Index", id = UrlParameter.Optional}
                );

            routes.MapRoute("Default", "{controller}/{action}/{id}",
                new {controller = "Home", action = "Index", id = UrlParameter.Optional}
                );
        }
    }
}