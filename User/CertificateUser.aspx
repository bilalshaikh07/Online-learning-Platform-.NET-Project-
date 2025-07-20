<%@ Page Title="" Language="C#" MasterPageFile="~/User/UserMasterPage.master" AutoEventWireup="true" CodeFile="CertificateUser.aspx.cs" Inherits="User_CertificateUser" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <!DOCTYPE html>
    <html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Certificate of Completion</title>

        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" />
        
        <style>
            body {
                font-family: Arial, sans-serif;
                background-color: #f4f7fc;
                padding-top: 50px;
            }

            .certificate-container {
                background-color: #fff;
                border: 2px solid #336699;
                border-radius: 10px;
                padding: 40px;
                width: 100%;
                max-width: 800px;
                margin: auto;
                box-sizing: border-box;
                position: relative;
            }

            .certificate-border {
                border: 2px solid #8fbc8f;
                padding: 30px;
                border-radius: 8px;
            }

            .certificate-content {
                text-align: center;
            }

            .certificate-title {
                font-family: 'Brush Script MT', cursive;
                font-size: 2.5em;
                color: #336699;
                margin-bottom: 20px;
            }

            .presented-to {
                font-size: 1em;
                color: #555;
                margin-bottom: 10px;
            }

            .recipient-name {
                font-size: 1.8em;
                font-weight: bold;
                color: #222;
                margin-bottom: 15px;
                text-decoration: underline;
            }

            .for-completing {
                font-size: 1em;
                color: #555;
                margin-bottom: 10px;
            }

            .course-name {
                font-size: 1.4em;
                font-weight: bold;
                color: #333;
                margin-bottom: 30px;
            }

            .signature-area {
                display: flex;
                justify-content: space-between;
                margin-top: 30px;
                font-size: 0.9em;
                color: #555;
            }

            .director-info {
                text-align: left;
            }

            .duration-info {
                text-align: right;
            }

            .seal {
                margin-top: 40px;
                width: 60px;
                height: 60px;
                background-color: #f0ad4e;
                border-radius: 50%;
                display: flex;
                justify-content: center;
                align-items: center;
                color: white;
                font-size: 2em;
                margin-left: auto;
                margin-right: auto;
                position: relative;
                z-index: 1;
            }

            .seal svg {
                width: 30px;
                height: 30px;
                fill: white;
                z-index: 1;
            }

            @media print {
                body * {
                    visibility: hidden;
                }

                .certificate-container,
                .certificate-container * {
                    visibility: visible;
                }

                .certificate-container {
                    position: relative;
                    left: 0;
                    top: 0;
                    margin: 0 auto;
                    page-break-inside: avoid;
                }

                .btn, .btn-lg, .text-center {
                    display: none !important;
                }

                @page {
                    size: A4 landscape;
                    margin: 1cm;
                }

                html, body {
                    width: 100%;
                    height: 100%;
                    margin: 0;
                    padding: 0;
                    overflow: visible;
                }
            }
        </style>
    </head>
    <body>
        <div class="certificate-container">
            <div class="certificate-border">
                <div class="certificate-content">
                    <h1 class="certificate-title">Certificate of Completion</h1>
                    <p class="presented-to">PRESENTED TO</p>
                    <h2 class="recipient-name">
                        <asp:Label ID="lblname" runat="server"></asp:Label>
                    </h2>
                    <p class="for-completing">for completing the</p>
                    <h3 class="course-name">
                        <asp:Label ID="lblcoursename" runat="server"></asp:Label>
                    </h3>
                    <div class="signature-area">
                        <div class="director-info">
                            <div style="border-top: 1px solid #ccc; padding-top: 5px; margin-right: 20px;">Amit Sir</div>
                            <div style="font-size: 0.8em;">Director</div>
                        </div>
                        <div class="duration-info">
                            <div style="border-top: 1px solid #ccc; padding-top: 5px; margin-left: 20px;">Course Duration</div>
                            <asp:Label ID="lblduration" runat="server"></asp:Label> months
                        </div>
                    </div>
                    <div class="seal mt-4">
                        <svg viewBox="0 0 24 24">
                            <path d="M12 17.27L18.18 21L16.54 13.97L22 9.24L14.81 8.62L12 3L9.19 8.62L2 9.24L7.46 13.97L5.82 21L12 17.27Z"/>
                        </svg>
                    </div>
                </div>
            </div>
        </div>

        <div class="text-center mt-4">
            <asp:Button ID="btnPrint" runat="server" Text="Print Certificate" CssClass="btn btn-success btn-lg" OnClientClick="printCertificate(); return false;" />
        </div>

        <script type="text/javascript">
            function printCertificate() {
                var printBtn = document.getElementById('<%= btnPrint.ClientID %>');
                printBtn.style.display = 'none';

                window.print();

                setTimeout(function () {
                    printBtn.style.display = 'inline-block';
                }, 1000);
            }
        </script>
    </body>
    </html>
</asp:Content>
