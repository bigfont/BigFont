using System.Web.Mvc;
using WebMarkupMin.Mvc.ActionFilters;

namespace BigFont.MVC
{
    public class FilterConfig
    {
        public static void RegisterGlobalFilters(GlobalFilterCollection filters)
        {
            filters.Add(new HandleErrorAttribute());
            filters.Add(new MinifyHtmlAttribute());
        }
    }
}
