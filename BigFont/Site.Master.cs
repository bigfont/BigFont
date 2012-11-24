using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;

namespace BigFont
{
    public partial class Site : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            MakeTheCurrentContentPageActiveInTheMainNavigationBar();
        }
        private void MakeTheCurrentContentPageActiveInTheMainNavigationBar()
        {
            string virtualPath;
            HtmlGenericControl li;
            virtualPath = Page.AppRelativeVirtualPath;
            virtualPath = virtualPath.Replace("~/", "");
            virtualPath = virtualPath.Replace(".aspx", "");
            virtualPath = virtualPath.ToLower();
            li = new HtmlGenericControl();
            switch (virtualPath)
            {
                case "default": li = liHome; break;
                case "people": li = liPeople; break;
                case "responsive": li = liResponsiveDesign; break;
                default: break;
            }
            li.Attributes["class"] += " active";
        }
    }
}