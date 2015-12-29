using System;
using System.Configuration;
using System.Drawing;
using System.Web.UI;

public partial class UserControls_Feedback : UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
    }


    protected void Send_Click(object sender, EventArgs e)
    {
        Captcha1.ValidateCaptcha(tbxCaptcha.Text);

        if (!Captcha1.UserValidated)
        {
            lblMessage.Text = "The code you typed does not match the code in the image.";
            lblMessage.ForeColor = Color.Red;
            tbxCaptcha.Text = "";
            return;
        }

        string Message = "You have got an email from: <br />" + txtEmail.Text + "<hr > " + "<br />" + txtMessage.Text;
        string emailto = ConfigurationManager.AppSettings["MailReceiver"];
        bool Sent = new SendEmail().SendSimpleMail(txtEmail.Text, emailto, txtSubject.Text, Message);
        if (Sent)
        {
            lblMessage.Text = "Submitted successfully.";
            lblMessage.ForeColor = Color.Green;
        }
        else
        {
            lblMessage.Text = "Message could not submitted try again later..";
        }
    }

    protected void btnReset_Click(object sender, EventArgs e)
    {
        Clear();
    }

    private void Clear()
    {
        txtEmail.Text = "";
        txtMessage.Text = "";
        txtName.Text = "";
        txtSubject.Text = "";
        tbxCaptcha.Text = "";
    }
}