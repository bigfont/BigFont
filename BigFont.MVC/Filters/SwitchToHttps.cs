using System;
using System.Web.Mvc;

namespace BigFont.MVC.Filters
{
    public class SwitchToHttps : SwitchProtocol
    {
        public override void OnActionExecuting(ActionExecutingContext filterContext)
        {
            Uri uri = filterContext.HttpContext.Request.Url;

            if (IsRemoteUri(uri) && !IsHttpsUri(uri) && !HasSwitchToHttpAttribute(filterContext.ActionDescriptor))
            {
                uri = MakeHttps(uri);
                DoRedirect(filterContext, uri);
            }

            base.OnActionExecuting(filterContext);
        }
    }
}