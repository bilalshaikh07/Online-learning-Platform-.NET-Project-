<%@ Page Title="" Language="C#" MasterPageFile="~/Instructor/dashboard/instructorDashMasterPage.master" AutoEventWireup="true" CodeFile="PurcasedStudent.aspx.cs" Inherits="Instructor_dashboard_PurcasedStudent" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <asp:Panel ID="Panel1" runat="server" CssClass="container my-4">

        <!-- Search and Export Buttons -->
        <div class="row mb-3">
            <div class="col-md-6">
                <asp:TextBox ID="txtSearch" runat="server" CssClass="form-control" Placeholder="Search Course or Student Name" />
            </div>
            <div class="col-md-6 text-end">
                <asp:Button ID="btnSearch" runat="server" CssClass="btn btn-primary me-2" Text="Search" OnClick="btnSearch_Click" />
                <asp:Button ID="btnExportExcel" runat="server" CssClass="btn btn-success" Text="Download List (Excel)" OnClick="btnExportExcel_Click" />
            </div>
        </div>

        <!-- Table display -->
        <div class="table-responsive" style="max-height: 600px; overflow-y: auto;">
            <asp:Repeater ID="Repeater1" runat="server">
                <HeaderTemplate>
                    <table class="table table-bordered table-hover table-striped align-middle text-center">
                        <thead class="table-dark">
                            <tr>
                                <th scope="col">Course Name</th>
                                <th scope="col">Student ID</th>
                                <th scope="col">Student Name</th>
                                <th scope="col">Email</th>
                                <th scope="col">Mobile</th>
                            </tr>
                        </thead>
                        <tbody>
                </HeaderTemplate>
                <ItemTemplate>
                    <tr>
                        <td><%# Eval("coursename") %></td>
                        <td><%# Eval("student_id") %></td>
                        <td><%# Eval("student_name") %></td>
                        <td><%# Eval("email") %></td>
                        <td><%# Eval("mobile") %></td>
                    </tr>
                </ItemTemplate>
                <FooterTemplate>
                        </tbody>
                    </table>
                </FooterTemplate>
            </asp:Repeater>
        </div>

    </asp:Panel>

</asp:Content>
