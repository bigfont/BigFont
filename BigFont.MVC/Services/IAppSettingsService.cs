using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace BigFont.MVC.Services
{
    /// <summary>
    /// These keys are stored in Windows Azure > Websites > [Website Name] > Configure > app settings
    /// </summary>
    public interface IAppSettingsService
    {
        string GaServicePrivateKeyFilePath { get; }
        string GaServiceAccountEmail { get; }
        string GaServicePublicKey { get; }
    }
}