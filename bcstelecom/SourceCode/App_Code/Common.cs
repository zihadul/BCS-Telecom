using System;
using System.Collections.Generic;
using System.Text.RegularExpressions;
using System.Web;
using System.Web.Security;
using System.Drawing;
using System.Web.UI.WebControls;
using Image = System.Drawing.Image;

/// <summary>
/// Holds common functions for the site
/// </summary>
public class Common
{
	
    public static string GetUserKey(string UserName)
    {
        try
        {
            if (UserName != "")
                return Membership.GetUser(UserName).ProviderUserKey.ToString();
            else
                return "";
        }
        catch (Exception)
        {
            return "";
        }
    }

    public static System.Drawing.Image GetThumsImage(string path, int width, int height)
    {
        System.Drawing.Image image = System.Drawing.Image.FromFile(path);

        if (image.Width > width && image.Height > height)
            image = image.GetThumbnailImage(width, height, null, new IntPtr());
        else if (image.Width > width && image.Height < height)
            image = image.GetThumbnailImage(width, image.Height, null, new IntPtr());
        else if (image.Width < width && image.Height > height)
            image = image.GetThumbnailImage(image.Width, height, null, new IntPtr());
        else
            image = image.GetThumbnailImage(image.Width, image.Height, null, new IntPtr());

        return image;
    }

    public static string GetImage(string path)
    {
        var serverpath = HttpContext.Current.Server.MapPath(path);
        try
        {
            Image image = Image.FromFile(serverpath);
            return path;
        }
        catch
        {
            return "~/Resources/Images/Common/no-photo.jpg";
        }
    }

    public static void DeleteFile(string path)
    {
        try
        {
            System.IO.File.Delete(path);
        }
        catch (Exception)
        {
        }
    }
    public static string Encoding(string m_enc)
    {
        byte[] toEncodeAsBytes = System.Text.Encoding.UTF8.GetBytes(m_enc);
        string returnValue = System.Convert.ToBase64String(toEncodeAsBytes);
        return returnValue;
    }

    public static string Decoding(string m_enc)
    {
        byte[] encodedDataAsBytes = System.Convert.FromBase64String(m_enc);
        string returnValue = System.Text.Encoding.UTF8.GetString(encodedDataAsBytes);
        return returnValue;
    }


    public static string HtmlStrip(string input)
    {
        input = Regex.Replace(input, "<style>(.|\n)*?</style>", string.Empty);
        input = Regex.Replace(input, @"<xml>(.|\n)*?</xml>", string.Empty); // remove all <xml></xml> tags and anything inbetween.  
        return Regex.Replace(input, @"<(.|\n)*?>", string.Empty); // remove any tags but not there content
    }
    public static string GetMonthName(int Month)
    {
        string name = "";
        int caseSwitch = Month;
        switch (caseSwitch)
        {
            case 1:
                name = "JAN";
                break;
            case 2:
                name = "FEB";
                break;
            case 3:
                name = "MAR";
                break;
            case 4:
                name = "APR";
                break;
            case 5:
                name = "MAY";
                break;
            case 6:
                name = "JUN";
                break;
            case 7:
                name = "JUL";
                break;
            case 8:
                name = "AUG";
                break;
            case 9:
                name = "SEP";
                break;
            case 10:
                name = "OCT";
                break;
            case 11:
                name = "NOV";
                break;
            case 12:
                name = "DEC";
                break;
            default:
                break;
        }

        return name;
    }

    public static void SetMonth(DropDownList ddl)
    {
        for (int i = 1; i <= 12; i++)
            ddl.Items.Add(new ListItem(GetMonthName(i, true), i.ToString()));

        ddl.SelectedValue = DateTime.Now.Month.ToString();

    }

    public static void SetMonth(DropDownList ddl, bool abbrev)
    {
        for (int i = 1; i <= 12; i++)
            ddl.Items.Add(new ListItem(GetMonthName(i, abbrev), i.ToString()));

        ddl.SelectedValue = DateTime.Now.Month.ToString();

    }

    public static void SetYear(DropDownList ddl)
    {
        for (int i = 2010; i <= 2020; i++)
            ddl.Items.Add(i.ToString());

        ddl.SelectedValue = DateTime.Now.Year.ToString();
    }

    public static string GetMonthName(int month, bool abbrev)
    {
        DateTime date = new DateTime(1900, month, 1);
        if (abbrev) return date.ToString("MMM");
        return date.ToString("MMMM");
    }

    public static bool IsDate(string sdate)
    {
        DateTime dt;
        bool isDate = true;
        try
        {
            dt = DateTime.Parse(sdate);
        }
        catch
        {
            isDate = false;
        }
        return isDate;
    }

    public static  string[] GetRoles(string userRole)
    {
        if (userRole == "Support")
            return new string[]{"Support", "Admin", "Member", "Official"};
        else
            return new string[] {"Admin", "Member", "Official"};
    }

}
