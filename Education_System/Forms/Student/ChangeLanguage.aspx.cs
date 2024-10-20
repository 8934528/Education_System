using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Education_System.Forms.Student
{
    public partial class ChangeLanguage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string lang = Request.QueryString["lang"];
            if (!string.IsNullOrEmpty(lang))
            {
                // Store the selected language in the Session
                Session["SelectedLanguage"] = lang;
            }
        }
    }
}