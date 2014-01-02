using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace BigFont.MVC.Filters
{

    public class SwitchToHttps : SwitchProtocol
    {
        public override void OnActionExecuting(ActionExecutingContext filterContext)
        {
            Uri uri;
            uri = filterContext.HttpContext.Request.Url;

            if (IsRemoteUri(uri) && !IsHttpsUri(uri) && !HasSwitchToHttpAttribute(filterContext.ActionDescriptor))
            {
                uri = MakeHttps(uri);
                DoRedirect(filterContext, uri);
            }

            base.OnActionExecuting(filterContext);
        }
    }
}