<%@ Page Title="Welcome" Language="C#" MasterPageFile="~/Forms/Student/Student.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Education_System.Forms.Student.Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        /* Xola */
        body {
            font-family: 'Arial', sans-serif;
        }

        .hero-section {
            position: relative;
            width: 100%;
            height: 100vh;
            overflow: hidden;
            text-align: center;
            color: white;
        }

            .hero-section video {
                position: absolute;
                top: 0;
                left: 0;
                width: 100%;
                height: 100%;
                object-fit: cover;
                z-index: -1; /* Ensures the video stays behind the content */
            }

            .hero-section .content {
                position: relative;
                z-index: 1; /* Keeps text and buttons in front of the video */
                padding: 100px 20px;
            }

            .hero-section h1 {
                font-size: 3em;
                margin-bottom: 20px;
            }

            .hero-section p {
                font-size: 1.5em;
                margin-bottom: 30px;
                position: relative; /* For cursor positioning */
            }

        .cursor {
            display: inline-block;
            width: 10px; /* Cursor width */
            background-color: white; /* Cursor color */
            animation: blink 1s infinite; /* Blinking animation */
            margin-left: 5px; /* Space between text and cursor */
        }

        @keyframes blink {
            50% {
                opacity: 0;
            }
        }

        .btn-get-started {
            background-color: #3498db;
            color: white;
            padding: 15px 30px;
            text-decoration: none;
            border-radius: 5px;
            transition: background-color 0.3s;
        }

            .btn-get-started:hover {
                background-color: #2980b9;
            }
        /* Quick Links Section */
        .quick-links {
            display: flex;
            justify-content: space-around;
            margin: 50px 0;
            padding: 0 20px;
        }

        .quick-link-card {
            background-color: white;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            border-radius: 8px;
            width: 200px;
            text-align: center;
            padding: 20px;
            transition: transform 0.3s;
        }

            .quick-link-card:hover {
                transform: translateY(-10px);
            }

        .quick-link-title {
            font-size: 1.2em;
            color: #2c3e50;
            margin-bottom: 15px;
        }

        .quick-link-description {
            font-size: 1em;
            color: #7f8c8d;
        }

        @media screen and (max-width: 768px) {
            .quick-links {
                flex-direction: column;
                align-items: center;
            }

            .quick-link-card {
                margin-bottom: 20px;
            }
        }
    </style>

    <!--Start of Tawk.to Script-->
<script type="text/javascript">
    var Tawk_API = Tawk_API || {}, Tawk_LoadStart = new Date();
    (function () {
        var s1 = document.createElement("script"), s0 = document.getElementsByTagName("script")[0];
        s1.async = true;
        s1.src = 'https://embed.tawk.to/66f8d627e5982d6c7bb63126/1i8u0932o';
        s1.charset = 'UTF-8';
        s1.setAttribute('crossorigin', '*');
        s0.parentNode.insertBefore(s1, s0);
    })();
</script>
<!--End of Tawk.to Script-->
    <!--End of Tawk.to Script-->
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <div class="hero-section">
        <video autoplay muted loop>
            <source src="../../Images/edu.mp4" type="video/mp4">
            Your browser does not support the video tag.
        </video>
        <div class="content">
            <h1 id="welcomeMessage"><%= Resources.Labels.WelcomeMessage %></h1>
            <p id="welcomeSubtitle"></p>
            <span class="cursor"></span>
           
            <a href="Login.aspx" class="btn-get-started"><%= Resources.Labels.GetStartedButton %></a>
        </div>
    </div>

    <div class="quick-links">
        <div class="quick-link-card">
            <div class="quick-link-title"><%= Resources.Labels.QuickLinksCoursesTitle %></div>
            <div class="quick-link-description"><%= Resources.Labels.QuickLinksCoursesDescription %></div>
            <asp:LinkButton ID="lnkCourses" runat="server" CssClass="btn-get-started" OnClick="lnkCourses_Click"><%= Resources.Labels.ViewCoursesButton %></asp:LinkButton>
        </div>
        <div class="quick-link-card">
            <div class="quick-link-title"><%= Resources.Labels.QuickLinksAboutTitle %></div>
            <div class="quick-link-description"><%= Resources.Labels.QuickLinksAboutDescription %></div>
            <asp:LinkButton ID="lnkAbout" runat="server" CssClass="btn-get-started" OnClick="lnkAbout_Click"><%= Resources.Labels.LearnMoreButton %></asp:LinkButton>
        </div>
        <div class="quick-link-card">
            <div class="quick-link-title"><%= Resources.Labels.QuickLinksContactTitle %></div>
            <div class="quick-link-description"><%= Resources.Labels.QuickLinksContactDescription %></div>
            <asp:LinkButton ID="lnkContact" runat="server" CssClass="btn-get-started" OnClick="lnkContact_Click"><%= Resources.Labels.GetInTouchButton %></asp:LinkButton>
        </div>
    </div>

    <script>
        window.addEventListener('load', () => {
            const welcomeSubtitle = document.getElementById('welcomeSubtitle');
            const cursor = document.querySelector('.cursor');

            const typeText = (element, text, delay) => {
                let index = 0;
                const typingInterval = setInterval(() => {
                    element.innerHTML += text[index];
                    index++;
                    cursor.style.display = 'inline'; 
                    if (index === text.length) {
                        clearInterval(typingInterval);
                        cursor.style.display = 'none'; 
                    }
                }, delay);
            };

            
            const welcomeSubtitleText = "<%= Resources.Labels.WelcomeSubtitle %>";

            
            console.log("Welcome Subtitle:", welcomeSubtitleText);

            typeText(welcomeSubtitle, welcomeSubtitleText, 50);  
        });
    </script>
</asp:Content>
