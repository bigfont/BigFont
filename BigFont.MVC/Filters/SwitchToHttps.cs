using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace BigFont.MVC.Filters
{
    public class SwitchProtocols : ActionFilterAttribute
    {
        protected int HttpPort = 80;
        protected int HttpsPort = 443;
        protected bool IsRemoteUri(Uri uri)
        {
            return !uri.Host.ToLower().Contains("localhost");
        }
        protected bool IsHttpsUri(Uri uri)
        {
            return uri.Scheme.ToLower().Equals("https");
        }
        protected Uri MakeHttp(Uri uri)
        {
            string scheme;
            string host;
            string pathAndQuery;
            UriBuilder builder;

            scheme = uri.Scheme.ToLower();
            host = uri.Host.ToLower();
            pathAndQuery = uri.PathAndQuery.ToLower();

            if (scheme.Equals("https"))
            {
                scheme = scheme.Replace("s", string.Empty);
            }

            builder = new UriBuilder(scheme, host, HttpPort) { Path = pathAndQuery };

            return builder.Uri;
        }
        protected Uri MakeHttps(Uri uri)
        {
            string scheme;
            string host;
            string pathAndQuery;
            UriBuilder builder;

            scheme = uri.Scheme.ToLower();
            host = uri.Host.ToLower();
            pathAndQuery = uri.PathAndQuery.ToLower();

            if (scheme.Equals("http"))
            {
                scheme += "s";
            }

            builder = new UriBuilder(scheme, host, HttpsPort) { Path = pathAndQuery };

            return builder.Uri;
        }
        protected bool HasSwitchToHttpAttribute(ActionDescriptor actionDescriptor)
        {
            // IsDefined detects attributes that are defined directly on the action (not global filters)
            return actionDescriptor.IsDefined(typeof(SwitchToHttp), true);
        }
        protected void DoRedirect(ActionExecutingContext filterContext, Uri uri)
        {                    
            filterContext.HttpContext.Response.Redirect(uri.ToString());
        }
    }
    public class SwitchToHttps : SwitchProtocols
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