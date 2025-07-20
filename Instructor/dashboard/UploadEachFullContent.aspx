<%@ Page Title="" Language="C#" MasterPageFile="~/Instructor/dashboard/instructorDashMasterPage.master" AutoEventWireup="true" CodeFile="UploadEachFullContent.aspx.cs" Inherits="Instructor_dashboard_UploadEachFullContent" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
      <style>
        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
            font-family: Arial, sans-serif;
        }

        th, td {
            padding: 12px;
            text-align: left;
            border: 1px solid #ddd;
        }

        th {
            background-color: #4CAF50;
            color: white;
            font-weight: bold;
        }

        tr:nth-child(even) {
            background-color: #f2f2f2;
        }

        tr:hover {
            background-color: #ddd;
        }

        h1 {
            color: #333;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            font-size: 24px;
            margin-bottom: 20px;
        }

        .table-container {
            overflow-x: auto;
        }

        .table-container table {
            width: 100%;
            min-width: 600px;
        }

        .btn-learning {
        background-color: #007BFF; 
        color: white;
        border: 1px solid #007BFF; 
        padding: 10px 20px; 
        font-size: 16px; 
        font-weight: bold; 
        border-radius: 5px; 
        cursor: pointer; 
        transition: background-color 0.3s ease, border-color 0.3s ease;
    }

        .img1{
     width: 146px;
    height: 115px;
    margin: 7px;
        }
        .cr {
                display: flex;
                 justify-content: center;
                align-items: center;
            
        }
    </style>

   <h1>YOUR UPLOADED COURSE LIST </h1>

    <asp:Panel ID="Panel1" runat="server" HorizontalAlign="Center" ScrollBars="Both">
        <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
        <HeaderTemplate>
            <table border="1">
                <tr style=" background:silver; color:white; font-weight:bold">
                    <td>Course </td>
                    <td>Price</td>
                    <td>Auther By</td>
                    <td>Options</td>
                </tr>
             
        </HeaderTemplate>
        <ItemTemplate>
            <tr>
                <td class="cr"><img class="img1" src="../../thumbnailImg/<%#Eval("thimg")%>" /> <div class="desc"> <%#Eval("Coursename") %>  <br /> <%#Eval("Description") %> </div>  </td>
                <td><%#Eval("Finalamount") %></td>
                <td><%#Eval("Authername") %></td>
                <td> <a href="UploadPerCourseVideo.aspx?ciid=<%# Eval("cidd") %>" class="btn-learning"><i class="fas fa-cloud-upload-alt nav-icon"></a> <br /><br />
                    <a href="EditPerCourseVideo.aspx?ciid=<%# Eval("cidd") %>" class="btn-learning" ><i class="fas fa-edit nav-icon"></i></a> 
                </td>
            </tr>
        </ItemTemplate>
        <FooterTemplate>
           </table>
        </FooterTemplate>
    </asp:Repeater>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Inventry_ModuleDBConnectionString %>" ></asp:SqlDataSource>
    </asp:Panel>
</asp:Content>

