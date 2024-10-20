<%@ Page Title="" Language="C#" MasterPageFile="~/Forms/Student/Student.Master" AutoEventWireup="true" CodeBehind="DigitalResources.aspx.cs" Inherits="Education_System.Forms.Student.DigitalResources" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background-color: #f0f2f5;
            margin: 0;
            padding: 20px;
        }

        h2 {
            text-align: center;
            margin-bottom: 40px;
            color: #333;
            font-size: 28px;
        }

        .resource-section {
            margin-bottom: 30px;
            background-color: #ffffff;
            padding: 25px;
            border-radius: 15px;
            box-shadow: 0 6px 15px rgba(0, 0, 0, 0.1);
        }

        .resource-section h3 {
            color: #1d3a5f;
            margin-bottom: 20px;
            font-size: 24px;
            border-bottom: 2px solid #1d3a5f;
            padding-bottom: 10px;
        }

        .resource-links {
            display: flex;
            flex-direction: column;
            gap: 12px;
        }

        .resource-link {
            background-color: #d3d3d3; /* Light gray background */
            color: #1d3a5f;
            padding: 12px 20px;
            border-radius: 8px;
            text-align: center;
            text-decoration: none;
            font-size: 18px;
            font-weight: 500;
            transition: background-color 0.3s, transform 0.3s;
        }

        .resource-link:hover {
            background-color: #1d3a5f; /* Dark blue on hover */
            color: #ffffff;
            transform: translateY(-3px);
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2>Digital Resources - Introduction to Programming</h2>

    <!-- Introduction Section -->
    <div class="resource-section">
        <h3>Introduction to Programming</h3>
        <div class="resource-links">
            <a href="https://www.w3schools.com/whatis/" target="_blank" class="resource-link">What is Programming? - W3Schools</a>
            <a href="https://www.codecademy.com/articles/what-is-programming" target="_blank" class="resource-link">What is Programming? - Codecademy</a>
        </div>
    </div>

    <!-- Fundamentals Section -->
    <div class="resource-section">
        <h3>Programming Fundamentals</h3>
        <div class="resource-links">
            <a href="https://www.freecodecamp.org/news/programming-fundamentals/" target="_blank" class="resource-link">Programming Fundamentals - FreeCodeCamp</a>
            <a href="https://www.learn-c.org/en/Variables_and_Types" target="_blank" class="resource-link">Variables and Data Types - Learn-C.org</a>
        </div>
    </div>

    <!-- Control Structures Section -->
    <div class="resource-section">
        <h3>Control Structures</h3>
        <div class="resource-links">
            <a href="https://www.tutorialspoint.com/cprogramming/c_decision_making.htm" target="_blank" class="resource-link">Conditionals and If-Else - TutorialsPoint</a>
            <a href="https://www.geeksforgeeks.org/c-loops/" target="_blank" class="resource-link">Loops in Programming - GeeksForGeeks</a>
        </div>
    </div>

    <!-- Functions Section -->
    <div class="resource-section">
        <h3>Functions and Methods</h3>
        <div class="resource-links">
            <a href="https://www.programiz.com/c-programming/c-functions" target="_blank" class="resource-link">Functions in C - Programiz</a>
            <a href="https://www.w3schools.com/cpp/cpp_functions.asp" target="_blank" class="resource-link">Functions and Methods - W3Schools</a>
        </div>
    </div>
</asp:Content>
