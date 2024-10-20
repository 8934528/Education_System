<%@ Page Title="" Language="C#" MasterPageFile="~/Forms/Student/Student.Master" AutoEventWireup="true" CodeBehind="QuizIntroProgr.aspx.cs" Inherits="Education_System.Forms.Student.QuizIntroProgr" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../../Content/bootstrap.css" rel="stylesheet" />
    <style>
    .quiz-container {
        margin-top: 10vh;
        max-width: 800px;
        margin-left: auto;
        margin-right: auto;
        padding: 20px;
        border: 1px solid #ccc;
        border-radius: 10px;
        background-color: #f9f9f9;
    }

    .question {
        font-weight: bold;
        margin-left: 10%;
        margin-top: 5%;
    }

    .options {
        list-style-type: none;
        padding-left: 0;
        margin-left: 10%;
    }

        .options li {
            padding: 5px 0;
            margin-left: 10%;
        }

    .result-box {
        margin-top: 20px;
        padding: 10px;
        background-color: #f0f0f5;
        border: 1px solid #ccc;
        border-radius: 5px;
        font-weight: bold;
        font-size: 20px;
        text-align: center;
        margin-left: auto;
        margin-right: auto;
    }

    .btn-submit {
        margin-top: 20px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="quiz-container">
     <div class="result-box">
         <h2 class="text-center text-primary"><strong>Introduction to Programming Quiz</strong></h2>
     </div>

     <div id="quiz"></div>

     <asp:Button ID="btnSubmit" runat="server" Text="Submit Quiz" CssClass="btn btn-primary btn-submit" OnClientClick="submitQuiz(); return false;" />

     <div class="result-box">
         <asp:TextBox ID="txtResult" runat="server" TextMode="MultiLine" CssClass="form-control" Rows="1" ReadOnly="true"></asp:TextBox>
     </div>
 </div>

 <script type="text/javascript">
     const questions = [
         {
             question: '<%= Resources.Labels.Question1 %>',
             options: ["HyperText Markup Language", "HighText Machine Language", "HyperText Markup Level", "None of these"],
             answer: "HyperText Markup Language"
         },
         {
             question: '<%= Resources.Labels.Question2 %>',
             options: ["HTML", "CSS", "JavaScript", "All of the above"],
             answer: "JavaScript"
         },
         {
             question: '<%= Resources.Labels.Question3 %>',
             options: ["var myVar;", "variable myVar;", "v myVar;", "None of the above"],
             answer: "var myVar;"
         },
         {
             question: '<%= Resources.Labels.Question4 %>',
             options: ["//", "#", "<!--", "/*"],
             answer: "//"
         },
         {
             question: '<%= Resources.Labels.Question5 %>',
             options: ["22", "4", "Error", "2"],
             answer: "22"
         },
         {
             question: '<%= Resources.Labels.Question6 %>',
             options: ["function myFunction()", "create myFunction()", "def myFunction()", "None of these"],
             answer: "function myFunction()"
         },
         {
             question: '<%= Resources.Labels.Question7 %>',
             options: ["String", "Boolean", "Number", "Character"],
             answer: "Character"
         },
         {
             question: '<%= Resources.Labels.Question8 %>',
             options: ["Creative Style System", "Cascading Style Sheets", "Colorful Style Sheets", "None of the above"],
             answer: "Cascading Style Sheets"
         },
         {
             question: '<%= Resources.Labels.Question9 %>',
             options: ["style", "class", "font", "styles"],
             answer: "style"
         },
         {
             question: '<%= Resources.Labels.Question10 %>',
             options: ["To contain metadata", "To display content", "To create headings", "None of the above"],
             answer: "To contain metadata"
         },
         {
             question: '<%= Resources.Labels.Question11 %>',
             options: ["Django", "Ruby on Rails", "Angular", "Laravel"],
             answer: "Angular"
         },
         {
             question: '<%= Resources.Labels.Question12 %>',
             options: ["<h1>", "<heading>", "<h6>", "<h2>"],
             answer: "<h1>"
         },
         {
             question: '<%= Resources.Labels.Question13 %>',
             options: ["getElementById()", "getElementsByClassName()", "querySelector()", "None of the above"],
             answer: "getElementById()"
         },
         {
             question: '<%= Resources.Labels.Question14 %>',
             options: ["The current function", "The global object", "The current object", "None of the above"],
             answer: "The current object"
         },
         {
             question: '<%= Resources.Labels.Question15 %>',
             options: ["click", "mouseover", "keydown", "All of the above"],
             answer: "All of the above"
         }
     ];

     let currentQuestion = 0;
     let score = 0;

     function loadQuiz() {
         const quizDiv = document.getElementById("quiz");
         quizDiv.innerHTML = '';

         questions.forEach((q, index) => {
             let questionDiv = document.createElement("div");
             questionDiv.className = "mb-3";

             questionDiv.innerHTML = `
                 <div class="question">${index + 1}. ${q.question}</div>
                 <ul class="options">
                     ${q.options.map((option, idx) => `
                         <li>
                             <input type="radio" name="question${index}" value="${option}" id="q${index}_${idx}">
                             <label for="q${index}_${idx}">${option}</label>
                         </li>
                     `).join('')}
                 </ul>
             `;
             quizDiv.appendChild(questionDiv);
         });
     }

     function submitQuiz() {
         let totalQuestions = questions.length;
         let correctAnswers = 0;

         questions.forEach((q, index) => {
             let selectedOption = document.querySelector(`input[name="question${index}"]:checked`);
             if (selectedOption && selectedOption.value === q.answer) {
                 correctAnswers++;
             }
         });

         let result = `You Got ${correctAnswers} Out of ${totalQuestions} Questions Correct.`;
         document.getElementById('<%= txtResult.ClientID %>').value = result;
     }

     window.onload = loadQuiz;
 </script>
</asp:Content>
