using System.Web.Optimization;

namespace BigFont.MVC
{
    public class BundleConfig
    {
        // For now, we are using ASP.NET bundling for JavaScript,
        // and using the Mads Kristensen cache busting for CSS.
        // For more information on cache busting, visit http://madskristensen.net/post/cache-busting-in-aspnet
        // For more information on Bundling, visit http://go.microsoft.com/fwlink/?LinkId=254725
        public static void RegisterBundles(BundleCollection bundles)
        {
            BundleTable.EnableOptimizations = false;

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
        }
    }
}