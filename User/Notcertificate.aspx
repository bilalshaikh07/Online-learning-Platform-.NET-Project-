<%@ Page Title="" Language="C#" MasterPageFile="~/User/UserMasterPage.master" AutoEventWireup="true" CodeFile="Notcertificate.aspx.cs" Inherits="User_Notcertificate" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" />

    <div class="container mt-5">
        <div class="row justify-content-center">
            <div class="col-md-8">
                <div class="card shadow-lg border-0">
                    <div class="card-body text-center">
                        <h2 class="card-title text-danger mb-4">Certificate Locked 🔒</h2>
                        <div class="alert alert-warning fs-5" role="alert">
                            You have not completed all the videos in this course.
                        </div>
                        <p class="lead mb-4">To unlock and download your certificate, please watch all the videos associated with this course.</p>
                        <a href="Order.aspx" class="btn btn-primary btn-lg">
                            ← Back to My Courses
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

