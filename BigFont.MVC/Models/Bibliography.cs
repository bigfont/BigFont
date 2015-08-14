using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web;

namespace BigFont.MVC.Models
{
    public class Bibliography : List<BibliographyEntry>
    {
    }

    public class BibliographyEntry
    {
        public List<Author> Authors { get; set; }
        public DateTime DatePublished { get; set; }        
    }

    /// <summary>
    /// See http://blog.apastyle.org/apastyle/2010/11/how-to-cite-something-you-found-on-a-website-in-apa-style.html
    /// </summary>
    public class BibliographyWebEntry : BibliographyEntry
    {
        // no author
        public BibliographyWebEntry(
            DateTime datePublished, string pageTitle, string siteTitle, Uri pageUrl)
        {
            this.Authors = null;
            this.DatePublished = datePublished;
            this.PageTitle = pageTitle;
            this.SiteTitle = siteTitle;
            this.PageUrl = pageUrl;
        }

        // one author
        public BibliographyWebEntry(
            Author author, DateTime datePublished, string pageTitle, string siteTitle, Uri pageUrl)
        {
            this.Authors = new List<Author>() { author };
            this.DatePublished = datePublished;
            this.PageTitle = pageTitle;
            this.SiteTitle = siteTitle;
            this.PageUrl = pageUrl;
        }

        // multiple authors
        public BibliographyWebEntry(
            List<Author> authors, DateTime datePublished, string pageTitle, string siteTitle, Uri pageUrl)
        {
            this.Authors = authors;
            this.DatePublished = datePublished;
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

            if (Authors != null)
            {
                AddAuthorList(builder);
                AddPublicationDate(builder);
                AddWebPageTitle(builder);
            }
            else
            {
                AddWebPageTitle(builder);
                AddPublicationDate(builder);
            }

            AddWebsite(builder);

            return builder.ToString();
        }

        private void AddAuthorList(StringBuilder builder)
        {
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
        }

        private void AddPublicationDate(StringBuilder builder)
        {
            if (DatePublished != null)
            {
                builder.AppendFormat("({0}). ", DatePublished.ToString("yyyy, MMM dd"));
            }
            else
            {
                builder.AppendFormat("(n.d.). ");
            }
        }

        private void AddWebPageTitle(StringBuilder builder)
        {
            builder.AppendFormat("<cite>{0}.</cite> ", PageTitle);
        }

        private void AddWebsite(StringBuilder builder)
        {
            builder.AppendFormat("Retrieved from {0}: ", SiteTitle);
            builder.AppendFormat(
                @"<a href='{0}'>{1}</a>", 
                HttpUtility.UrlEncode(PageUrl.ToString()),
                PageUrl.ToString());
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