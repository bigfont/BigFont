using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(BigFont.MVC.Startup))]
namespace BigFont.MVC
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}
