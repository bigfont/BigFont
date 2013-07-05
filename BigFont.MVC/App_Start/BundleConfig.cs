using System.Web;
using System.Web.Optimization;

namespace BigFont.MVC {
    public class BundleConfig {
        // For more information on Bundling, visit http://go.microsoft.com/fwlink/?LinkId=254725
        public static void RegisterBundles(BundleCollection bundles) {

            BundleTable.EnableOptimizations = true;

            #region styles

            bundles.Add(new StyleBundle("~/styles").Include(
                "~/assets-10/bootstrap/css/bootstrap.css",                
                "~/assets-10/font-awesome/css/font-awesome.css",
                "~/assets-10/bigfont/css/bigfont.css",
                // bring in responsive to cascade over the non-responsive css
                "~/assets-10/bootstrap/css/responsive.css",
                "~/assets-10/bigfont/css/bigfont-responsive.css",
                "~/assets-10/bigfont/css/bigfont-print.css"                
                ));

            #endregion

            #region scripts

            bundles.Add(new ScriptBundle("~/scripts").Include(
                "~/assets-10/jquery/js/jquery-{version}.js",
                "~/assets-10/jquery/js/jquery.validate.js",
                "~/assets-10/bootstrap/js/bootstrap.js",
                "~/assets-10/other/js/modernizer.js",
                "~/assets-10/bigfont/js/bigfont.js",
                "~/assets-10/bigfont/js/bigfont-toc.js"                

                ));

            #endregion

        }
    }
}