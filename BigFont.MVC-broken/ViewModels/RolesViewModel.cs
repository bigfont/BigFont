using System.Collections.Generic;

namespace BigFont.MVC.ViewModels
{
    public class DisplayRolesViewModel
    {
        public List<Role> Roles { get; set; }        

        public DisplayRolesViewModel()
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