<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Education_System.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Loading Page</title>
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet" />
    <style>
        /* Center the loader container in the middle of the page */
        .loader-container {
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            flex-direction: column; /* Align items vertically */
            background-color: #f8f9fa;
        }

        /* Style for the loader (spinner icon) */
        .loader {
            border: 16px solid #f3f3f3;
            border-radius: 50%;
            border-top: 16px solid #3498db;
            width: 120px;
            height: 120px;
            animation: spin 2s linear infinite;
        }

        @keyframes spin {
            0% { transform: rotate(0deg); }
            100% { transform: rotate(360deg); }
        }

        /* Loading message */
        .loading-message {
            margin-top: 20px;
            font-size: 1.5rem;
            color: #555;
            text-align: center;
        }
    </style>
    <script type="text/javascript">
        // JavaScript function to redirect to the Default page in the Forms directory after 3 seconds
        function redirectToDefault() {
            setTimeout(function () {
                window.location.href = '/Forms/Student/Default.aspx'; // Change the path to your desired Default page
            }, 3000); // 3 seconds delay
        }
    </script>
</head>
<body onload="redirectToDefault();">
    <form id="form1" runat="server">
        <div class="loader-container">
            <!-- Loader animation -->
            <div class="loader"></div>
            <!-- Loading message -->
            <div class="loading-message">Loading... Please wait.</div>
        </div>
    </form>
</body>
</html>
