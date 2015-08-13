using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace BigFont.MVC.Models
{
    public class Bibliography : List<BibliographyEntry>
    {
    }

    public class BibliographyEntry
    {
        public List<Author> Authors { get; set; }
        public DateTime Date { get; set; }        
    }

    public class BibliographyWebEntry : BibliographyEntry
    {
        public BibliographyWebEntry(
            List<Author> authors, DateTime date, string pageTitle, string siteTitle, Uri pageUrl)
        {
            this.Authors = authors;
            this.Date = date;
            this.PageTitle = pageTitle;
            this.SiteTitle = siteTitle;
            this.PageUrl = pageUrl;
        }

        public string PageTitle { get; set; }
        public string SiteTitle { get; set; }
        public Uri PageUrl { get; set; }

        public override string ToString()
        {
            var builder = new StringBuilder();

            // how do we do this in Linq?
            foreach (var a in Authors)
            {
                builder.AppendFormat("{0}, ", a.LastName.ToString());
                if (!string.IsNullOrEmpty(a.FirstName))
                {
                    builder.AppendFormat("{0}. ", a.FirstName.First().ToString());
                }
                if (!string.IsNullOrEmpty(a.MiddleName))
                {
                    builder.AppendFormat("{0}. ", a.MiddleName.First().ToString());
                }
            }
            builder.AppendFormat("({0}). ", Date.ToString("yyyy, MMM dd"));
            builder.AppendFormat("<cite>{0}.</cite> ", PageTitle);
            builder.AppendFormat("Retrieved from {0}: ", SiteTitle);
            builder.AppendFormat(@"<a href='{0}'>{0}</a>", PageUrl.ToString());

            return builder.ToString();
        }
    }

    public class Author
    {
        public Author(string firstName, string middleName, string lastName)
        {
            this.FirstName = firstName;
            this.LastName = lastName;
            this.MiddleName = middleName;
        }

        public string FirstName { get; set; }
        public string LastName { get; set; }
        public string MiddleName { get; set; }
    }
}