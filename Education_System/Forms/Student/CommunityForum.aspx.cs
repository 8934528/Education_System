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
    public partial class CommunityForum : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadMessages(); // Load all messages
            }
        }

        private void LoadMessages()
        {
            using (SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["MembershipConnection"].ConnectionString))
            {
                SqlCommand cmd = new SqlCommand(@"
                SELECT u.UserName AS Sender, m.MessageContent, m.Timestamp 
                FROM Messages m 
                JOIN aspnet_Users u ON m.SenderID = u.UserId 
                ORDER BY m.Timestamp", conn);

                conn.Open();
                SqlDataReader reader = cmd.ExecuteReader();
                gvMessages.DataSource = reader;
                gvMessages.DataBind();
            }
        }

        protected void btnSend_Click(object sender, EventArgs e)
        {
            Guid userId = (Guid)Session["UserId"]; // Assuming UserId is stored in the session

            // Insert the message into the database
            using (SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["MembershipConnection"].ConnectionString))
            {
                SqlCommand cmd = new SqlCommand("INSERT INTO Messages (SenderID, MessageContent, Timestamp) VALUES (@SenderID, @MessageContent, @Timestamp)", conn);
                cmd.Parameters.AddWithValue("@SenderID", userId);
                cmd.Parameters.AddWithValue("@MessageContent", txtMessage.Text);
                cmd.Parameters.AddWithValue("@Timestamp", DateTime.Now);

                conn.Open();
                cmd.ExecuteNonQuery();
            }

            txtMessage.Text = string.Empty; // Clear the input
            LoadMessages(); // Refresh the message list
        }
    }
}
