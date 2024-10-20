using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Education_System.Forms.Student
{
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            if (Membership.GetUser(Username.Text) == null)
            {
                // Create the user
                MembershipCreateStatus status;
                Membership.CreateUser(Username.Text, Password.Text, Email.Text, null, null, true, out status);

                if (status == MembershipCreateStatus.Success)
                {
                    lblMessage.Text = "Registration successful!";
                    FormsAuthentication.SetAuthCookie(Username.Text, true);
                    Response.Redirect("Login.aspx");
                }
                else
                {
                    lblMessage.Text = "Registration failed: " + status.ToString();
                }
            }
            else
            {
                lblMessage.Text = "Username already exists!";
            }
        }
    }
}