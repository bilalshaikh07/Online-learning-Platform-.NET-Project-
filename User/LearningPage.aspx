<%@ Page Title="" Language="C#" MasterPageFile="~/User/UserMasterPage.master" AutoEventWireup="true" CodeFile="LearningPage.aspx.cs" Inherits="User_LearningPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <style>
        .video-list-container {
            padding: 20px;
            max-width: 1200px;
            margin: 0 auto;
        }

        h2 {
            text-align: center;
            margin-bottom: 20px;
        }

        .video-item {
            display: flex;
            justify-content: space-between;
            align-items: center;
            background-color: white;
            padding: 15px;
            margin-bottom: 15px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        .video-number {
            font-size: 24px;
            font-weight: bold;
            margin-right: 15px;
            color: #4CAF50;
        }

        .watch-btn {
            background-color: #4f9cfa;
            color: white;
            border: none;
            padding: 10px 20px;
            border-radius: 5px;
        }

        .watch-btn:hover {
            background-color: #45a049;
        }

        .video-modal {
            display: none;
            position: fixed;
            z-index: 1;
            left: 0;
            top: 0;
            width: 100%;
            height: 100%;
            background-color: rgba(0, 0, 0, 0.5);
            justify-content: center;
            align-items: center;
        }

        .modal-content {
            background-color: white;
            padding: 20px;
            border-radius: 8px;
            width: 90%;
            max-width: 900px;
            text-align: center;
        }

        .close-btn {
            position: absolute;
            top: 10px;
            right: 20px;
            font-size: 30px;
            cursor: pointer;
        }

        /* Progress bar styling */
        #progressBar {
            height: 25px;
            width: 0%;
            background-color: #4CAF50;
            text-align: center;
            line-height: 25px;
            color: white;
            border-radius: 5px;
        }

        .progress-container {
            width: 100%;
            background-color: #e0e0e0;
            border-radius: 5px;
            margin-bottom: 20px;
        }
    </style>

    <!-- Progress bar section -->
    <div class="video-list-container">
        <h2>Course Progress</h2>
        <div class="progress-container">
            <div id="progressBar">0%</div>
        </div>
    </div>

    <!-- Video list -->
    <asp:Panel ID="Panel1" runat="server" ScrollBars="Both">
        <asp:Repeater ID="videoRepeater" runat="server" DataSourceID="SqlDataSource1" OnItemDataBound="videoRepeater_ItemDataBound">
            <ItemTemplate>
                <div class="video-list-container">
                    <div class="video-item">
                        <div class="video-info">
                            <div class="video-number"><%# Eval("numOfvid") %></div>
                            <div class="video-details">
                                <h3 class="video-title"><%# Eval("title") %></h3>
                                <p class="video-description"><%# Eval("description") %></p>
                            </div>
                        </div>
                        <asp:Button class="watch-btn" ID="btnWatch" runat="server" OnClick="btnWatch_Click" Text="Watch" />
                    </div>
                </div>
            </ItemTemplate>
        </asp:Repeater>
    </asp:Panel>

    <!-- Modal for video preview -->
    <div id="videoModal" class="video-modal">
        <div class="modal-content">
            <span class="close-btn" onclick="closeModal()">&times;</span>
            <div id="videoContainer"></div>
        </div>
    </div>

    <!-- Data source -->
    <asp:SqlDataSource ID="SqlDataSource1" runat="server"
        ConnectionString="<%$ ConnectionStrings:Inventry_ModuleDBConnectionString %>"
        SelectCommand="SELECT * FROM [CourseUpload] WHERE ([cid] = @cid) ORDER BY [numOfvid]">
        <SelectParameters>
            <asp:QueryStringParameter Name="cid" QueryStringField="cid" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>

    <script type="text/javascript">
        function showVideo(videoUrl) {
            var modal = document.getElementById('videoModal');
            var videoContainer = document.getElementById('videoContainer');

            if (videoUrl.indexOf("youtube.com") !== -1 || videoUrl.indexOf("youtu.be") !== -1) {
                videoContainer.innerHTML = "<iframe width='560' height='315' src='" + videoUrl + "' frameborder='0' allowfullscreen></iframe>";
            } else if (videoUrl.endsWith(".mp4")) {
                videoContainer.innerHTML = "<video width='560' height='315' controls><source src='../Instructor/dashboard/UploadedPerVideo/" + videoUrl + "' type='video/mp4'>Your browser does not support the video tag.</video>";
            } else {
                videoContainer.innerHTML = "Unsupported video format.";
            }

            modal.style.display = 'block';
        }

        function closeModal() {
            document.getElementById('videoModal').style.display = 'none';
            document.getElementById('videoContainer').innerHTML = "";
        }

        function updateProgressBar(percent) {
            var bar = document.getElementById('progressBar');
            bar.style.width = percent + '%';
            bar.innerText = percent + '%';
        }
    </script>

</asp:Content>
