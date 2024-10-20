<%@ Page Title="" Language="C#" MasterPageFile="~/Forms/Student/Student.Master" AutoEventWireup="true" CodeBehind="DigitalMarketingCareers.aspx.cs" Inherits="Education_System.Forms.Student.LawyerCareers" %>
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

        .option-container {
            display: flex;
            justify-content: center;
            flex-wrap: wrap;
            margin-top: 30px;
        }

        .option-card {
            background-color: #fff;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            border-radius: 8px;
            width: 300px;
            margin: 20px;
            text-align: center;
            padding: 20px;
            transition: transform 0.3s;
        }

        .option-card:hover {
            transform: translateY(-10px);
        }

        .option-title {
            font-size: 1.5em;
            color: #2c3e50;
            margin-bottom: 15px;
        }

        .option-description {
            font-size: 1em;
            color: #7f8c8d;
            margin-bottom: 20px;
        }

        .lnkOption {
            background-color: #3498db;
            color: white;
            padding: 10px 20px;
            text-decoration: none;
            border-radius: 5px;
            transition: background-color 0.3s;
        }

        .lnkOption:hover {
            background-color: #2980b9;
        }

        @media screen and (max-width: 768px) {
            .option-card {
                width: 100%;
                margin: 10px;
            }
        }
    </style>
    <script type="text/javascript">
        function showComingSoonAlert() {
            swal("Coming Soon!", "The courses for this option are not available yet.");
        }
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2>Digital Marketing Careers</h2>
    <div class="option-container">
        <div class="option-card">
            <div class="option-title">Digital Marketing Manager</div>
            <div class="option-description">Oversees digital marketing strategies and campaigns to enhance brand visibility and engagement.</div>
            <asp:LinkButton ID="lnkDigitalMarketingManager" runat="server" CssClass="lnkOption" OnClick="lnkDigitalMarketingManager_Click">Enroll Now</asp:LinkButton>
        </div>
        <div class="option-card">
            <div class="option-title">SEO Specialist</div>
            <div class="option-description">Optimizes website content to improve search engine rankings and increase organic traffic.</div>
            <asp:LinkButton ID="lnkSEOSpecialist" runat="server" CssClass="lnkOption" OnClientClick="showComingSoonAlert(); return false;">Enroll Now</asp:LinkButton>
        </div>
        <div class="option-card">
            <div class="option-title">Social Media Manager</div>
            <div class="option-description">Manages social media channels and develops content strategies to engage target audiences.</div>
            <asp:LinkButton ID="lnkSocialMediaManager" runat="server" CssClass="lnkOption" OnClientClick="showComingSoonAlert(); return false;">Enroll Now</asp:LinkButton>
        </div>
    </div>
</asp:Content>
