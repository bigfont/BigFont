using System.Web.Optimization;

namespace BigFont.MVC
{
    public class BundleConfig
    {
        // For more information on Bundling, visit http://go.microsoft.com/fwlink/?LinkId=254725
        public static void RegisterBundles(BundleCollection bundles)
        {
            // use false because we minimize with lessc
            BundleTable.EnableOptimizations = false;            

            #region styles

            bundles.Add(new StyleBundle("~/crispy").Include(
                "~/Content/font-awesome/css/font-awesome.min.css",
                "~/Content/bootstrap/css/bootstrap.min.css",
                "~/Content/bigfont/css/bigfont.min.css",
                "~/Content/bigfont/css/bigfont-print.min.css"
                ));

            #endregion

            #region scripts

            bundles.Add(new ScriptBundle("~/screager").Include(
                "~/Scripts/modernizer.js"
                ));

            bundles.Add(new ScriptBundle("~/scriptolic").Include(
                "~/Scripts/jquery-{version}.js",
                "~/Scripts/jquery.cookie.js",
                "~/Scripts/bootstrap.min.js",
                "~/Scripts/json2.js",
                "~/Scripts/bigfont.js",
                "~/Scripts/bigfont-toc.js",
                "~/Scripts/bigfont-clamp-width.js",
                "~/Scripts/bigfont-accordion-iframe.js",
                "~/Scripts/bigfont-exchange-attrs.js"
                ));

            #endregion
        }
    }
}