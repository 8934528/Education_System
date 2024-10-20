using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Education_System.Forms.Student
{
    public partial class DigitalMarkerCourses : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSuscribe_Click(object sender, EventArgs e)
        {
            // Retrieve values from the form
            string cardName = txtCardName.Text;
            string cardNumber = txtCardNumber.Text;
            string expiryDate = txtExpiryDate.Text;
            string cvv = txtCVV.Text;
            string plan = txtPlan.Text;

            int price = int.Parse(plan);

            string connectionString = ConfigurationManager.ConnectionStrings["MembershipConnection"].ConnectionString;

            using (SqlConnection conn = new SqlConnection(connectionString))
            {
                string query = "INSERT INTO Payment (Price, CardName, CardNumber, Expiary, CVV) VALUES (@Price, @CardName, @CardNumber, @Expiary, @CVV)";

                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    cmd.Parameters.AddWithValue("@Price", price);
                    cmd.Parameters.AddWithValue("@CardName", cardName);
                    cmd.Parameters.AddWithValue("@CardNumber", cardNumber);
                    cmd.Parameters.AddWithValue("@Expiary", expiryDate);
                    cmd.Parameters.AddWithValue("@CVV", cvv);

                    conn.Open();
                    cmd.ExecuteNonQuery();
                }
            }

            ScriptManager.RegisterStartupScript(this, GetType(), "alert", "alert('Subscription successful!'); window.location = 'EnrollWebDevelopmentBasics.aspx';", true);
        }
    }
}