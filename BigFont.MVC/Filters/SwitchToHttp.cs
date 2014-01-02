using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace BigFont.MVC.Filters
{
    public class SwitchToHttp : SwitchProtocols
    {
        private Uri SwitchUriFromHttpsToHttp(Uri uri)
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
        public override void OnActionExecuting(ActionExecutingContext filterContext)
        {
            Uri uri;
            uri = filterContext.HttpContext.Request.Url;

            if (IsHttpsUri(uri) && !IsLocalUri(uri))
            {
                uri = SwitchUriFromHttpsToHttp(uri);
                filterContext.HttpContext.Response.Redirect(uri.ToString());
            }

            base.OnActionExecuting(filterContext);
        }
    }
}