<%@ Page Title="" Language="C#" MasterPageFile="~/Instructor/dashboard/instructorDashMasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="Instructor_dashboard_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <style>
        .container {
            width: 100%;
        }

        .card-body {
            padding: 0.5rem;
        }
        .card-body {
            width:500px; 
        }
    </style>

    <div class="container mt-5">
        <h2 class="text-center mb-4">Instructor Dashboard</h2>

        <div class="row">
            <!-- Instructor Information Card -->
            <div class="col-md-4">
                <div class="card">
                    <div class="card-header bg-primary text-white">
                        <h4>Instructor Information</h4>
                    </div>
                    <div class="card-body">
                        <p><strong>Name:</strong> <asp:Label ID="lblInstructorName" runat="server" Text=""></asp:Label></p>
                        <p><strong>Email:</strong> <asp:Label ID="lblInstructorEmail" runat="server" Text=""></asp:Label></p>
                    </div>
                </div>
            </div>

            <!-- Total Income Card -->
            <div class="col-md-4">
                <div class="card">
                    <div class="card-header bg-success text-white">
                        <h4>Total Income</h4>
                    </div>
                    <div class="card-body">
                        <p><strong> ₹ </strong><asp:Label ID="lblTotalIncome" runat="server" Text=""></asp:Label></p>
                    </div>
                </div>
            </div>

            <!-- Total Students Card -->
            <div class="col-md-4">
                <div class="card">
                    <div class="card-header bg-warning text-dark">
                        <h4>Total Students</h4>
                    </div>
                    <div class="card-body">
                        <p><asp:Label ID="lblTotalStudents" runat="server" Text=""></asp:Label></p>
                    </div>
                </div>
            </div>
        </div>

        <!-- Chart Section -->
        <div class="row mt-4">
            <div class="col-12">
                <div class="card">
                    <div class="card-header bg-secondary text-white">
                        <h4>Course-wise Sales Chart</h4>
                    </div>
                    <div class="card-body">
                        <canvas id="courseSalesChart" width="60" height="60"></canvas>
                    </div>
                </div>
            </div>
        </div>

        <!-- Courses Taught Table -->
        <div class="row mt-4">
            <div class="col-12">
                <div class="card">
                    <div class="card-header bg-info text-white">
                        <h4>Courses Taught</h4>
                    </div>
                    <div class="card-body">
                        <asp:GridView ID="gvCourses" runat="server" AutoGenerateColumns="False" CssClass="table table-bordered" DataKeyNames="cid" DataSourceID="SqlDataSource1">
                            <Columns>
                                <asp:BoundField DataField="coursename" HeaderText="Course Name" SortExpression="coursename" />
                                <asp:BoundField DataField="cid" HeaderText="Course ID" SortExpression="cid" ReadOnly="True" />
                                <asp:BoundField DataField="finalamount" HeaderText="Final Amount" SortExpression="finalamount" />
                                <asp:BoundField DataField="authername" HeaderText="Author Name" SortExpression="authername" />
                            </Columns>
                        </asp:GridView>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Inventry_ModuleDBConnectionString %>" SelectCommand="SELECT [coursename], [cid], [finalamount], [authername] FROM [CourseData] WHERE ([idInstructor] = @idInstructor)">
                            <SelectParameters>
                                <asp:SessionParameter Name="idInstructor" SessionField="INSTRUid" Type="Int32" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Chart.js Script -->
    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
    <script>
        window.onload = function () {
            fetch("Default.aspx/GetCourseSalesData", {
                method: "POST",
                headers: {
                    "Content-Type": "application/json"
                },
                body: JSON.stringify({})
            })
                .then(response => response.json())
                .then(result => {
                    const data = result.d;
                    const labels = data.map(item => item.CourseName);
                    const sales = data.map(item => item.TotalSales);

            new Chart(document.getElementById("courseSalesChart"), {
                type: 'pie',
                data: {
                    labels: labels,
                    datasets: [{
                        label: 'Total Sales (₹)',
                        data: sales,
                        backgroundColor: [
                            '#FF6384',
                            '#36A2EB',
                            '#FFCE56',
                            '#4BC0C0',
                            '#9966FF',
                            '#FF9F40'
                        ],
                        borderWidth: 1
                    }]
                },
                options: {
                    responsive: true,
                    plugins: {
                        legend: {
                            position: 'bottom'
                        },
                        tooltip: {
                            callbacks: {
                                label: function (context) {
                                    return `${context.label}: ₹${context.parsed}`;
                                }
                            }
                        }
                    }
                }
            });
        });
        };
    </script>

</asp:Content>
