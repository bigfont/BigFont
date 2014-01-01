using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace BigFont.MVC.Filters
{   
    public class SwitchToHttps : ActionFilterAttribute
    {
        private Uri SwitchUriFromHttpToHttps(Uri uri)
        {
            string scheme;
            string host;
            int port;
            string pathAndQuery;
            UriBuilder builder;

            scheme = uri.Scheme.ToLower();
            host = uri.Host.ToLower();
            port = uri.Port;
            pathAndQuery = uri.PathAndQuery.ToLower();

            if (scheme.Equals("http"))
            {
                scheme += "s";
            }

            builder = new UriBuilder(scheme, host, port) { Path = pathAndQuery };

            return builder.Uri;
        }
        private bool IsHttpsUri(Uri uri)
        {
            return uri.Scheme.ToLower().Equals("https");
        }
        private bool IsLocalUri(Uri uri)
        {
            return uri.Host.ToLower().Contains("localhost");
        }
        public override void OnActionExecuting(ActionExecutingContext filterContext)
        {
            Uri uri;
            uri = filterContext.HttpContext.Request.Url;

            if (!IsHttpsUri(uri) && !IsLocalUri(uri))
            {
                uri = SwitchUriFromHttpToHttps(uri);
                filterContext.HttpContext.Response.Redirect(uri.ToString());
            }

            base.OnActionExecuting(filterContext);
        }
    }
}