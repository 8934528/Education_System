<%@ Page Title="" Language="C#" MasterPageFile="~/Forms/Student/Student.Master" AutoEventWireup="true" CodeBehind="DownloadDocument.aspx.cs" Inherits="Education_System.Forms.Student.DownloadDocument" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
      <title>Download Document</title>
  <style>
      body {
          font-family: Arial, sans-serif;
          display: flex;
          justify-content: center;
          align-items: center;
          height: 100vh;
          margin: 0;
          background-color: #f0f8ff;
      }
      .message {
          text-align: center;
          padding: 20px;
          background-color: white;
          border-radius: 5px;
          box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
      }
      .error {
          color: #d9534f;
      }
  </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <div class="message">
            <asp:Literal ID="litMessage" runat="server"></asp:Literal>
        </div>
</asp:Content>
