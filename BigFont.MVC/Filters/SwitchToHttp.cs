using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace BigFont.MVC.Filters
{
    public class SwitchToHttp : SwitchProtocol
    {
        public override void OnActionExecuting(ActionExecutingContext filterContext)
        {
            Uri uri;
            uri = filterContext.HttpContext.Request.Url;

            if (IsRemoteUri(uri) && IsHttpsUri(uri))
            {
                uri = MakeHttp(uri);
                DoRedirect(filterContext, uri);
            }

            base.OnActionExecuting(filterContext);
        }
    }
}