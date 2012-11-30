using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.Text;
using System.Collections.Specialized;

namespace BigFont
{
    // NOTE: You can use the "Rename" command on the "Refactor" menu to change the class name "FormProcessor" in code, svc and config file together.
    public class FormProcessor : IFormProcessor
    {        
        public void ProcessForm(NameValueCollection formData)
        {
            string toEmail, toName, fromEmail, fromName, body, subject;
            object userToken;
            toEmail = "shaunluttin@gmail.com";
            toName = "Shaun Luttin";
            fromEmail = "shaun@bigfont.ca";
            fromName = "The Big Font";
            body = "This is an email body.";
            subject = "This is an email subject";
            userToken = new object();
            Emailer mailer = new Emailer();
            mailer.SendEmail(toEmail, toName, fromEmail, fromName, subject, body, userToken);
        }
    }
}
