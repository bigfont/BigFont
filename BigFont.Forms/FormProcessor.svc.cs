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
            bool success;
            object userToken;
            toEmail = formData["toEmail"];
            toName = formData["toName"];
            fromEmail = formData["fromEmail"];
            fromName = formData["fromName"];
            subject = formData["subject"];
            body = formData["body"];            
            userToken = new object();
            Emailer mailer = new Emailer();
            mailer.SendEmail(toEmail, toName, fromEmail, fromName, subject, body, userToken, out success);
            if (!success)
            { 
                // do something to indicate an error
            }
        }        
    }
}
