using System.Web;
using System.Web.Optimization;

namespace BigFont_MVC {
    public class BundleConfig {
        // For more information on Bundling, visit http://go.microsoft.com/fwlink/?LinkId=254725
        public static void RegisterBundles(BundleCollection bundles) {

            BundleTable.EnableOptimizations = true;

            #region styles

            bundles.Add(new StyleBundle("~/styles").Include(
                "~/assets-05/bootstrap/css/bootstrap.css",
                "~/assets-05/bootstrap/css/responsive.css",
                "~/assets-05/font-awesome/css/font-awesome.css",
                "~/assets-05/bigfont/css/bigfont.css"
                ));

            #endregion

            #region scripts

            bundles.Add(new ScriptBundle("~/scripts").Include(
                "~/assets-05/jquery/js/jquery-{version}.js",
                "~/assets-05/jquery/js/jquery.validate.js",
                "~/assets-05/bootstrap/js/bootstrap.js",
                "~/assets-05/other/js/modernizer.js",
                "~/assets-05/bigfont/js/bigfont.js"
                ));

            #endregion

        }
    }
}