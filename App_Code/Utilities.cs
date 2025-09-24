using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

using System.Net;
using System.Net.Mail;
using System.Net.Mime;
using System.Security.Cryptography;
using System.Text;
using System.Data;
using DatabaseLayer;
using System.Configuration;

/// <summary>
/// Summary description for Utilities
/// </summary>
public class Utilities
{
    public Utilities()
    {
        //
        // TODO: Add constructor logic here
        //
    }

    public string successmessage(string t)
    {
        string s;
        s = "<div class='alert alert-success alert-dismissible fade show' role='alert'><strong>" + t + "</strong><button type='button' class='btn-close' data-bs-dismiss='alert' aria-label='Close'></button></div>";
        //s = "<div class='alert alert-success'><button type='button' class='close' data-dismiss='alert' aria-hidden='true'>x</button><strong>Success!</strong> " + t + "</div>";
        return s;
    }

    public string errormessage(string t)
    {
        string s;
        s = "<div class='alert alert-danger alert-dismissible fade show mb-xl-0' role='alert'><strong>" + t + "</strong><button type='button' class='btn-close' data-bs-dismiss='alert' aria-label='Close'></button></div>";
        //s = "<div class='alert alert-danger'><button class='close' data-dismiss='alert' aria-hidden='true'>x</button><strong>Error!</strong><br/>" + t + "</div>";
        return s;
    }

    public string EncryptConnectionString(string value)
    {
        Byte[] b = System.Text.ASCIIEncoding.ASCII.GetBytes(value);
        string encryptedConnectionString = Convert.ToBase64String(b);
        return encryptedConnectionString;
    }


    public string DecryptConnectionString(string value)
    {
        //value = "SVJTSEFEIEFITUFEJlNWSlRTRUZFSUVGSVRVRkU=";
        Byte[] b = Convert.FromBase64String(value);
        string decryptedConnectionString = System.Text.ASCIIEncoding.ASCII.GetString(b);
        return decryptedConnectionString;
    }

    public bool sendemail(string toEmail, string subject, string body, string attachedfile)
    {
        try
        {
            MailMessage message = new System.Net.Mail.MailMessage();
            //string fromEmail = "qec@uol.edu.pk";
            //string fromPW = "qecuol2010";
            string fromEmail = ConfigurationManager.AppSettings["sendingemail"].ToString();
            string fromPW = ConfigurationManager.AppSettings["sendingemailpassword"].ToString();
            message.From = new MailAddress(fromEmail, "uol.edu.pk");
            message.To.Add(toEmail);
            message.Subject = subject.ToString();
            message.Body = body.ToString();
            message.IsBodyHtml = true;

            try
            {
                if (attachedfile.ToString() != "")
                {
                    // attachment process
                    Attachment attach = new Attachment(attachedfile);
                    message.Attachments.Add(attach);
                }
            }
            catch (Exception ex)
            {
            }
            
            message.DeliveryNotificationOptions = DeliveryNotificationOptions.OnFailure;
            SmtpClient smtpClient = new SmtpClient("smtp.gmail.com", 587);
            smtpClient.EnableSsl = true;
            smtpClient.DeliveryMethod = SmtpDeliveryMethod.Network;
            smtpClient.UseDefaultCredentials = false;
            smtpClient.Credentials = new NetworkCredential(fromEmail, fromPW);
            smtpClient.Send(message.From.ToString(), message.To.ToString(), message.Subject, message.Body);
            return true;
        }
        catch (Exception ex)
        {
            string s = ex.Message;
            return false;
        }
    }

    public string GetUniqueKey(int maxSize)
    {
        char[] chars = new char[62];
        chars = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890".ToCharArray();
        byte[] data = new byte[1];
        RNGCryptoServiceProvider crypto = new RNGCryptoServiceProvider();
        crypto.GetNonZeroBytes(data);
        data = new byte[maxSize];
        crypto.GetNonZeroBytes(data);
        StringBuilder result = new StringBuilder(maxSize);
        foreach (byte b in data)
        {
            result.Append(chars[b % (chars.Length)]);
        }
        return result.ToString();
    }
}