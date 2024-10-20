<%@ Page Title="Project Manager Courses" Language="C#" MasterPageFile="~/Forms/Student/Student.Master" AutoEventWireup="true" CodeBehind="ProjectManagerCourses.aspx.cs" Inherits="Education_System.Forms.Student.ProjectManagerCourses" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background-color: #f7f7f7;
            margin: 0;
            padding: 0;
        }

        h2 {
            text-align: center;
            margin-top: 50px;
            color: #333;
        }

        .course-container {
            display: flex;
            flex-wrap: wrap;
            gap: 20px;
            justify-content: center;
            margin: 20px 0;
        }

        .course-card {
            border: 1px solid #ccc;
            border-radius: 5px;
            padding: 15px;
            width: 300px;
            box-shadow: 2px 2px 10px rgba(0, 0, 0, 0.1);
            transition: transform 0.3s;
            text-align: center;
        }

            .course-card:hover {
                transform: scale(1.05);
            }

        .course-title {
            font-size: 18px;
            font-weight: bold;
            color: #2c3e50;
        }

        .course-description {
            font-size: 14px;
            color: #34495e;
            margin: 10px 0;
        }

        .course-link {
            display: inline-block;
            margin-top: 10px;
            text-decoration: none;
            color: #3498db;
            font-weight: bold;
        }

            .course-link:hover {
                text-decoration: underline;
            }


        .modal {
            display: none;
            position: fixed;
            z-index: 1;
            left: 0;
            top: 0;
            width: 100%;
            height: 100%;
            overflow: auto;
            background-color: rgba(0, 0, 0, 0.5);
        }

        .modal-content {
            background-color: #fff;
            margin: 15% auto;
            padding: 20px;
            border: 1px solid #888;
            width: 80%;
            max-width: 600px;
            border-radius: 5px;
        }

        .close {
            color: #aaa;
            float: right;
            font-size: 28px;
            font-weight: bold;
        }

            .close:hover,
            .close:focus {
                color: black;
                text-decoration: none;
                cursor: pointer;
            }

        .subscription-plans {
            display: flex;
            justify-content: center;
            margin: 20px 0;
        }

        .plan {
            border-radius: 5px;
            padding: 20px;
            margin: 0 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
            width: 250px;
            text-align: center;
        }

        .plan-btn {
            background-color: #0056b3;
            color: white;
            padding: 10px 15px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }

            .plan-btn:hover {
                background-color: #00d6de;
            }

        .banking-details {
            margin-top: 20px;
        }

        form input {
            width: calc(100% - 20px);
            padding: 10px;
            margin-bottom: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }

        .subscribe-btn {
            background-color: #007bff;
            color: white;
            padding: 10px 15px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2>Courses to Become a Legal Project Manager</h2>

    <div class="course-container">
        <div class="course-card">
            <div class="course-title">Project Management Fundamentals</div>
            <div class="course-description">An introduction to project management principles, methodologies, and best practices.</div>
            <a href="#" class="course-link" onclick="openSubscriptionModal()">Enroll Now</a>
        </div>

        <div class="course-card">
            <div class="course-title">Risk Management in Projects</div>
            <div class="course-description">Learn to identify, assess, and manage risks in project environments.</div>
            <a href="#" class="course-link" onclick="openSubscriptionModal()">Enroll Now</a>
        </div>

        <div class="course-card">
            <div class="course-title">Agile Project Management</div>
            <div class="course-description">Understanding Agile methodologies and how to apply them to manage projects effectively.</div>
            <a href="#" class="course-link" onclick="openSubscriptionModal()">Enroll Now</a>
        </div>

        <div class="course-card">
            <div class="course-title">Project Scheduling Techniques</div>
            <div class="course-description">Techniques for developing and maintaining project schedules to ensure timely completion.</div>
            <a href="#" class="course-link" onclick="openSubscriptionModal()">Enroll Now</a>
        </div>

        <div class="course-card">
            <div class="course-title">Leadership and Team Management</div>
            <div class="course-description">Skills and strategies for effectively leading and managing project teams.</div>
            <a href="#" class="course-link" onclick="openSubscriptionModal()">Enroll Now</a>
        </div>

        <div class="course-card">
            <div class="course-title">Budgeting and Financial Management for Projects</div>
            <div class="course-description">Essential financial principles and budgeting techniques for successful project management.</div>
            <a href="#" class="course-link" onclick="openSubscriptionModal()">Enroll Now</a>
        </div>
    </div>

    <!-- Subscription Modal -->
    <div id="subscriptionModal" class="modal">
        <div class="modal-content">
            <span class="close" onclick="closeSubscriptionModal()">&times;</span>
            <h2>Subscribe to Access Full Courses</h2>
            <p>To access the full course content, please subscribe to one of our plans below:</p>

            <div class="subscription-plans">
                <div class="plan" style="background-color: #d8af00; color: #000ddc;">
                    <h3>! STANDARD !</h3>
                    <p>R60/month</p>
                    <p>Full Course</p>
                    <p>Certificate</p>
                    <asp:Button ID="btnChooseBasic" runat="server" Text="Choose" CssClass="plan-btn" OnClientClick="showBankingDetails('BASIC'); return false;" />
                </div>

                <div class="plan" style="background-color: #d8af00; color: #000ddc;">
                    <h3>! PREMIUM !</h3>
                    <p>R100/month</p>
                    <p>Full Course</p>
                    <p>Certificate</p>
                    <p>Download Content</p>
                    <asp:Button ID="btnChoosePremium" runat="server" Text="Choose" CssClass="plan-btn" OnClientClick="showBankingDetails('PREMIUM'); return false;" />
                </div>
            </div>

            <div id="bankingDetails" class="banking-details" style="display: none;">
                <h3>Banking Details</h3>
                <form id="bankingForm">
                    <asp:TextBox ID="txtPlan" runat="server" ReadOnly="true"></asp:TextBox>
                    <label for="cardName">Name on Card:</label>
                    <asp:TextBox ID="txtCardName" runat="server" required="true"></asp:TextBox>

                    <label for="cardNumber">Card Number:</label>
                    <asp:TextBox ID="txtCardNumber" runat="server" required="true"></asp:TextBox>

                    <label for="expiryDate">Expiry Date:</label>
                    <asp:TextBox ID="txtExpiryDate" runat="server" placeholder="MM/YY" required="true"></asp:TextBox>

                    <label for="cvv">CVV:</label>
                    <asp:TextBox ID="txtCVV" runat="server" required="true"></asp:TextBox>

                    <asp:Button ID="btnSuscribe" runat="server" Text="Book Now" CssClass="subscribe-btn" OnClientClick="submitForm(); return false;" />
                </form>
            </div>
        </div>
    </div>

    <script>
        var modal = document.getElementById("subscriptionModal");

        function openSubscriptionModal() {
            modal.style.display = "block";
        }

        function closeSubscriptionModal() {
            modal.style.display = "none";
        }

        function showBankingDetails(plan) {
            var price = plan === 'BASIC' ? '60' : '100';
            document.getElementById('<%= txtPlan.ClientID %>').value = price;
            document.getElementById("bankingDetails").style.display = "block";
        }

        window.onclick = function (event) {
            if (event.target == modal) {
                closeSubscriptionModal();
            }
        }

        function submitForm() {
            alert("Subscription successful");
            window.location.href = "EnrollProjectManagement.aspx";
        }
    </script>

</asp:Content>
