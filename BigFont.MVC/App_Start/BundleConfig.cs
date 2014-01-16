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
                "~/Content/font-awesome/css/font-awesome.css",
                "~/Content/bootstrap/css/bootstrap.css",
                "~/Content/bigfont/css/bigfont.css",
                "~/Content/bigfont/css/bigfont-print.css"
                ));

            #endregion

            #region scripts

            bundles.Add(new ScriptBundle("~/screager").Include(
                "~/Scripts/modernizer.js"
                ));

            bundles.Add(new ScriptBundle("~/scriptolic").Include(
                "~/Scripts/jquery-{version}.js",
                "~/Scripts/jquery.validate.js",
                "~/Scripts/jquery.cookie.js",
                "~/Scripts/bootstrap.js",
                "~/Scripts/bigfont.js",
                "~/Scripts/bigfont-toc.js",
                "~/Scripts/bigfont-dropbox-oauth.js",
                "~/Scripts/bigfont-clamp-width.js",
                "~/Scripts/bigfont-accordion-iframe.js"
                ));

            bundles.Add(new ScriptBundle("~/gapi").Include(
                "~/Scripts/bigfont-gapi-analytics-auth.js",
                "~/Scripts/bigfont-gapi-analytics.js"
                ));

            #endregion
        }
    }
}