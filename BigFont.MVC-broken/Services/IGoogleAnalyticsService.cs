using Google.Apis.Analytics.v3;
using Google.Apis.Analytics.v3.Data;
using Google.Apis.Auth.OAuth2;
using Google.Apis.Services;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Cryptography.X509Certificates;
using System.Web;

namespace BigFont.MVC.Services
{
    public interface IGoogleAnalyticsService
    {
        void AuthenticateGaService(string privateKeyFilePath, string publicKey, string serviceAccountEmail);

        /// <summary>
        /// Retrieve visits by web browser for the specified View ID.
        /// </summary>
        /// <param name="viewId">
        /// The View ID (aka Profile ID) for the analytics view that we want to query. To find this:
        /// <list>
        /// <item>Login to Google Analytics</item>
        /// <item>Click the Admin button</item>
        /// <item>Choose an Accout, Property, and View</item>
        /// <item>Under the View heading, click View Settings</item>
        /// <item>The View ID is an eight digit integer listed near the top of the page.</item>
        /// </list>
        /// To find this, sign in to Google Analytics, click the Admin button, choose an Account, a Property, and a View. 
        /// </param>
        /// <returns></returns>
        GaData GetVisitsByBrowser(int viewId);
    }
}