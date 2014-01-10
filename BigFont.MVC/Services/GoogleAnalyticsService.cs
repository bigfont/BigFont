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

        public AnalyticsService CreateAuthenticatedGaService()
        {
            String serviceAccountEmail = System.Configuration.ConfigurationManager.AppSettings["APPSETTING_gaServiceAccountEmail"];

            // get the certificate
            var certificate = new X509Certificate2(@"privatekey.p12", "notasecret", X509KeyStorageFlags.Exportable);

            // create the credential
            ServiceAccountCredential credential = new ServiceAccountCredential(
               new ServiceAccountCredential.Initializer(serviceAccountEmail)
               {
                   Scopes = new[] { AnalyticsService.Scope.AnalyticsReadonly }
               }.FromCertificate(certificate));

            // create the service.
            AnalyticsService service = new AnalyticsService(new BaseClientService.Initializer()
            {
                HttpClientInitializer = credential,
                ApplicationName = "Google Analytics",
            });

            return service;
        }

        public GaData GetVisitsByBrowser()
        {
            if(service == null)
            { 
                service = CreateAuthenticatedGaService();
            }

            // create query
            var query = service.Data.Ga
                .Get("ga:66062262", "2013-01-01", "2013-12-31", "ga:visits");
            query.Dimensions = "ga:browser";

            // execute query                
            GaData data = query.Execute();
            return data;
        }
    }
}