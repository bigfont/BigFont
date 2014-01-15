using System.Collections.Generic;
using DotNetOpenAuth.OAuth.Messages;

namespace BigFont.MVC.ViewModels
{
    public class DisplayUsersViewModel
    {
        public Role[] Roles { get; set; }

        public DisplayUsersViewModel()
        {
            Roles = new Role[] {};
        }

        public class Role
        {
            public Role()
            {
                Users = new string[] {};
            }
            public string Name { get; set; }
            public string[] Users { get; set; }
        }
    }
}