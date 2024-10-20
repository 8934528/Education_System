<%@ Page Title="" Language="C#" MasterPageFile="~/Forms/Student/Student.Master" AutoEventWireup="true" CodeBehind="LawyerCareers.aspx.cs" Inherits="Education_System.Forms.Student.LawyerCareers" %>

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
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2>Developer Careers</h2>

    <div class="option-container">
        <div class="option-card">
            <div class="option-title">Software Developer</div>
            <div class="option-description">Design and develop software solutions.</div>
            <a href="SoftwareDeveloperCourses.aspx" class="lnkOption">View Courses</a>
        </div>

        <div class="option-card">
            <div class="option-title">Web Developer</div>
            <div class="option-description">Create and maintain websites.</div>
            <a href="javascript:void(0);" class="lnkOption" onclick="showComingSoonAlert()">View Courses</a>
        </div>

        <div class="option-card">
            <div class="option-title">Mobile App Developer</div>
            <div class="option-description">Build mobile applications for smartphones.</div>
            <a href="javascript:void(0);" class="lnkOption" onclick="showComingSoonAlert()">View Courses</a>
        </div>
    </div>

       <script type="text/javascript">
           function showComingSoonAlert() {
               swal("Coming Soon!", "The courses for this option are not available yet.");
           }
</script>
</asp:Content>

