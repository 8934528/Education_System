<%@ Page Title="" Language="C#" MasterPageFile="~/Forms/Student/Student.Master" AutoEventWireup="true" CodeBehind="Thuso.aspx.cs" Inherits="Education_System.Forms.Student.Thuso" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        /* Basic styling for chatbot button */
.chatbot-button {
    position: fixed;
    bottom: 20px;
    right: 20px;
    background-color: #007BFF;
    color: white;
    border: none;
    padding: 15px 20px;
    font-size: 16px;
    border-radius: 50px;
    cursor: pointer;
    z-index: 1000;
}

/* Modal styling */
/* Modal positioned on the right side */
.chatbot-modal {
    display: none;
    position: fixed;
    top: 57px;
    right: 0;
    width: 100%; /* Keeps the width unchanged */
    height: 83%; /* Full page height */
    background-color: rgba(0, 0, 0, 0.4); /* Background dimming */
    z-index: 1000;
}

/* Modal content filling the height */
.chatbot-modal-content {
    background-color: #fff;
    height: 100%; /* Full height of the modal */
    padding: 20px;
    box-sizing: border-box;
    overflow-y: auto; /* Ensures scrolling if content overflows */
    width: 100%;
}

/* Optional: Ensure close button stays visible at the top right */
.close-button {
    color: #aaa;
    float: right;
    font-size: 28px;
    font-weight: bold;
    cursor: pointer;
    position: absolute;
    right: 20px;
    top: 20px;
}


    .close-button:hover, .close-button:focus {
        color: #000;
        text-decoration: none;
        cursor: pointer;
    }

/* Dropdown button */
.dropdown-button {
    background-color: #007BFF;
    color: white;
    padding: 10px;
    border: none;
    width: 100%;
    text-align: left;
    font-size: 16px;
    cursor: pointer;
    position: relative;
}

.dropdown-arrow {
    position: absolute;
    right: 10px;
}

.dropdown-list {
    display: none;
    list-style-type: none;
    padding: 0;
    margin-top: 5px;
    background-color: white;
    border: 1px solid #ddd;
}

    .dropdown-list li {
        padding: 10px;
        border-bottom: 1px solid #ddd;
        cursor: pointer;
    }

        .dropdown-list li:hover {
            background-color: #f1f1f1;
        }

/* Dropdown content section */
.dropdown-content {
    margin-top: 15px;
}

.content-section {
    display: none;
    padding: 10px;
    border: 1px solid #ddd;
    background-color: #f9f9f9;
    margin-top: 10px;
}

.quiz {
    color: white;
    background-color: #007BFF;
    width: 100%;
    border-radius: 10px;
    padding: 30px;
    display: none; /* Hide the quiz by default */
}

#answer-buttons {
    display: flex;
    flex-direction: column; /* Align buttons vertically */
    gap: 2px; /* Adds a 2px gap between buttons */
}

.btn {
    width: 100%;
    color: black;
    font-weight: 500;
    border: 2px solid black;
    padding: 10px;
    left: 0;
    text-align: left;
    border-radius: 5px;
    cursor: pointer;
}

.btn:hover {
    background-color: gray;
    color: black;
}

/* Disable hover effect when the button is selected */
.btn.selected, .btn.selected:hover {
    background-color: black;
    color: white;
    cursor: default; /* Change cursor to default to indicate the option is selected */
}

#next-btn {
    background: #001e4d;
    color: white;
    font-weight: 500;
    width: 100%;
    border: 0;
    padding: 10px;
    margin: 20px auto 0;
    border-radius: 4px;
    cursor: pointer;
    display: none;
}

#suggestedCoursesContent {
    background-color: #007BFF;
    font-weight: 700;
    text-align: center;
    font-size: 1.5em;
}


    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="container">
     <h1>Telkom Learn Website</h1>
     <p>Some Text</p>
 </div>

 <!-- Floating Button -->
 <button id="chatbotButton" class="chatbot-button">Get help from Thuso</button>

 <!-- Modal Container -->
 <div id="chatbotModal" class="chatbot-modal">
     <div class="chatbot-modal-content">
         <div class="chatbot-modal-header">
             <span id="closeModal" class="close-button">&times;</span>
             <h2>Hi there, I'm Thuso!</h2>
                 <p>your personal helper</p>
         </div>
         <div class="chatbot-modal-body">
             <!-- Dropdown List inside Modal -->
             <div class="dropdown-container">
                 <button class="dropdown-button" id="dropdownToggle">
                     Select an option to get started<span class="dropdown-arrow">▼</span>
                 </button>
                 <ul id="dropdownList" class="dropdown-list">                        
                     <li data-content="suggestedCoursesContent">Suggest a few courses</li>
                     <li data-content="careersContent">Available careers</li>
                     <li data-content="progressContent">Progress and badges</li>
                     <li data-content="helpContent">Get help from peers</li>
                     <li data-content="extraInfoContent">Extra information</li>
                     <li data-content="aboutContent">About Telkom Learn</li>
                     <li data-content="feedbackContent">Give feedback</li>
                 </ul>
             </div>

             <!-- Display the content based on selected dropdown option -->
             <div id="dropdownContent" class="dropdown-content">
                 <!-- This will dynamically display the selected content -->                    
                 <p id="suggestedCoursesContent" class="content-section">
                     Take the quiz below to get started
                     <div class="quiz">
                         <p id="question">Question goes here</p>
                         <div id="answer-buttons">
                             <button class="btn">Answer 1</button>
                             <button class="btn">Answer 2</button>
                             <button class="btn">Answer 3</button>
                             <button class="btn">Answer 4</button>
				</div>
                             <button id="next-btn">Next</button>
                     </div>
                     
                 </p>
                 <p id="careersContent" class="content-section">Available careers that align with your course...</p>
                 <p id="progressContent" class="content-section">Track your progress and badges here...</p>
                 <p id="helpContent" class="content-section">Get help from peers or tutors here...</p>
                 <p id="extraInfoContent" class="content-section">Extra information to boost your learning...</p>
                 <p id="aboutContent" class="content-section">Learn more about Telkom Learn...</p>
                 <p id="feedbackContent" class="content-section">Give feedback to improve the platform...</p>
             </div>
         </div>
     </div>
 </div>

    <script>
        // Get the modal
        var modal = document.getElementById("chatbotModal");

        // Get the button that opens the modal
        var btn = document.getElementById("chatbotButton");

        // Get the element that closes the modal
        var closeBtn = document.getElementById("closeModal");

        // When the user clicks the button, open the modal
        btn.onclick = function () {
            modal.style.display = "block";
            btn.style.display = "none"; // Hide the button when the modal opens
        }

        // When the user clicks on the close button (x), close the modal
        closeBtn.onclick = function () {
            modal.style.display = "none";
            btn.style.display = "block"; // Show the button when the modal closes
        }

        // When the user clicks anywhere outside of the modal, close it
        window.onclick = function (event) {
            if (event.target == modal) {
                modal.style.display = "none";
                btn.style.display = "block"; // Show the button when the modal closes
            }
        }

        // Dropdown functionality
        var dropdownToggle = document.getElementById("dropdownToggle");
        var dropdownList = document.getElementById("dropdownList");
        var contentSections = document.getElementsByClassName("content-section");

        // Toggle the dropdown list visibility
        dropdownToggle.onclick = function () {
            dropdownList.style.display = dropdownList.style.display === "none" || dropdownList.style.display === "" ? "block" : "none";
        }

        // Add event listener to dropdown items
        var dropdownItems = dropdownList.getElementsByTagName("li");
        for (var i = 0; i < dropdownItems.length; i++) {
            dropdownItems[i].onclick = function () {
                // Hide all content sections
                for (var j = 0; j < contentSections.length; j++) {
                    contentSections[j].style.display = "none";
                }

                // Show the selected content section
                var selectedContent = document.getElementById(this.getAttribute("data-content"));
                selectedContent.style.display = "block";

                // Check if the user clicked "Suggested Courses"
                if (this.getAttribute("data-content") === "suggestedCoursesContent") {
                    document.querySelector(".quiz").style.display = "block"; // Show the quiz
                }
                else {
                    document.querySelector(".quiz").style.display = "none"; // Hide the quiz for other sections
                }

                // Move the selected item to the top
                dropdownToggle.innerHTML = this.innerHTML + ' <span class="dropdown-arrow">▼</span>';

                // Hide the dropdown list after selection
                dropdownList.style.display = "none";
            }
        }

        const categories = {
            business: 0,
            it: 0,
            management: 0,
            marketing: 0,
            cybersecurity: 0
        };

        const questions = [
            {
                question: "What kind of work environment do you prefer?",
                answers: [
                    { text: "Corporate office", category: "business" },
                    { text: "Tech hub", category: "it" },
                    { text: "Managerial role", category: "management" },
                    { text: "Creative agency", category: "marketing" },
                    { text: "Cybersecurity firm", category: "cybersecurity" }
                ]
            },
            {
                question: "Which task excites you the most?",
                answers: [
                    { text: "Running a business", category: "business" },
                    { text: "Developing software", category: "it" },
                    { text: "Leading a team", category: "management" },
                    { text: "Creating marketing campaigns", category: "marketing" },
                    { text: "Securing online systems", category: "cybersecurity" }
                ]
            }, {
                question: "What type of project would you most like to lead?",
                answers: [
                    { text: "Running a startup business", category: "business" },
                    { text: "Developing a mobile app", category: "it" },
                    { text: "Managing a team for a new product launch", category: "management" },
                    { text: "Designing a viral marketing campaign", category: "marketing" },
                    { text: "Implementing a security protocol for a company", category: "cybersecurity" }
                ]
            }, {
                question: "Which skill do you want to improve on the most?",
                answers: [
                    { text: "Networking and negotiation", category: "business" },
                    { text: "Coding and programming languages", category: "it" },
                    { text: "Conflict resolution and team dynamics", category: "management" },
                    { text: "Social media marketing and analytics", category: "marketing" },
                    { text: "Threat detection and response", category: "cybersecurity" }
                ]
            }, {
                question: "What type of company culture would you thrive in?",
                answers: [
                    { text: "Competitive and results-driven", category: "business" },
                    { text: "Innovatvie and tech-savvy", category: "it" },
                    { text: "Collaborative and supportive", category: "management" },
                    { text: "Fast-paced and creative", category: "marketing" },
                    { text: "Security-focused and risk-aware", category: "cybersecurity" }
                ]
            }, {
                question: "How do you prefer to communicate with your team?",
                answers: [
                    { text: "In-person meetings and networking", category: "business" },
                    { text: "Collaborative coding platforms and forums", category: "it" },
                    { text: "Regular check-ins and feedback sessions", category: "management" },
                    { text: "Creative brainstorming sessions", category: "marketing" },
                    { text: "Incident response plans and alerts", category: "cybersecurity" }
                ]
            }, {
                question: "What kind of problems do you enjoy solving?",
                answers: [
                    { text: "Strategic business challenges", category: "business" },
                    { text: "Technical issues and bugs", category: "it" },
                    { text: "Organizational challenges", category: "management" },
                    { text: "Market analysis and consumer behavior", category: "marketing" },
                    { text: "Security vulnerabilities and risks", category: "cybersecurity" }
                ]
            }, {
                question: "Which industry interests you the most?",
                answers: [
                    { text: "Finance and investment", category: "business" },
                    { text: "Software development and engineering", category: "it" },
                    { text: "Human resources and leadership", category: "management" },
                    { text: "Advertising and media", category: "marketing" },
                    { text: "Information security and compliance", category: "cybersecurity" }
                ]
            }, {
                question: "How do you prefer to spend your free time?",
                answers: [
                    { text: "Networking events and business seminars", category: "business" },
                    { text: "Coding personal projects", category: "it" },
                    { text: "Volunteering in leadership programs", category: "management" },
                    { text: "Exploring new marketing trends", category: "marketing" },
                    { text: "Reading about the latest cybersecurity threats", category: "cybersecurity" }
                ]
            }, {
                question: "Which skill do you want to improve on the most?",
                answers: [
                    { text: "Networking and negotiation", category: "business" },
                    { text: "Coding and programming languages", category: "it" },
                    { text: "Conflict resolution and team dynamics", category: "management" },
                    { text: "Social media marketing and analytics", category: "marketing" },
                    { text: "Threat detection and response", category: "cybersecurity" }
                ]
            }, {
                question: "What role do you see yourself in the future?",
                answers: [
                    { text: "CEO or business owner", category: "business" },
                    { text: "Software architect or developer", category: "it" },
                    { text: "Project manager or team leader", category: "management" },
                    { text: "Marketing director or brand strategist", category: "marketing" },
                    { text: "Cybersecurity analyst or consultant", category: "cybersecurity" }
                ]
            }, {
                question: "How would you describe your decision-making style?",
                answers: [
                    { text: "Strategic and analytical", category: "business" },
                    { text: "Creative and innovative", category: "it" },
                    { text: "Collaborative and consensus-driven", category: "management" },
                    { text: "Data-driven and results-oriented", category: "marketing" },
                    { text: "Cautious and detail-oriented", category: "cybersecurity" }
                ]
            },
            {
                question: "What best describes your approach to challenges?",
                answers: [
                    { text: "Taking calculated risks", category: "business" },
                    { text: "Experimenting with new solutions", category: "it" },
                    { text: "Seeking input from others", category: "management" },
                    { text: "Thinking outside the box", category: "marketing" },
                    { text: "Thoroughly assessing potential threats", category: "cybersecurity" }
                ]
            },
            {
                question: "How do you handle feedback from others?",
                answers: [
                    { text: "I view it as an opportunity for growth", category: "business" },
                    { text: "I analyze it and implement changes", category: "it" },
                    { text: "I appreciate diverse perspectives", category: "management" },
                    { text: "I use it to refine my strategies", category: "marketing" },
                    { text: "I take it seriously and adjust my security measures", category: "cybersecurity" }
                ]
            },
            {
                question: "What trait do you believe is most important for success in your field?",
                answers: [
                    { text: "Resilience and adaptability", category: "business" },
                    { text: "Curiosity and technical skills", category: "it" },
                    { text: "Leadership and empathy", category: "management" },
                    { text: "Creativity and communication", category: "marketing" },
                    { text: "Vigilance and analytical thinking", category: "cybersecurity" }
                ]
            }
        ];

        // Shuffle function
        function shuffleArray(array) {
            for (let i = array.length - 1; i > 0; i--) {
                const j = Math.floor(Math.random() * (i + 1));
                [array[i], array[j]] = [array[j], array[i]]; // Swap elements
            }
        }

        // Shuffle questions
        shuffleArray(questions);

        // Shuffle answers for each question
        questions.forEach(question => {
            shuffleArray(question.answers);
        });

        const questionElement = document.getElementById("question");
        const answerButtons = document.getElementById("answer-buttons");
        const nextButton = document.getElementById("next-btn");

        let currentQuestionIndex = 0;

        function startQuiz() {
            currentQuestionIndex = 0;
            resetCategories();
            nextButton.innerHTML = "Next";
            showQuestion();
        }

        function resetCategories() {
            categories.business = 0;
            categories.it = 0;
            categories.management = 0;
            categories.marketing = 0;
            categories.cybersecurity = 0;
        }

        function showQuestion() {
            resetState();
            let currentQuestion = questions[currentQuestionIndex];
            let questionNo = currentQuestionIndex + 1;
            questionElement.innerHTML = questionNo + ". " + currentQuestion.question;

            currentQuestion.answers.forEach(answer => {
                const button = document.createElement("button");
                button.innerHTML = answer.text;
                button.classList.add("btn");
                button.dataset.category = answer.category;
                answerButtons.appendChild(button);
                button.addEventListener("click", selectAnswer);
            });
        }

        function resetState() {
            nextButton.style.display = "none";
            while (answerButtons.firstChild) {
                answerButtons.removeChild(answerButtons.firstChild);
            }
        }

        let selectedCategory = null; // Variable to store the selected category

        function selectAnswer(e) {
            const selectedBtn = e.target;

            // Store the selected category but don't tally the score yet
            selectedCategory = selectedBtn.dataset.category;

            // Remove 'selected' class from all buttons
            Array.from(answerButtons.children).forEach(button => {
                button.classList.remove("selected");
            });

            // Add 'selected' class to the clicked button
            selectedBtn.classList.add("selected");

            // Show the next button
            nextButton.style.display = "block";
        }



        function showResults() {
            const totalQuestions = questions.length;

            const businessPercentage = (categories.business / totalQuestions) * 100;
            const itPercentage = (categories.it / totalQuestions) * 100;
            const managementPercentage = (categories.management / totalQuestions) * 100;
            const marketingPercentage = (categories.marketing / totalQuestions) * 100;
            const cybersecurityPercentage = (categories.cybersecurity / totalQuestions) * 100;

            resetState();
            questionElement.innerHTML = `
        Your Results: <br>
        Business: ${businessPercentage.toFixed(2)}% <br>
        IT & Software: ${itPercentage.toFixed(2)}% <br>
        Management: ${managementPercentage.toFixed(2)}% <br>
        Marketing: ${marketingPercentage.toFixed(2)}% <br>
        Cybersecurity: ${cybersecurityPercentage.toFixed(2)}% <br>
    `;
            nextButton.innerHTML = "Take Quiz Again";
            nextButton.style.display = "block";
        }

        function handleNextButton() {
            // Only tally up the score when the Next button is clicked
            if (selectedCategory) {
                categories[selectedCategory]++;  // Increment the score for the selected category
                selectedCategory = null;  // Reset after tallying
            }

            currentQuestionIndex++;
            if (currentQuestionIndex < questions.length) {
                showQuestion();
            } else {
                showResults();
            }
        }


        nextButton.addEventListener("click", () => {
            if (currentQuestionIndex < questions.length) {
                handleNextButton();
            } else {
                startQuiz();
            }
        });

        startQuiz();


    </script>
</asp:Content>
