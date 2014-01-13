using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace BigFont.MVC.Services
{
    public class AppSettingsService : IAppSettingsService
    {
        private string GetAppSettingsValue(string key)
        {
            return System.Configuration.ConfigurationManager.AppSettings[key].ToString();
        }

        public string GaServicePrivateKeyFilePath { get { return GetAppSettingsValue("GaServicePrivateKeyFilePath"); } }
        public string GaServiceAccountEmail { get { return GetAppSettingsValue("GaServiceAccountEmail"); } }
    }
}