using System.Web.Mvc;

namespace BigFont.MVC.Areas.MiniBlog
{
    public class MiniBlogAreaRegistration : AreaRegistration
    {
        public override string AreaName
        {
            get
            {
                return "MiniBlog";
            }
        }

        public override void RegisterArea(AreaRegistrationContext context)
        {
            context.MapRoute(
                "MiniBlog_default",
                "Blog/{controller}/{action}/{id}",
                new { controller = "Blog", action = "Index", id = UrlParameter.Optional }
            );
        }
    }
}
