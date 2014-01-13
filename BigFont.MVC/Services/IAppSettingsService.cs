using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace BigFont.MVC.Services
{
    public interface IAppSettingsService
    {
        string GaServicePrivateKeyFilePath { get; }
        string GaServiceAccountEmail { get; }
        string GaServicePublicKey { get; }
    }
}