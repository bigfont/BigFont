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

        public GaData GetVisitsByBrowser(int viewID)
        {
            if(service == null)
            { 
                throw new Exception("Please call AuthenticateService() before calling GetVisitsByBrowser().");
            }

            // declare query variables
            string id;
            string startDate;
            string endDate;
            string metricsCsv;
            string dimensionsCsv;
            string sortCsv;

            // instantiate query variables
            id = "ga:" + viewID.ToString();
            startDate = "2013-01-01";
            endDate = DateTime.Now.ToString("yyyy-MM-dd");
            metricsCsv = "ga:visits";
            dimensionsCsv = "ga:browser";
            sortCsv = "-ga:visits,ga:browser";

            // create query
            var query = service.Data.Ga.Get(id, startDate, endDate, metricsCsv);
            query.Dimensions = dimensionsCsv;
            query.Sort = sortCsv;

            // execute                
            GaData data = query.Execute();
            return data;
        }
    }
}