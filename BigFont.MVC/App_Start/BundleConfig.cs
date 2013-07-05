using System.Web;
using System.Web.Optimization;

namespace BigFont_MVC {
    public class BundleConfig {
        // For more information on Bundling, visit http://go.microsoft.com/fwlink/?LinkId=254725
        public static void RegisterBundles(BundleCollection bundles) {

            BundleTable.EnableOptimizations = true;

            #region styles

            bundles.Add(new StyleBundle("~/styles").Include(
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

            bundles.Add(new ScriptBundle("~/scripts").Include(
                "~/Scripts/jquery-{version}.js",
                "~/Scripts/jquery.validate.js",
                "~/Scripts/bootstrap.js",
                "~/Scripts/modernizer.js",
                "~/Scripts/bigfont.js",
                "~/Scripts/bigfont-toc.js"
                ));

            #endregion

        }
    }
}