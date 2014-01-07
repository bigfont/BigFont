using System.Collections.Generic;
using System.Web;
using MvcSiteMapProvider;
using MvcSiteMapProvider.Extensibility;

namespace BigFont.MVC.Providers
{
    public class MyCustomVisibilityProvider : ISiteMapNodeVisibilityProvider
    {
        public bool IsVisible(SiteMapNode node, HttpContext context, IDictionary<string, object> sourceMetadata)
        {
            MvcSiteMapNode mvcNode;
            string visibility;
            bool isVisible;

            // Convert to MvcSiteMapNode
            mvcNode = node as MvcSiteMapNode;
            if (mvcNode == null)
            {
                return true;
            }

            // Is a visibility attribute specified?
            visibility = mvcNode["visibility"];
            if (string.IsNullOrEmpty(visibility))
            {
                return true;
            }
            visibility = visibility.Trim().ToLower();

            //process visibility
            isVisible = true;
            if(visibility.Equals("authenticated"))
            {
                isVisible = context.Request.IsAuthenticated;
            }
            else if (visibility.Equals("anonymous"))
            {
                isVisible = !context.Request.IsAuthenticated;
            }
            return isVisible;
        }
    }
}