using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Education_System.Forms.Student
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            if (Membership.ValidateUser(Username.Text, Password.Text))
            {
                var user = Membership.GetUser(Username.Text);
                if (user != null)
                {
                    Session["UserId"] = user.ProviderUserKey;

                    FormsAuthentication.SetAuthCookie(Username.Text, true);
                    Response.Redirect("StudentDashboard.aspx");
                }
            }
            else
            {
                ScriptManager.RegisterStartupScript(this, GetType(), "alert", "Swal.fire({ title: 'Error!', text: 'Invalid username or password.', icon: 'error', confirmButtonText: 'OK' });", true);
            }
        }
    }
}