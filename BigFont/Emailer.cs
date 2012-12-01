using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Net.Mail;
using System.Web.Configuration;
using System.ComponentModel;
using System.Text;
using System.Net;
using System.Text.RegularExpressions;

namespace BigFont
{
    public class Emailer
    {
        // from the HTML5 Spec for web developers
        private const string REGEX_EMAIL = @"^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+)*$";

        /// <summary>
        /// Do something after we have sent the email.
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e">The e.UserToken varies depending on the reason for the email.</param>
        private void EmailerSendCompleteEventHandler(object sender, AsyncCompletedEventArgs e)
        {
            int i = 0;
            ++i;
        }
        /// <summary>
        /// Send an email to the administrators. 
        /// </summary>
        /// <param name="romID">The device name.</param>        
        /// <param name="temperatureCelsius">The device temperature in celsius.</param>
        public void SendEmail(string toEmail, string toName, string fromEmail, string fromName, string subject, string body, object userToken, out bool success)
        {
            SmtpClient client;
            MailMessage emailMessage;
            string smpt_host;
            string smpt_username;
            string smtp_password;            

            success = false;
            if (Regex.IsMatch(toEmail, REGEX_EMAIL) && Regex.IsMatch(fromEmail, REGEX_EMAIL))
            {
                // create message
                emailMessage = new MailMessage();
                emailMessage.To.Add(new MailAddress(toEmail, toName));
                emailMessage.From = new MailAddress(fromEmail, fromName);
                emailMessage.Subject = subject;
                emailMessage.Body = body;
                emailMessage.IsBodyHtml = true;

                // send message            
                smpt_host = WebConfigurationManager.AppSettings["email_smtp_host"];
                smpt_username = WebConfigurationManager.AppSettings["email_smpt_username"];
                smtp_password = WebConfigurationManager.AppSettings["email_smpt_password"];
                client = new SmtpClient(smpt_host);

                client.Credentials = new NetworkCredential(smpt_username, smtp_password);
                client.SendCompleted += new SendCompletedEventHandler(EmailerSendCompleteEventHandler);
                client.SendAsync(emailMessage, userToken);

                success = true;
            }            
        }        
    }
}