<%@ Page Title="" Language="C#" MasterPageFile="~/Forms/Student/Student.Master" AutoEventWireup="true" CodeBehind="StudentDashboard.aspx.cs" Inherits="Education_System.Forms.Student.StudentDashboard" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../../StyleSheet1.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <div class="container-fluid py-4">
        <div class="row min-vh-80 h-100">
            <div class="col-md-9" style="padding-top: 20px;">
                <!-- Adjusted to col-md-9 for proper alignment -->
                <h3>Welcome, Harmony</h3>

                <!-- Points Card and Badge Card (smaller size) -->
                <div class="row mt-4">
                    <div class="col-md-3 mb-4">
                        <!-- Adjusted width to fit smaller cards -->
                        <!-- Points Card (smaller) -->
                        <div class="card">
                            <div class="card-body p-2">
                                <!-- Reduced padding further -->
                                <h6 class="card-title">Your Points</h6>
                                <i class="fas fa-coins fa-2x text-success mb-2"></i>
                                <p class="card-text">Total Points: <span id="points" runat="server"></span></p>
                                <a href="#" class="btn btn-info mt-3" data-toggle="modal" data-target="#pointsModal">How to Earn Points</a>
                            </div>
                        </div>

                        <!-- Badge Card (smaller) -->
                        <div class="card mt-2">
                            <div class="card-body p-2">
                                <h6 class="card-title">Your Badges</h6>
                                <i class="fas fa-award fa-2x text-warning mb-2"></i>
                                <p class="card-text">Complete three courses to earn your first badge.</p>
                                <a href="#" class="btn btn-primary btn-sm" data-toggle="modal" data-target="#badgesModal">How to Earn Badges</a>
                            </div>
                        </div>
                    </div>

     

<!-- Modal Structure -->
<div class="modal fade" id="pointsModal" tabindex="-1" role="dialog" aria-labelledby="pointsModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="pointsModalLabel">How to Earn Points</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <p>You can earn points through the following activities:</p>
                <ul>
                    <li>Daily Logins: <strong>2 points daily when you login</strong></li>
                    <li>Referring friends: <strong>10 points per referral</strong></li>
                    <li>Completing assignments and quizzes: <strong>20 points</strong></li>
                    <li>Completing a course: <strong>50 points</strong></li>
                </ul>
                <p><strong>What can you get with points?</strong></p>
                <ul>
                    <li>1GB Free Data for 500 points.</li>
                    <li>5GB Free Data for 1,000 points.</li>
                    <li>10GB Free Data for 2,500 points.</li>
                </ul>
            </div>
            <div class="modal-footer">
               
            </div>
        </div>
    </div>
</div>

                   <!-- Badges Modal Structure -->
<div class="modal fade" id="badgesModal" tabindex="-1" role="dialog" aria-labelledby="badgesModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="badgesModalLabel">How to Earn Badges</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <p>You currently have <span id="badgeCount" runat="server"></span> badges.</p>
                <p>You can earn badges by:</p>
                <ul>
                    <li>Completing your first course: <strong>Rookie badge</strong></li>
                    <li>Completing three courses: <strong>Novice badge</strong></li>
                    <li>Completing five courses: <strong>Expert badge</strong></li>
                    <li>Completing over five courses: <strong>Proficient badge</strong></li>
                </ul>
            </div>
            <div class="modal-footer">
                
            </div>
        </div>
    </div>
</div>



                    <!-- Enroll in Courses Section -->
                    <div class="col-md-9 mb-4">
                        <div class="card" style="min-height: 335px;">
                            <div class="card-body">
                                <h5 class="card-title">Enroll in a course based on Career Path</h5>
                                <ul class="list-group" id="coursesList" runat="server">
                                </ul>
                                <asp:Button ID="btnViewAllCourses" runat="server" Text="View Courses" CssClass="btn btn-primary mt-3" OnClick="btnViewAllCourses_Click" />
                            </div>
                        </div>
                    </div>
                </div>

                <!-- Other Dashboard Sections -->
                <div class="row">
                    <!-- Sample Card 1: Course Overview -->
                    <div class="col-md-4 mb-4">
                        <div class="card">
                            <div class="card-body">
                                <h5 class="card-title">Course Overview</h5>
                                <p class="card-text">You are currently not enrolled in any courses.</p>
                                <asp:Button ID="btnViewCourses" runat="server" Text="View Courses" CssClass="btn btn-primary" OnClick="btnViewCourses_Click" />
                            </div>
                        </div>
                    </div>

                    <!-- Sample Card 2: Upcoming Assignments -->
                    <div class="col-md-4 mb-4">
                        <div class="card">
                            <div class="card-body">
                                <h5 class="card-title">Upcoming Assignments</h5>
                                <p class="card-text">You have 3 assignments due next week. Stay on top of your deadlines!</p>
                                <asp:Button ID="btnViewAssignments" runat="server" Text="View Assignments" CssClass="btn btn-primary" OnClick="btnViewAssignments_Click" />
                            </div>
                        </div>
                    </div>

                    <!-- Sample Card 3: Recent Grades -->
                    <div class="col-md-4 mb-4">
                        <div class="card">
                            <div class="card-body">
                                <h5 class="card-title">Recent Grades</h5>
                                <p class="card-text">Review your recent grades to track your progress and identify areas for improvement.</p>
                                <asp:Button ID="btnViewGrades" runat="server" Text="View Grades" CssClass="btn btn-primary" OnClick="btnViewGrades_Click" />
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Right Sidebar: Leaderboard and Notifications -->
            <div class="col-md-3">
                <!-- Changed to col-md-3 for right sidebar -->
                <!-- Leaderboard Card -->
                <div class="card mb-4">
                    <div class="card-body">
                        <h5 class="card-title">Leaderboard</h5>
                        <i class="fas fa-trophy fa-2x text-warning mb-3"></i>
                        <!-- Icon size adjusted -->
                        <p class="card-text">See who's ranked #1 this semester.</p>
                        <asp:Button ID="btnViewLeaderboard" runat="server" Text="View Leaderboard" CssClass="btn btn-primary" OnClick="btnViewLeaderboard_Click" />
                    </div>
                </div>

                <!-- Notification Panel -->
                <div class="card">
                    <div class="card-header">
                        <h5>Notifications</h5>
                    </div>
                    <div class="card-body">
                        <ul class="list-group" id="notificationsList" runat="server">
                        </ul>
                        <asp:Button ID="btnViewAllNotifications" runat="server" Text="View All Notifications" CssClass="btn btn-primary mt-3" OnClick="btnViewAllNotifications_Click" />
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
