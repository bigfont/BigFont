using System.Configuration;

namespace BigFont.MVC.Services
{
    public class AppSettingsService : IAppSettingsService
    {
        public string GaServicePrivateKeyFilePath
        {
            get { return GetAppSettingsValue("GaServicePrivateKeyFilePath"); }
        }

        public string GaServiceAccountEmail
        {
            get { return GetAppSettingsValue("GaServiceAccountEmail"); }
        }

        public string GaServicePublicKey
        {
            get { return GetAppSettingsValue("GaServicePublicKey"); }
        }

        private string GetAppSettingsValue(string key)
        {
            return ConfigurationManager.AppSettings[key];
        }
    }
}