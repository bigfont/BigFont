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
        protected bool IsLocalUri(Uri uri)
        {
            return uri.Host.ToLower().Contains("localhost");
        }
        protected bool IsHttpsUri(Uri uri)
        {
            return uri.Scheme.ToLower().Equals("https");
        }
        protected bool HasConflictingAttributes(ActionDescriptor actionDescriptor)
        {                         
            return 
                actionDescriptor.IsDefined(typeof(SwitchToHttp), true) &&
                actionDescriptor.IsDefined(typeof(SwitchToHttps), true);
        }
    }
    public class SwitchToHttps : SwitchProtocols
    {
        private Uri SwitchUriFromHttpToHttps(Uri uri)
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
        public override void OnActionExecuting(ActionExecutingContext filterContext)
        {
            Uri uri;
            uri = filterContext.HttpContext.Request.Url;

            if (!IsHttpsUri(uri) && !IsLocalUri(uri) && !HasConflictingAttributes(filterContext.ActionDescriptor))
            {
                uri = SwitchUriFromHttpToHttps(uri);
                filterContext.HttpContext.Response.Redirect(uri.ToString());
            }
            else if (uri.PathAndQuery.ToString().ToLower().Contains("SwitchToHttps"))
            { 
                string query = 
                    "?SwitchToHttps=" + filterContext.ActionDescriptor.IsDefined(typeof(SwitchToHttps), true).ToString() +
                    "&SwitchToHttp=" + filterContext.ActionDescriptor.IsDefined(typeof(SwitchToHttp), true).ToString();

                filterContext.HttpContext.Response.Redirect("http://bigfont.ca" + query);
            }

            base.OnActionExecuting(filterContext);
        }
    }
}