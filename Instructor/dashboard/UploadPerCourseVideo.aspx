<%@ Page Title="" Language="C#" MasterPageFile="~/Instructor/dashboard/instructorDashMasterPage.master" AutoEventWireup="true" CodeFile="UploadPerCourseVideo.aspx.cs" Inherits="Instructor_dashboard_UploadPerCourseVideo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
        <div class="container mt-5">
        <h2>Upload Video Form</h2>
        <div class="btn-group" role="group" aria-label="Content Type">
            <asp:Button class="btn btn-primary" ID="btnLinkContent" runat="server" Text="Content as Link" OnClick="btnLinkContent_Click" />
            <asp:Button class="btn btn-secondary" ID="btnFileContent" runat="server" Text="Content as File" OnClick="btnFileContent_Click" />
           
        </div>

        <!-- Form for Link Content -->
           <div class="form-group">
                <asp:Label ID="lblnovideo" runat="server" Text="Enter video Number:" ></asp:Label>
                <asp:TextBox ID="txtnovideo" CssClass="form-control" placeholder="Enter video Number" runat="server" ></asp:TextBox>
             
            </div>

            <div class="form-group">
                <asp:Label ID="lbl2" runat="server" Text="Title:" ></asp:Label>
                <asp:TextBox ID="txtTitlevid" CssClass="form-control" placeholder="Enter video title" runat="server" ></asp:TextBox>
             
            </div>

            <div class="form-group">
                <asp:Label ID="lbl1" runat="server" Text="Video Link:"></asp:Label>
                <asp:TextBox ID="txtVideoLink" CssClass="form-control" placeholder="Enter video link" runat="server"></asp:TextBox>
                
                <asp:Label ID="lbl11" runat="server" Text="Upload Video File:" Visible="False"></asp:Label>
                <asp:FileUpload ID="fileUpload1" CssClass="form-control" runat="server" Visible="False" />
            </div>
            
            <div class="form-group">
               <asp:Label ID="lbl3" runat="server" Text="Description :" ></asp:Label>
                <asp:TextBox ID="txtVideoDescriptionFile" CssClass="form-control" placeholder="Enter video description" TextMode="MultiLine" Rows="3" runat="server" ></asp:TextBox>
            </div>
            <div class="form-group mt-3">
                <asp:Button class="btn btn-success" ID="btnuploadlink" runat="server" Text="Upload Link" OnClick="btnuploadlink_Click" />
            </div>
        
            <div class="form-group mt-3">
                <asp:Button class="btn btn-success" ID="btnuploadfile" runat="server" Text="Upload File" Visible="False" OnClick="btnuploadfile_Click" />
            </div>
    </div>
</asp:Content>

