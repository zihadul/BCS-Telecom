using System;
using System.Collections.Generic;
using System.Text;
using System.Data;
using System.Net;
using System.Net.Mail;
using System.Configuration;
using System.Collections;
using System.Web.UI;
using System.Web.Security;

/// <summary>
/// Summary description for MailSend
/// </summary>
public class Email
{
    public Email()
    {
    }

    public static void SendCustomizeProductNotification(string Name, string Email, string URL, string Requst)
    {
        string emailBody = @"<b>Below is the request:</b>
                            <p>" + Requst + "</p><p><a href='" + URL + "'>Respond to the request</a></p>";

        MailMessage objMessage;
        SmtpClient objClient;
        try
        {
            MailAddress From = new MailAddress(ConfigurationManager.AppSettings.Get("MailSender"), Email);
            MailAddress EmailTo = new MailAddress(ConfigurationManager.AppSettings.Get("MailReceiver"));
            objMessage = new MailMessage(From, EmailTo);
            objMessage.IsBodyHtml = true;
            objMessage.Subject = Name + " has requested for a customezed product";
            objMessage.Body = emailBody;
            objMessage.Priority = MailPriority.Normal;
            objClient = new SmtpClient();
            objClient.Send(objMessage);

        }
        catch (Exception)
        {
            throw;

        }
    }

    public static void Send(string Email, string Subject , string Body)
    {
        MailMessage objMessage;
        SmtpClient objClient;
        try
        {
            MailAddress From = new MailAddress(ConfigurationManager.AppSettings.Get("MailSender"));
            MailAddress EmailTo = new MailAddress(Email);
            objMessage = new MailMessage(From, EmailTo);
            objMessage.IsBodyHtml = true;
            objMessage.Subject = Subject;
            objMessage.Body = Body;
            objMessage.Priority = MailPriority.Normal;
            objClient = new SmtpClient();
            objClient.Send(objMessage);

        }
        catch (Exception)
        {
            throw;

        }
    }

}
