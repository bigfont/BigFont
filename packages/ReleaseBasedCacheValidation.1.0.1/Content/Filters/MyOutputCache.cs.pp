using System;
using System.Collections.Generic;
using System.Collections.Specialized;
using System.Configuration;
using System.Diagnostics;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace $rootnamespace$.Filters
{
    public class ValidateCacheBasedOnApplicationReleaseNumber : OutputCacheAttribute
    {
        private const string ETagResponseHeaderKey = "ETag";
        private const string ETagRequestHeaderKey = "If-None-Match";
        private const string ApplicationReleaseNumber = "ApplicationReleaseNumber";
        private const int NotModifiedCode = 304;
        private const string NotModifiedDesc = "Not Modified";

        public override void OnActionExecuting(ActionExecutingContext filterContext)
        {
            // get the applications actual release number from web.config
            string currentAppRelease = ConfigurationManager.AppSettings.Get(ApplicationReleaseNumber);

            // get the release number of the last cached response
            string requestsAppRelease = filterContext.HttpContext.Request.Headers[ETagRequestHeaderKey];

            int current;
            int requests;
            
            // compare the actual release number with the cached release number
            if (int.TryParse(currentAppRelease, out current) && int.TryParse(requestsAppRelease, out requests) && current == requests)
            {
                // the same so return not modified 
                filterContext.Result = new HttpStatusCodeResult(NotModifiedCode, NotModifiedDesc);
                // do not cache the 304 response
                filterContext.HttpContext.Response.CacheControl = string.Empty;
            }
            else
            {
                // add the ETag
                filterContext.HttpContext.Response.Headers.Add(ETagResponseHeaderKey, currentAppRelease);
            }                        
        }
    }
}