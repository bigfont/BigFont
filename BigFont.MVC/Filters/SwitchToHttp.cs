using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace BigFont.MVC.Filters
{   
    public class SwitchToHttp : ActionFilterAttribute
    {
        private Uri SwitchUriFromHttpsToHttp(Uri uri)
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

            if (scheme.Equals("https"))
            {
                scheme = scheme.Replace("s", string.Empty);
            }

            builder = new UriBuilder(scheme, host, port) { Path = pathAndQuery };

            return builder.Uri;
        }
        private bool IsHttpUri(Uri uri)
        {
            return uri.Scheme.ToLower().Equals("http");
        }
        public override void OnActionExecuting(ActionExecutingContext filterContext)
        {
            Uri uri;
            uri = filterContext.HttpContext.Request.Url;

            if (!IsHttpUri(uri))
            {
                uri = SwitchUriFromHttpsToHttp(uri);
                filterContext.HttpContext.Response.Redirect(uri.ToString());
            }

            base.OnActionExecuting(filterContext);
        }
    }
}