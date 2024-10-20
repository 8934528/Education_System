<%@ Page Title="" Language="C#" MasterPageFile="~/Forms/Student/Student.Master" AutoEventWireup="true" CodeBehind="CommunityForum.aspx.cs" Inherits="Education_System.Forms.Student.CommunityForum" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../../StyleSheet1.css" rel="stylesheet" />
    <style>
    /* Reset default margins and paddings */
    * {
        margin: 0;
        padding: 0;
        box-sizing: border-box; /* Ensure padding doesn't affect total width */
    }

    /* Main body styling */
    body {
        font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif; /* Clean font */
        background-color: #f9f9f9; /* Light background for contrast */
        color: #333; /* Default text color */
        padding: 20px; /* Add padding to body */
    }

    .container {
        padding-top: 50px;
    }

    /* Main container styling */
    .form {
        background-color: #ffffff; /* White background for the form */
        border-radius: 10px; /* Slightly more rounded corners */
        box-shadow: 0 2px 15px rgba(0, 0, 0, 0.1); /* More pronounced shadow */
        padding: 30px; /* More padding for spaciousness */
        max-width: 800px; /* Limit the width */
        margin: 0 auto; /* Center the form horizontally */
    }

    /* Heading styling */
    h2 {
        color: dodgerblue; /* Accent color for the heading */
        font-size: 24px; /* Larger font size */
        margin-bottom: 20px; /* Space below the heading */
        text-align: center; /* Center align the heading */
    }

    /* GridView styling */
    #gvMessages {
        width: 100%; /* Full width */
        margin-bottom: 20px; /* Space below the table */
    }

    /* Bubble message styling */
    .message-container {
        display: flex;
        flex-direction: column; /* Stack items vertically */
        padding: 10px; /* Padding for the message */
        margin-bottom: 15px; /* Space below each message */
        border-radius: 20px; /* Rounded corners for bubbles */
        background-color: #dcf8c6; /* Light green for the sender's message */
        align-self: flex-start; /* Align to the left */
        max-width: 75%; /* Limit the width of bubbles */
        box-shadow: 0 1px 5px rgba(0, 0, 0, 0.1); /* Subtle shadow */
    }

    /* Username styling */
    .username {
        margin-bottom: 5px; /* Space below username */
        font-weight: bold; /* Make username bold */
    }

    .message-content {
        margin-bottom: 5px; /* Space below message content */
    }

    /* Form control styling */
    .form-control {
        transition: border-color 0.3s ease;
        padding: 10px;
        margin-bottom: 15px; /* Add space between the message input and button */
    }

    /* Change border color when focused */
    .form-control:focus {
        border-color: #007bff; /* Bootstrap primary color */
        box-shadow: 0 0 0 0.2rem rgba(0, 123, 255, 0.25); /* Add a shadow for better visibility */
    }

    /* Responsive design */
    @media (max-width: 600px) {
        #txtMessage {
            font-size: 14px; /* Smaller font on small screens */
        }
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="container">
     <div class="form">
         <h2>Welcome to the Community</h2>
         <div class="form-group">
             <asp:GridView ID="gvMessages" CssClass="form-control" runat="server" AutoGenerateColumns="False">
                 <Columns>
                     <asp:TemplateField>
                         <ItemTemplate>
                             <div class="message-container">
                                 <div class="username"><strong><%# Eval("Sender") %></strong></div>
                                 <div class="message-content"><%# Eval("MessageContent") %></div>
                                 <div class="timestamp"><%# Eval("Timestamp") %></div>
                             </div>
                         </ItemTemplate>
                     </asp:TemplateField>
                 </Columns>
             </asp:GridView>
         </div>
         <div class="message">
             <div class="form-group">
                 <asp:TextBox ID="txtMessage" runat="server" TextMode="MultiLine" CssClass="form-control" Rows="3" Placeholder="Type your message here..."></asp:TextBox>
             </div>
             <asp:Button ID="btnSend" runat="server" CssClass="btn btn-primary mt-3" Text="Send" OnClick="btnSend_Click" />
         </div>
     </div>
 </div>
</asp:Content>
