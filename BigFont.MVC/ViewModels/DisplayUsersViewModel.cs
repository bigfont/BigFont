using System.Collections.Generic;
using DotNetOpenAuth.OAuth.Messages;

namespace BigFont.MVC.ViewModels
{
    public class DisplayUsersViewModel
    {
        public List<Role> Roles { get; set; }

        public DisplayUsersViewModel()
        {
            Roles = new List<Role>();
        }

        public class Role
        {
            public Role()
            {
                Users = new List<string>();
            }
            public string Name { get; set; }
            public List<string> Users { get; set; }
        }
    }
}