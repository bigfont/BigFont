using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace BigFont.MVC.ViewModels
{
    public class PresentationViewModel
    {
        public PresentationViewModel(string month, string year, string title, string intro, string presenter, string powerPointLink, string posterName)
        {
            this.Month = month;
            this.Year = year;
            this.Intro = intro;
            this.Title = title;
            this.Presenter = presenter;
            this.PowerPointLink = powerPointLink;
            this.PosterHref = string.Format("Permalinks/{0}.pdf", posterName);
            this.PosterSrc = string.Format("Images/{0}.png", posterName);
        }
        public string Month { get; private set; }
        public string Year { get; private set; }
        public string Title { get; private set; }
        public string Intro { get; private set; }
        public string Presenter { get; private set; }
        public string PowerPointLink { get; private set; }
        public string PosterHref { get; private set; }
        public string PosterSrc { get; private set; }
    }
}