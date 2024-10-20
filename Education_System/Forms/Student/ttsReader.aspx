<%@ Page Title="" Language="C#" MasterPageFile="~/Forms/Student/Student.Master" AutoEventWireup="true" CodeBehind="ttsReader.aspx.cs" Inherits="Education_System.Forms.Student.ttsReader" Async="true" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Text-to-Speech Reader</title>

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.3/sweetalert.min.css" />

    <style>
        body {
            font-family: 'Arial', sans-serif;
        }
        .container {
            margin-top: 50px;
            padding: 20px;
        }
        .text-area {
            width: 100%;
            margin-bottom: 20px;
        }
        .speak-btn {
            width: 100%;
        }
        .instruction {
            margin-bottom: 20px;
            font-size: 20px; /* Increased font size */
            color: #003366; /* Dark blue color */
        }
    </style>

    <script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.3/sweetalert.min.js"></script>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <h2 class="text-center">Text-to-Speech Reader</h2>

        <div class="instruction">
            <p>Please enter text in the box below and click "Read Aloud" to hear it spoken. Alternatively, you can upload a file in .pdf, .docx, or .txt format.</p>
        </div>

        <div class="form-group">
            <asp:FileUpload ID="FileUpload1" runat="server" CssClass="form-control" />
        </div>

        <div class="form-group">
            <asp:Button ID="btnLoadFile" runat="server" CssClass="btn btn-secondary" Text="Load File" OnClick="btnLoadFile_Click" />
        </div>

        <div class="form-group">
            <asp:TextBox ID="txtSpeechText" runat="server" TextMode="MultiLine" CssClass="form-control text-area" Rows="10"></asp:TextBox>
        </div>

        <div class="row">
            <div class="col-md-12">
                <div class="form-group">
                    <asp:Button ID="btnSpeak" runat="server" CssClass="btn btn-primary speak-btn" Text="Read Aloud" OnClick="btnSpeak_Click" />
                </div>
            </div>
        </div>
    </div>
</asp:Content>
