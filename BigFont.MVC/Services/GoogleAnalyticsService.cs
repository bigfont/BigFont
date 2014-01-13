using System;
using System.Security.Cryptography.X509Certificates;
using Google.Apis.Analytics.v3;
using Google.Apis.Analytics.v3.Data;
using Google.Apis.Auth.OAuth2;
using Google.Apis.Services;

namespace BigFont.MVC.Services
{
    public class GoogleAnalyticsService : IGoogleAnalyticsService
    {
        private AnalyticsService _service;

        public void AuthenticateGaService(string privateKeyFullPath, string publicKey, string serviceAccountEmail)
        {
            // get the certificate                        
            var certificate = new X509Certificate2(privateKeyFullPath, publicKey,
                X509KeyStorageFlags.Exportable | X509KeyStorageFlags.MachineKeySet);

            // create the credential
            var credential = new ServiceAccountCredential(
                new ServiceAccountCredential.Initializer(serviceAccountEmail)
                {
                    Scopes = new[] {AnalyticsService.Scope.AnalyticsReadonly}
                }.FromCertificate(certificate));

            // create the _service.
            _service = new AnalyticsService(new BaseClientService.Initializer
            {
                HttpClientInitializer = credential,
                ApplicationName = "Google Analytics",
            });
        }

        public GaData GetVisitsByBrowser(int viewId)
        {
            if (_service == null)
            {
                throw new Exception("Please call AuthenticateService() before calling GetVisitsByBrowser().");
            }

            // instantiate query variables
            string id = "ga:" + viewId;
            string endDate = DateTime.Now.ToString("yyyy-MM-dd");

            // create query
            DataResource.GaResource.GetRequest query = _service.Data.Ga.Get(id, "2013-01-01", endDate, "ga:visits");
            query.Dimensions = "ga:browser";
            query.Sort = "-ga:visits,ga:browser";

            // execute                
            GaData data = query.Execute();
            return data;
        }
    }
}