<%@ Page Title="" Language="C#" MasterPageFile="~/Instructor/dashboard/instructorDashMasterPage.master" AutoEventWireup="true" CodeFile="EditPerCourseVideo.aspx.cs" Inherits="Instructor_dashboard_EditPerCourseVideo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<!-- Adding container class for responsiveness -->
    <div class="container mt-5">

        <!-- Row for the Video Number input and search button -->
        <div class="row mb-4">
            <div class="col-md-6">

                <asp:TextBox ID="txtVideoNumber" runat="server" class="form-control" placeholder="Enter Video Number"></asp:TextBox>
            </div>
            <div class="col-md-6">
                <asp:Button ID="btnretrieveVideoInfo" runat="server" class="btn btn-primary w-100" Text="Search" OnClick="btnretrieveVideoInfo_Click" />
            </div>
        </div>
                <asp:Label ID="lblTotalVideos" runat="server" Text="" CssClass="text-info"></asp:Label>

        <!-- Message Label (if any message is displayed) -->
        <div class="row mb-4">
            <div class="col-12">
                <asp:Label ID="lblMessage" runat="server"  ForeColor="#CC3300"></asp:Label>
            </div>
        </div>

        <!-- Row for displaying video data -->
        <div class="row mb-4">
            <div class="col-md-12">
                <asp:TextBox ID="txtVideoTitle" runat="server" class="form-control" Height="50px" Width="100%" placeholder="Video Title"></asp:TextBox>
            </div>
        </div>
        
        <div class="row mb-4">
            <div class="col-md-12">
                <asp:TextBox ID="txtVideoDescription" runat="server" class="form-control" TextMode="MultiLine" Height="150px" Width="100%" placeholder="Video Description"></asp:TextBox>
            </div>
        </div>
        
        <div class="row mb-4">
            <div class="col-md-12">
                <asp:TextBox ID="txtaddressVideo" runat="server" class="form-control" Height="50px" Width="100%" placeholder="Video URL"></asp:TextBox>
            </div>
        </div>

        <!-- Row for buttons: Update and Delete -->
        <div class="row">
            <div class="col-md-6">
                <asp:Button ID="btnUpdateVideo" runat="server" class="btn btn-success w-100 mb-2" Text="Update Video" OnClick="btnUpdateVideo_Click" />
            </div>
            <div class="col-md-6">
                <asp:Button ID="btnDeleteVideo" runat="server" class="btn btn-danger w-100 mb-2" Text="Delete Video" OnClick="btnDeleteVideo_Click" />
            </div>
        </div>
        
    </div>

</asp:Content>

