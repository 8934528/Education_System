using System;
using System.Collections.Generic;
using System.Linq;
using System.Resources;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Education_System.Forms.Student
{
    public partial class CareerOptions : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        protected void lnkDeveloper_Click(object sender, EventArgs e)
        {
            Response.Redirect("DeveloperCareers.aspx");
        }

        protected void lnkDoctor_Click(object sender, EventArgs e)
        {
            Response.Redirect("ProjectManagentCareers.aspx");
        }

        protected void lnkLawyer_Click(object sender, EventArgs e)
        {
            Response.Redirect("DigitalMarketingCareers.aspx");
        }

        protected void lnkEngineer_Click(object sender, EventArgs e)
        {
            Response.Redirect("EngineerCareers.aspx");
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {

        }
    }
}