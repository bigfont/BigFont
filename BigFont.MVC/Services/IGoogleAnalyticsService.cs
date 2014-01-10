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
        void AuthenticateService(string privateKeyFilePath, string publicKey, string serviceAccountEmail);
        GaData GetVisitsByBrowser();                
    }
}