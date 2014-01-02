using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace BigFont.MVC.Filters
{
    public class SwitchToHttp : SwitchProtocols
    {
        public override void OnActionExecuting(ActionExecutingContext filterContext)
        {
            Uri uri;
            uri = filterContext.HttpContext.Request.Url;

            if (IsHttpsUri(uri) && IsRemoteUri(uri))
            {
                uri = SwitchUriFromHttpsToHttp(uri);
                filterContext.HttpContext.Response.Redirect(uri.ToString());
            }

            base.OnActionExecuting(filterContext);
        }
    }
}