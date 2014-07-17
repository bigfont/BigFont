namespace BigFont.MVC.Models
{
    public class Project
    {
        public Project()
        {            
            this.DisplayShowHideButton = true;
            this.DisplayVisitButton = true;
        }

        public string Thumbnail { get; set; }
        public string PublicName { get; set; }
        public string PublicDescription { get; set; }
        public string WebsiteUrl { get; set; }
        public string Image { get; set; }
        public bool DisplayShowHideButton { get; set; } 
        public bool DisplayVisitButton { get; set; }
    }
}