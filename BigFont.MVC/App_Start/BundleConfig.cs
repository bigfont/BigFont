using System.Web;
using System.Web.Optimization;

namespace BigFont.MVC
{
    public class BundleConfig
    {
        // For more information on Bundling, visit http://go.microsoft.com/fwlink/?LinkId=254725
        public static void RegisterBundles(BundleCollection bundles)
        {

            BundleTable.EnableOptimizations = true;

            #region styles

            bundles.Add(new StyleBundle("~/crispy").Include(
                "~/Content/bootstrap/css/bootstrap.css",
                "~/Content/font-awesome/css/font-awesome.css",
                "~/Content/bigfont/css/bigfont.css",
                // bring in responsive to cascade over the non-responsive css
                "~/Content/bootstrap/css/responsive.css",
                "~/Content/bigfont/css/bigfont-responsive.css",
                "~/Content/bigfont/css/bigfont-print.css"
                ));

            #endregion

            #region scripts

            bundles.Add(new ScriptBundle("~/scriptolic").Include(
                "~/Scripts/jquery-{version}.js",
                "~/Scripts/jquery.validate.js",
                "~/Scripts/jquery.cookie.js",
                "~/Scripts/bootstrap.js",
                "~/Scripts/bigfont.js",
                "~/Scripts/bigfont-toc.js"
                ));

            bundles.Add(new ScriptBundle("~/gapi").Include(
                "~/Scripts/bigfont-gapi-analytics-auth.js",
                "~/Scripts/bigfont-gapi-analytics.js"
            ));

            #endregion

        }
    }
}