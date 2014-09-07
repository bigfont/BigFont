using System.Web.Mvc;
using BigFont.MVC.Filters;

namespace BigFont.MVC
{
    public class FilterConfig
    {
        public static void RegisterGlobalFilters(GlobalFilterCollection filters)
        {
            filters.Add(new HandleErrorAttribute());
            filters.Add(new SwitchToHttps());
        }
    }
}