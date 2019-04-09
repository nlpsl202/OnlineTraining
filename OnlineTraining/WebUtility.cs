using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;

namespace OnlineTraining
{
    public class WebUtility
    {
        public static void ShowTextInJavaScript(string sText, Page page)
        {
            ScriptManager.RegisterStartupScript(page, page.GetType(), "__ShowMessage", "<script type=\"text/javascript\">alert(\"" + sText + "\");</script>", false);
        }
    }
}