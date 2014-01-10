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
    public class GoogleAnalyticsService : IGoogleAnalyticsService
    {
        private AnalyticsService service;

        public void AuthenticateGaService(string privateKeyFullPath, string publicKey, string serviceAccountEmail)
        {
            // get the certificate                        
            var certificate = new X509Certificate2(privateKeyFullPath, publicKey, X509KeyStorageFlags.Exportable | X509KeyStorageFlags.MachineKeySet);

            // create the credential
            ServiceAccountCredential credential = new ServiceAccountCredential(
               new ServiceAccountCredential.Initializer(serviceAccountEmail)
               {
                   Scopes = new[] { AnalyticsService.Scope.AnalyticsReadonly }
               }.FromCertificate(certificate));

            // create the service.
            this.service = new AnalyticsService(new BaseClientService.Initializer()
            {
                HttpClientInitializer = credential,
                ApplicationName = "Google Analytics",
            });            
        }

        public GaData GetVisitsByBrowser()
        {
            if(service == null)
            { 
                throw new Exception("Please call AuthenticateService() before calling GetVisitsByBrowser().");
            }

            // create query on the visits metric
            var query = service.Data.Ga
                .Get("ga:66062262", "2013-01-01", "2013-12-31", "ga:visits");

            // include the browser dimension
            query.Dimensions = "ga:browser";

            // sort descending by visits, then by ascending by browser
            query.Sort = "-ga:visits,ga:browser";

            // execute query                
            GaData data = query.Execute();
            return data;
        }
    }
}