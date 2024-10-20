<%@ Page Title="" Language="C#" MasterPageFile="~/Forms/Student/Student.Master" AutoEventWireup="true" CodeBehind="DoctorCourses.aspx.cs" Inherits="Education_System.Forms.Student.DoctorCourses" %>

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

        .course-container {
            display: flex;
            justify-content: center;
            flex-wrap: wrap;
            margin-top: 30px;
        }

        .course-card {
            background-color: #fff;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            border-radius: 8px;
            width: 300px;
            margin: 20px;
            text-align: center;
            padding: 20px;
            transition: transform 0.3s;
        }

        .course-card:hover {
            transform: translateY(-10px);
        }

        .course-title {
            font-size: 1.5em;
            color: #2c3e50;
            margin-bottom: 15px;
        }

        .course-description {
            font-size: 1em;
            color: #7f8c8d;
            margin-bottom: 20px;
        }

        .lnkEnroll {
            background-color: #3498db;
            color: white;
            padding: 10px 20px;
            text-decoration: none;
            border-radius: 5px;
            transition: background-color 0.3s;
        }

        .lnkEnroll:hover {
            background-color: #2980b9;
        }

        @media screen and (max-width: 768px) {
            .course-card {
                width: 100%;
                margin: 10px;
            }
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2>Doctor Courses</h2>

    <div class="course-container">
        <!-- General Practitioner Courses -->
        <div class="course-card">
            <div class="course-title">Courses for General Practitioner</div>
            <div class="course-description">
                - Bachelor of Medicine<br>
                - Medical Ethics<br>
                - Family Medicine
            </div>
            <a href="EnrollGeneralPractitioner.aspx" class="lnkEnroll">Enroll Now</a>
        </div>

        <!-- Surgeon Courses -->
        <div class="course-card">
            <div class="course-title">Courses for Surgeon</div>
            <div class="course-description">
                - Bachelor of Surgery<br>
                - Surgical Anatomy<br>
                - Advanced Surgery Techniques
            </div>
            <a href="EnrollSurgeon.aspx" class="lnkEnroll">Enroll Now</a>
        </div>

        <!-- Pediatrician Courses -->
        <div class="course-card">
            <div class="course-title">Courses for Pediatrician</div>
            <div class="course-description">
                - Child Development<br>
                - Pediatric Emergencies<br>
                - Pediatric Pharmacology
            </div>
            <a href="EnrollPediatrician.aspx" class="lnkEnroll">Enroll Now</a>
        </div>
    </div>
</asp:Content>
