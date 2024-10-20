<%@ Page Title="" Language="C#" MasterPageFile="~/Forms/Student/Student.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Education_System.Forms.Student.Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <link href="../../StyleSheet1.css" rel="stylesheet" />

    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@10"></script>

    <style>
        .row {
            padding-top: 80px;
        }

        .form-control {
            transition: border-color 0.3s ease;
            padding: 10px;
        }

            .form-control:focus {
                border-color: #007bff;
                box-shadow: 0 0 0 0.2rem rgba(0, 123, 255, 0.25);
            }

        .btn-primary {
            background-color: #007bff;
            border-color: #007bff;
        }

            .btn-primary:hover {
                background-color: #0056b3;
                border-color: #0056b3;
            }

        .login-container {
            background-color: #f8f9fa;
            border-radius: 10px;
            padding: 20px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
        }
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container">
        <div class="row justify-content-center">
            
            <div class="col-md-6 login-container">
                <h2 class="text-center">Login</h2>
                <asp:ValidationSummary runat="server" CssClass="alert alert-danger" />

                <div class="form-group">
                    <label for="Username">Username</label>
                    <asp:TextBox ID="Username" runat="server" CssClass="form-control" />
                    <asp:RequiredFieldValidator ID="rfvUsername" runat="server" ControlToValidate="Username" ErrorMessage="Username is required" CssClass="text-danger" />
                </div>

                <div class="form-group">
                    <label for="Password">Password</label>
                    <asp:TextBox ID="Password" runat="server" CssClass="form-control" TextMode="Password" />
                    <asp:RequiredFieldValidator ID="rfvPassword" runat="server" ControlToValidate="Password" ErrorMessage="Password is required" CssClass="text-danger" />
                </div>

                <asp:Button ID="btnLogin" runat="server" Text="Login" CssClass="btn btn-primary btn-block" OnClick="btnLogin_Click" />
                <asp:Label ID="lblMessage" runat="server" CssClass="text-danger" Style="display: none;" />
            </div>
        </div>
    </div>

</asp:Content>
