<%@ Page Title="" Language="C#" MasterPageFile="~/User/UserMasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="User_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <style>
        .profile-header {
            text-align: center;
            margin-bottom: 30px;
        }

        .profile-header h2 {
            font-weight: bold;
        }

        .card-body {
            font-size: 1.1em;
        }

        .form-control-plaintext {
            font-size: 1.1em;
        }

        .user-info td {
            padding: 10px;
            vertical-align: middle;
        }

        .progress-bar-container {
            margin-top: 10px;
        }
    </style>

    <div class="container-fluid mt-5">
        <!-- Profile Card -->
        <div class="card w-100">
            <div class="card-header bg-primary text-white">
                <h4 class="card-title">Profile Information</h4>
            </div>
            <div class="card-body">
                <table class="table table-borderless user-info">
                    <tr>
                        <td><strong>Name:</strong></td>
                        <td>
                            <asp:TextBox ID="txtname" runat="server" Enabled="False" CssClass="form-control-plaintext" />
                        </td>
                    </tr>
                    <tr>
                        <td><strong>Email:</strong></td>
                        <td>
                            <asp:TextBox ID="txtemail" runat="server" Enabled="False" CssClass="form-control-plaintext" />
                        </td>
                    </tr>
                    <tr>
                        <td><strong>Phone:</strong></td>
                        <td>
                            <asp:TextBox ID="txtph" runat="server" Enabled="False" CssClass="form-control-plaintext" />
                        </td>
                    </tr>
                </table>
            </div>
        </div>

        <!-- Course Progress Chart -->
        <div class="card w-100">
            <div class="card-header bg-success text-white">
                <h4 class="card-title text-center">Course Progress Status</h4>
            </div>
            <div class="card-body">
                <canvas id="progressChart" width="100%" height="50"></canvas>
            </div>
        </div>
    </div>

    <!-- Chart.js CDN -->
    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>

    <!-- Inline Script for Chart -->
    <script type="text/javascript">
        window.onload = function () {
            fetch("Default.aspx/GetCourseProgressStatus", {
                method: "POST",
                headers: { "Content-Type": "application/json" },
                body: JSON.stringify({})
            })
                .then(response => response.json())
                .then(result => {
                    const data = result.d;

                    const labels = data.map(x => x.CourseName);
                    const progressValues = data.map(x => x.CompletionPercentage);
                    const backgroundColors = data.map(x => x.CompletionPercentage === 100 ? "#4CAF50" : "#FFC107");

            new Chart(document.getElementById("progressChart"), {
                type: "bar",
                data: {
                    labels: labels,
                    datasets: [{
                        label: "Course Completion",
                        data: progressValues,
                        backgroundColor: backgroundColors,
                        borderWidth: 1
                    }]
                },
                options: {
                    scales: {
                        y: {
                            beginAtZero: true,
                            ticks: {
                                callback: function (value) {
                                    return value + "%";
                                },
                                stepSize: 10,
                                max: 100
                            },
                            title: {
                                display: true,
                                text: "Completion Percentage"
                            }
                        }
                    },
                    plugins: {
                        legend: {
                            display: false
                        }
                    }
                }
            });
        });
        };
    </script>
</asp:Content>
