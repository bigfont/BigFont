using System;
using System.Data.Entity;
using System.Data.Entity.Infrastructure;
using System.Threading;
using System.Web.Mvc;
using WebMatrix.WebData;
using BigFont.MVC.Models;

namespace BigFont.MVC.Filters {
    [AttributeUsage(AttributeTargets.Class | AttributeTargets.Method, AllowMultiple = false, Inherited = true)]
    public sealed class InitializeSimpleMembershipAttribute : ActionFilterAttribute {
        private static SimpleMembershipInitializer _initializer;
        private static object _initializerLock = new object();
        private static bool _isInitialized;

        public override void OnActionExecuting(ActionExecutingContext filterContext) {
            // Ensure ASP.NET Simple Membership is initialized only once per app start
            LazyInitializer.EnsureInitialized(ref _initializer, ref _isInitialized, ref _initializerLock);
        }

        private class SimpleMembershipInitializer {
            public SimpleMembershipInitializer() {
                Database.SetInitializer<UsersContext>(null);

                try {
                    using (var context = new UsersContext()) {
                        if (!context.Database.Exists()) {
                            // Create the SimpleMembership database without Entity Framework migration schema
                            ((IObjectContextAdapter)context).ObjectContext.CreateDatabase();
                        }
                    }

                    WebSecurity.InitializeDatabaseConnection("bigfont_db", "UserProfile", "UserId", "UserName", autoCreateTables: true);
                }
                catch (Exception ex) {

                    System.Text.StringBuilder builder = new System.Text.StringBuilder();                   
                    foreach(System.Configuration.ConnectionStringSettings cs in System.Configuration.ConfigurationManager.ConnectionStrings)
                    { 
                        builder.AppendLine("Name=" + cs.Name + "; ConnString=" + cs.ConnectionString + "; Provider=" + cs.ProviderName);
                    }

                    throw new InvalidOperationException(builder.ToString(), ex);
                }
            }
        }
    }
}
