using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace BigFont.MVC.ViewModels
{
    public class PresentationViewModel    
    {
        public PresentationViewModel(string month, string year, string title, string intro, string presenter, string resourceLink, string resourceName, string posterName)
        {
            this.Month = month;
            this.Year = year;
            this.Intro = intro;
            this.Title = title;
            this.Presenter = presenter;
            this.ResourceLink = resourceLink;
            this.ResourceName = resourceName;
            this.PosterSrc = string.Format("/Images/{0}.png", posterName);
        }
        public string Month { get; private set; }
        public string Year { get; private set; }
        public string Title { get; private set; }
        public string Intro { get; private set; }
        public string Presenter { get; private set; }
        public string ResourceLink { get; private set; }        
        public string ResourceName { get; set; }
        public string PosterSrc { get; private set; }
    }
}