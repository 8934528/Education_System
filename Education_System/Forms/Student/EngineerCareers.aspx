<%@ Page Title="" Language="C#" MasterPageFile="~/Forms/Student/Student.Master" AutoEventWireup="true" CodeBehind="EngineerCareers.aspx.cs" Inherits="Education_System.Forms.Student.EngineerCareers" %>
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
   
 <h2>Engineer Careers</h2>

    <div class="option-container">
        <div class="option-card">
            <div class="option-title">Software Engineer</div>
            <div class="option-description">Design and develop software systems.</div>
        </div>
        <div class="option-card">
            <div class="option-title">Civil Engineer</div>
            <div class="option-description">Plan and design infrastructure projects.</div>
        </div>
        <div class="option-card">
            <div class="option-title">Mechanical Engineer</div>
            <div class="option-description">Develop and test mechanical devices and systems.</div>
        </div>
    </div>

</asp:Content>
