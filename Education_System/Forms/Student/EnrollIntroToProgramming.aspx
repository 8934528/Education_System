<%@ Page Title="" Language="C#" MasterPageFile="~/Forms/Student/Student.Master" AutoEventWireup="true" CodeBehind="EnrollIntroToProgramming.aspx.cs" Inherits="Education_System.Forms.Student.EnrollIntroToProgramming" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background-color: #f7f7f7;
            margin: 0;
            padding: 20px;
        }

        h2 {
            text-align: center;
            margin-bottom: 40px;
            color: #333;
        }

        .folder-container {
            display: flex;
            flex-direction: column; 
            align-items: center; 
            gap: 20px; 
        }

        .folder {
            background-color: #ffffff; 
            padding: 20px;
            border-radius: 10px; 
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1); 
            text-align: center;
            transition: transform 0.3s, box-shadow 0.3s; 
            width: 100%; 
            max-width: 600px; 
            cursor: pointer; 
        }

            .folder:hover {
                transform: translateY(-5px); 
                box-shadow: 0 6px 15px rgba(0, 0, 0, 0.2); 
            }

            .folder h3 {
                font-size: 22px; 
                color: #2c3e50; 
                margin: 0; 
            }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2>Course Resources</h2>

    <div class="folder-container">
        <a class="folder" href="DigitalResources.aspx">
            <h3>Online Resources</h3>
        </a>

        <a class="folder" href="PrintMaterials.aspx">
            <h3>Downloadable Materials</h3>
        </a>

        <a class="folder" href="OnlineVideos.aspx">
            <h3>Online Videos</h3>
        </a>

        <a class="folder" href="Vids.aspx">
            <h3>Downloadable Videos</h3>
        </a>

        <a class="folder" href="Quizes.aspx">
            <h3>View Assessments</h3>
        </a>
    </div>
</asp:Content>
