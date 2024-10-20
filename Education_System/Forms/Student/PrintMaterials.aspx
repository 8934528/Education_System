<%@ Page Title="" Language="C#" MasterPageFile="~/Forms/Student/Student.Master" AutoEventWireup="true" CodeBehind="PrintMaterials.aspx.cs" Inherits="Education_System.Forms.Student.PrintMaterials" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" integrity="sha384-k6RqeWeci5ZR/Lv4MR0sA0FfDOMS/eTcv3aWf5gGh5GjlKnZorYjZrliDUK34" crossorigin="anonymous">
<style>
    body {
        font-family: 'Arial', sans-serif;
        background-color: #f7f7f7;
        margin: 0;
        padding: 0;
    }

    .container {
        margin-top: 50px;
    }

    h2, h3 {
        text-align: center;
        margin-top: 30px;
        color: #333;
    }

    .document-container {
        background-color: white;
        border: 1px solid #00008b;
        border-radius: 8px;
        padding: 20px;
        margin: 0 auto 20px; /* Center it */
        width: 80%; /* 80% of the screen */
        transition: transform 0.3s ease-out, box-shadow 0.3s ease-out;
    }

    .document-container:hover {
        transform: translateY(-5px);
        box-shadow: 0 8px 16px rgba(0, 0, 0, 0.2);
    }

    .document-title {
        font-size: 1.2em;
        color: #00008b;
        margin-bottom: 10px;
        text-align: center; /* Center text inside document container */
    }

    .document-link {
        color: #00008b;
        text-decoration: none;
        display: inline-flex;
        align-items: center;
    }

    .document-link:hover {
        color: #ff6347;
    }

    .download-icon {
        margin-left: 8px;
        font-size: 1.2em;
        color: #00008b;
    }

    .download-icon:hover {
        color: #ff6347;
    }
</style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <h2>Documents</h2>

        <asp:Repeater ID="rptDocuments" runat="server">
            <ItemTemplate>
                <div class="document-container">
                    <div class="document-title"><%# Eval("DocumentTitle") %></div>
                    <asp:HyperLink ID="lnkDownload" runat="server" CssClass="document-link"
                        NavigateUrl='<%# "DownloadDocument.aspx?file=" + Server.UrlEncode(ResolveUrl(Eval("FilePath").ToString())) %>'
                        Text='<%# System.IO.Path.GetFileName(Eval("FilePath").ToString()) %>'>
                    </asp:HyperLink>
                </div>
            </ItemTemplate>
        </asp:Repeater>
    </div>
</asp:Content>

