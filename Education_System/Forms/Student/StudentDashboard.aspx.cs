using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Education_System.Forms.Student
{
    public partial class StudentDashboard : System.Web.UI.Page
    {
        string connectionString = ConfigurationManager.ConnectionStrings["MembershipConnection"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string userId = Session["UserId"].ToString();
                
                LoadUserData();
                LoadCourses();
                LoadNotifications();
            }
        }

      

        private void LoadUserData()
        {
            // Simulate loading user data from a database or session
            int totalPoints = GetUserPoints(); // This would typically come from a database


            // Set the points display
            points.InnerText = totalPoints.ToString();
            // Update badges if needed (not shown in the markup)
        }

        private void LoadCourses()
        {
            // Simulate fetching enrolled courses
            List<string> enrolledCourses = GetEnrolledCourses();

            // Populate the course list in the front-end
            foreach (string course in enrolledCourses)
            {
                var courseItem = new Literal
                {
                    Text = $"<li class='list-group-item'>{course}</li>"
                };
                coursesList.Controls.Add(courseItem);
            }
        }

        private void LoadNotifications()
        {
            // Simulate fetching notifications
            List<string> notifications = GetNotifications();

            // Populate the notification list in the front-end
            foreach (string notification in notifications)
            {
                var notificationItem = new Literal
                {
                    Text = $"<li class='list-group-item'>{notification}</li>"
                };
                notificationsList.Controls.Add(notificationItem);
            }
        }

        private int GetUserPoints()
        {
            int points = 0; // Default points if no record exists

            return points; // Return the user's points (or 0 if no record)
        }


        


        private List<string> GetEnrolledCourses()
        {
            // Placeholder for actual logic to retrieve enrolled courses from the database
            return new List<string>
            {
                "Software Development",
                 "Project Management",
                "Digital Marketing",
                
            };
        }

        private List<string> GetNotifications()
        {
            // Placeholder for actual logic to retrieve notifications from the database
            return new List<string>
            {
                "Connect with other students",
                
            };
        }

        protected void btnViewBadges_Click(object sender, EventArgs e)
        {
            // Redirect to the badges page
            //Response.Redirect("Badges.aspx");
        }

        protected void btnViewAllCourses_Click(object sender, EventArgs e)
        {
            // Redirect to the all courses page
            Response.Redirect("CareerOptions.aspx");
        }

        protected void btnViewCourses_Click(object sender, EventArgs e)
        {
            // Redirect to the courses overview page
            Response.Redirect("CareerOptions.aspx");
        }

        protected void btnViewAssignments_Click(object sender, EventArgs e)
        {
            // Redirect to the assignments page
           // Response.Redirect("Assignments.aspx");
        }

        protected void btnViewGrades_Click(object sender, EventArgs e)
        {
            // Redirect to the grades page
            //Response.Redirect("Grades.aspx");
        }

        protected void btnViewLeaderboard_Click(object sender, EventArgs e)
        {
            // Redirect to the leaderboard page
            //Response.Redirect("Leaderboard.aspx");
        }

        protected void btnViewAllNotifications_Click(object sender, EventArgs e)
        {
            // Redirect to the notifications page
            Response.Redirect("CommunityForum.aspx");
        }
    }
}