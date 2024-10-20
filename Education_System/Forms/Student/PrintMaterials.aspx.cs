using System;
using System.Collections.Generic;
using System.Web.UI;

namespace Education_System.Forms.Student
{
    public partial class PrintMaterials : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadFolderContents();
            }
        }

        private void LoadFolderContents()
        {
            // Hardcoded list of documents
            List<DocumentInfo> documents = new List<DocumentInfo>
            {
                new DocumentInfo { DocumentTitle = "What is Programming?", FilePath = "~/Documents/SoftwareDevelopment/Intro.pdf" },
                new DocumentInfo { DocumentTitle = "Variables and Data Types", FilePath = "~/Documents/SoftwareDevelopment/KeyConcepts.pdf" },
                new DocumentInfo { DocumentTitle = "Loops in Programming", FilePath = "~/Documents/SoftwareDevelopment/GanttCharts.pdf" },
                new DocumentInfo { DocumentTitle = "Loops in Programming", FilePath = "~/Documents/SoftwareDevelopment/CriticalPath.pdf" },
                new DocumentInfo { DocumentTitle = "Functions in C", FilePath = "~/Documents/SoftwareDevelopment/CaseStudy1.pdf" },
                new DocumentInfo { DocumentTitle = "Functions and Methods", FilePath = "~/Documents/SoftwareDevelopment/CaseStudy2.pdf" },
                new DocumentInfo { DocumentTitle = "Decision Making Statements", FilePath = "~/Documents/SoftwareDevelopment/PrinciplesOverview.pdf" },
                new DocumentInfo { DocumentTitle = "Introduction to C#", FilePath = "~/Documents/SoftwareDevelopment/EthicsResponsibility.pdf" },
                new DocumentInfo { DocumentTitle = "Introduction to C++", FilePath = "~/Documents/SoftwareDevelopment/StrategicPlanning.pdf" },
                new DocumentInfo { DocumentTitle = "AI introduction", FilePath = "~/Documents/SoftwareDevelopment/SWOTGuide.pdf" },
                new DocumentInfo { DocumentTitle = "Operations Management Fundamentals", FilePath = "~/Documents/SoftwareDevelopment/OperationsFundamentals.pdf" },
                new DocumentInfo { DocumentTitle = "Lean Manufacturing Concepts", FilePath = "~/Documents/SoftwareDevelopment/LeanManufacturing.pdf" },
                new DocumentInfo { DocumentTitle = "Introduction to HTML", FilePath = "~/Documents/SoftwareDevelopment/IntroHTML.pdf" },
                new DocumentInfo { DocumentTitle = "CSS Styling Basics", FilePath = "~/Documents/SoftwareDevelopment/CSSBasics.pdf" },
                new DocumentInfo { DocumentTitle = "JavaScript Fundamentals", FilePath = "~/Documents/SoftwareDevelopment/JSFundamentals.pdf" },
                new DocumentInfo { DocumentTitle = "DOM Manipulation with JavaScript", FilePath = "~/Documents/SoftwareDevelopment/DOMManipulation.pdf" },
                new DocumentInfo { DocumentTitle = "Introduction to Backend Development", FilePath = "~/Documents/SoftwareDevelopment/IntroBackend.pdf" },
                new DocumentInfo { DocumentTitle = "Node.js Basics", FilePath = "~/Documents/SoftwareDevelopment/NodeJSBasics.pdf" }
            };

            rptDocuments.DataSource = documents;
            rptDocuments.DataBind();
        }
    }

    public class DocumentInfo
    {
        public string DocumentTitle { get; set; }
        public string FilePath { get; set; }
    }
} 

