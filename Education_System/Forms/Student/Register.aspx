<%@ Page Title="" Language="C#" MasterPageFile="~/Forms/Student/Student.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="Education_System.Forms.Student.Register" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script src="Scripts/jquery-3.5.1.min.js"></script> 
    <link href="../../StyleSheet1.css" rel="stylesheet" />
       <style>
       .row {
           padding-top: 40px;
       }
        .form-control {
    transition: border-color 0.3s ease;
    padding: 10px;
}

    /* Change border color when focused */
    .form-control:focus {
        border-color: #007bff; /* Bootstrap primary color */
        box-shadow: 0 0 0 0.2rem rgba(0, 123, 255, 0.25); /* Add a shadow for better visibility */
    }
   </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
 <div class="row justify-content-center">
        <div class="col-md-6">
            <h2 class="text-center">Register</h2>
            <asp:ValidationSummary runat="server" CssClass="alert alert-danger" />

            <div class="form-group">
                <label for="Username">Username</label>
                <asp:TextBox ID="Username" runat="server" CssClass="form-control" />
                <asp:RequiredFieldValidator ID="rfvUsername" runat="server" ControlToValidate="Username" ErrorMessage="Username is required" CssClass="text-danger" />
            </div>

            <div class="form-group">
                <label for="Email">Email</label>
                <asp:TextBox ID="Email" runat="server" CssClass="form-control" TextMode="Email" />
                <asp:RequiredFieldValidator ID="rfvEmail" runat="server" ControlToValidate="Email" ErrorMessage="Email is required" CssClass="text-danger" />
            </div>

            <div class="form-group">
                <label for="Password">Password</label>
                <asp:TextBox ID="Password" runat="server" CssClass="form-control" TextMode="Password" />
                <asp:RequiredFieldValidator ID="rfvPassword" runat="server" ControlToValidate="Password" ErrorMessage="Password is required" CssClass="text-danger" />
            </div>

            <asp:Button ID="btnRegister" runat="server" Text="Register" CssClass="btn btn-primary btn-block" OnClick="btnRegister_Click" />
            <asp:Label ID="lblMessage" runat="server" CssClass="text-success" />
        </div>
    </div>

</asp:Content>
