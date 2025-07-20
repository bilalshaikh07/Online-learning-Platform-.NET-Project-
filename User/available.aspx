<%@ Page Title="" Language="C#" MasterPageFile="~/User/UserMasterPage.master" AutoEventWireup="true" CodeFile="available.aspx.cs" Inherits="User_available" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1"  >
        <ItemTemplate>
       <div class="py-2">
         <!-- Login -->
         <div class="container p-5 mb-lg-5 text-center">
            <img src="../images/avatar2.png" class="img-fluid w-1" alt="Edotree" style=" width: 266px; border-radius: 50%;">
            <h1 class="text-black display-3 fw-bold"> <asp:Label ID="lblname" runat="server"></asp:Label>You already<br> purchased this course</h1>
            <p class="lead mb-5">Check your courses status in <a class="text-primary" href="instructor-my-courses.html">My Courses</a><br>  about next steps information.</p>
             <asp:Button class="btn btn-primary" ID="btnlearning" runat="server"  Text="Start Learning" OnClick ="btnlearning_Click" />
         </div>
      </div>
        </ItemTemplate>
    </asp:Repeater>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Inventry_ModuleDBConnectionString %>" SelectCommand="SELECT * FROM [purchase_course] WHERE (([cid] = 1) AND ([cusid] = 2))">
        <SelectParameters>
            <asp:QueryStringParameter Name="cid" QueryStringField="cid" Type="Int32" />
            <asp:SessionParameter Name="cusid" SessionField="id" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>

