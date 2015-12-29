using System;
using System.Web.UI;
using System.Globalization;

public class BasePage : Page
{
    protected override void InitializeCulture()
    {
        base.InitializeCulture();
    }

    protected override void OnPreLoad(EventArgs e)
    {
        base.OnPreLoad(e);
    }

    protected override void OnLoad(EventArgs e)
    {
        base.OnLoad(e);
    }
    
    protected override void OnPreRender(EventArgs e)
    {
       base.OnPreRender(e);
       LanguageManager.ApplyNewLanguageAndRefreshPage(base.Page);
    }

    public void ApplyNewLanguage(CultureInfo culture)
    {
        LanguageManager.CurrentCulture = culture;
        Session.Add(LanguageManager.ToString(), LanguageManager.CurrentCulture);
    }
}