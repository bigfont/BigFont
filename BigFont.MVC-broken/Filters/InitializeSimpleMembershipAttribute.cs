using System;
using System.Configuration;
using System.Data.Entity;
using System.Data.Entity.Infrastructure;
using System.Text;
using System.Threading;
using System.Web.Mvc;
using BigFont.MVC.Models;
using WebMatrix.WebData;

namespace BigFont.MVC.Filters
{
    [AttributeUsage(AttributeTargets.Class | AttributeTargets.Method, AllowMultiple = false, Inherited = true)]
    public sealed class InitializeSimpleMembershipAttribute : ActionFilterAttribute
    {
        private static SimpleMembershipInitializer _initializer;
        private static object _initializerLock = new object();
        private static bool _isInitialized;

        public override void OnActionExecuting(ActionExecutingContext filterContext)
        {
            // Ensure ASP.NET Simple Membership is initialized only once per app start
            LazyInitializer.EnsureInitialized(ref _initializer, ref _isInitialized, ref _initializerLock);
        }

        private class SimpleMembershipInitializer
        {
            public SimpleMembershipInitializer()
            {
                Database.SetInitializer<UsersContext>(null);

                try
                {
                    using (var context = new UsersContext())
                    {
                        if (!context.Database.Exists())
                        {
                            // Create the SimpleMembership database without Entity Framework migration schema
                            ((IObjectContextAdapter) context).ObjectContext.CreateDatabase();
                        }
                    }

                    WebSecurity.InitializeDatabaseConnection("bigfont_db", "UserProfile", "UserId", "UserName", true);
                }
                catch (Exception ex)
                {
                    var builder = new StringBuilder();
                    builder.AppendLine("Hello from BigFont debugging.");
                    foreach (ConnectionStringSettings cs in ConfigurationManager.ConnectionStrings)
                    {
                        // do NOT add the ConnectionString to the message b/c it will expose the password
                        builder.AppendLine("Name=" + cs.Name + "; Provider=" + cs.ProviderName);
                    }

                    builder.AppendLine("Current=" + new UsersContext().Database.Connection.ConnectionString);

                    throw new InvalidOperationException(builder.ToString(), ex);
                }
            }
        }
    }
}