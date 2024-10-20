<%@ Page Title="" Language="C#" MasterPageFile="~/Forms/Student/Student.Master" AutoEventWireup="true" CodeBehind="OnlineVideos.aspx.cs" Inherits="Education_System.Forms.Student.OnlineVideos" %>

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
            flex-direction: column; /* Stack folders vertically */
            align-items: center; /* Center folders horizontally */
            gap: 20px; /* Space between folders */
        }

        .folder {
            background-color: #ffffff; /* White background for folders */
            padding: 20px;
            border-radius: 10px; /* Rounded corners */
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1); /* Subtle shadow */
            text-align: center;
            transition: transform 0.3s, box-shadow 0.3s; /* Smooth hover effect */
            width: 100%; /* Full width */
            max-width: 600px; /* Maximum width for better readability */
            cursor: pointer; /* Change cursor to pointer */
        }

        .folder:hover {
            transform: translateY(-5px); /* Slightly lift on hover */
            box-shadow: 0 6px 15px rgba(0, 0, 0, 0.2); /* Darker shadow on hover */
        }

        .folder h3 {
            font-size: 22px; /* Increased font size for better visibility */
            color: #2c3e50; /* Darker text color */
            margin: 0; /* Remove default margin */
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2>YouTube Videos: Introduction to Programming</h2>

    <div class="folder-container">
        <a class="folder" href="https://www.youtube.com/watch?v=fWjsdhR3z3c" target="_blank">
            <h3>Video 1: Getting Started with Programming</h3>
        </a>

        <a class="folder" href="https://www.youtube.com/watch?v=example2" target="_blank">
            <h3>Video 2: Understanding Variables and Data Types</h3>
        </a>
    </div>
</asp:Content>
