<%@ Page Title="" Language="C#" MasterPageFile="~/Forms/Student/Student.Master" AutoEventWireup="true" CodeBehind="Vids.aspx.cs" Inherits="Education_System.Forms.Student.Vids" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../../Content/bootstrap.css" rel="stylesheet" />
    <style>
    .card {
        max-width: 600px;
        margin: 20px auto;
        border: 1px solid #ccc;
        border-radius: 10px;
        box-shadow: 0px 4px 8px rgba(0, 0, 0, 0.1);
        background-color: #fff;
        transition: transform 0.2s ease-out, box-shadow 0.2s ease-out;
    }

        .card:hover {
            box-shadow: 0px 8px 16px rgba(0, 0, 0, 0.2);
            transform: scale(1.02);
        }

    .card-video {
        width: 100%;
        border-top-left-radius: 10px;
        border-top-right-radius: 10px;
    }

    .card-body {
        padding: 10px;
        text-align: center;
    }

    .card-title {
        font-size: 18px;
        font-weight: bold;
        color: #0d42ed;
        margin-bottom: 10px;
    }

    .card-paragraph {
        font-size: 19px;
        font-weight: lighter;
        margin-bottom: 10px;
    }

    .card-date {
        color: #777;
        font-size: 14px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
    <div class="row mt-5">
        <div>
            <h4 class="text-primary text-center"><strong>Have access to Download Videos for Later USE</strong></h4>
        </div>
    </div>
    <div class="row">
        <div class="col-md-4">
            <div class="card">
                <div class="media">
                    <video src="../../Videos/Intro_To_Programming.mp4" controls="controls" class="card-video" />
                </div>

                <div class="card-body">
                    <h5 class="card-title">Introduction to Programming</h5>
                    <p class="card-paragraph">
                        Symbols and rules for translating algorithms into programs.
                    </p>
                </div>
            </div>
        </div>

        <div class="col-md-4">
            <div class="card">
                <div class="media">
                    <video src="../../Videos/Understanding_Data_Type.mp4" controls="controls" class="card-video" />
                </div>

                <div class="card-body">
                    <h3 class="card-title">Understanding Data Types</h3>
                    <p class="card-paragraph">
                        Defines how data is interpreted by a system.
                    </p>
                </div>
            </div>
        </div>

        <div class="col-md-4">
            <div class="card">
                <div class="media">
                    <video src="../../Videos/If_Statements.mp4" controls="controls" class="card-video" />
                </div>

                <div class="card-body">
                    <h3 class="card-title">If Statements</h3>
                    <p class="card-paragraph">
                        Controls flow, executes code based on expression evaluation.
                    </p>
                </div>
            </div>
        </div>
    </div>
</div>
</asp:Content>
