using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Runtime.Remoting.Messaging;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Education_System.Forms.Student
{
    public partial class DownloadDocument : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string file = Request.QueryString["file"];
            if (!string.IsNullOrEmpty(file))
            {
                string filePath = Server.MapPath(file);
                if (File.Exists(filePath))
                {
                    Response.Clear();
                    Response.ContentType = "application/octet-stream";
                    Response.AppendHeader("Content-Disposition", "attachment; filename=" + Path.GetFileName(filePath));
                    Response.TransmitFile(filePath);
                    Response.End();
                }
                else
                {
                    litMessage.Text = "<p class='error'>File not found.</p>";
                }
            }
            else
            {
                litMessage.Text = "<p class='error'>Invalid file request.</p>";
            }
        }
    }
}