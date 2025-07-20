using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Instructor_dashboard_EditPerCourseVideo : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnretrieveVideoInfo_Click(object sender, EventArgs e)
    {
        string videoNumber = txtVideoNumber.Text;
        int cid = Convert.ToInt32(Request.QueryString["ciid"]);

        // Check if the video number is empty or invalid
        if (string.IsNullOrEmpty(videoNumber))
        {
            lblMessage.Text = "Please enter a video number.";
            return;
        }

        // SQL query to count the total number of videos for the course
        string countQuery = "SELECT COUNT(*) FROM CourseUpload WHERE cid = @cidd";

        int totalVideos = 0;

        using (SqlConnection conn = new SqlConnection(ConfigurationManager.AppSettings["LIS"]))
        {
            SqlCommand countCmd = new SqlCommand(countQuery, conn);
            countCmd.Parameters.AddWithValue("@cidd", cid);

            try
            {
                conn.Open();
                totalVideos = (int)countCmd.ExecuteScalar(); // Get total count of videos for the course
            }
            catch (Exception ex)
            {
                lblMessage.Text = "An error occurred while fetching the video count: " + ex.Message;
                return;
            }
        }

        // Display total number of videos
        lblTotalVideos.Text = "Total available videos : " + totalVideos.ToString();

        // SQL query to retrieve video data from the database
        string query = "SELECT title, description, cvidadress FROM CourseUpload WHERE numOfvid = @VideoNumber and cid = @cidd";

        using (SqlConnection conn = new SqlConnection(ConfigurationManager.AppSettings["LIS"]))
        {
            SqlCommand cmd = new SqlCommand(query, conn);
            cmd.Parameters.AddWithValue("@VideoNumber", videoNumber);
            cmd.Parameters.AddWithValue("@cidd", cid);

            try
            {
                conn.Open();
                SqlDataReader reader = cmd.ExecuteReader();

                if (reader.Read()) // Check if data exists
                {
                    // Clear any previous error message
                    lblMessage.Text = string.Empty;

                    // Populate the fields with the retrieved data
                    txtVideoTitle.Text = reader["title"].ToString();
                    txtVideoDescription.Text = reader["description"].ToString();
                    txtaddressVideo.Text = reader["cvidadress"].ToString();
                }
                else
                {
                    lblMessage.Text = "Video not found.";
                }
            }
            catch (Exception ex)
            {
                lblMessage.Text = "An error occurred while retrieving video information: " + ex.Message;
            }
        }
    }
    protected void btnUpdateVideo_Click(object sender, EventArgs e)
    {
        string videoNumber = txtVideoNumber.Text;
        string videoTitle = txtVideoTitle.Text;
        string videoDescription = txtVideoDescription.Text;
        string videoUrl = txtaddressVideo.Text;
        int cid = Convert.ToInt32(Request.QueryString["ciid"]);

        // Check if the video number or any field is empty
        if (string.IsNullOrEmpty(videoNumber) || string.IsNullOrEmpty(videoTitle) || string.IsNullOrEmpty(videoDescription) || string.IsNullOrEmpty(videoUrl))
        {
            lblMessage.Text = "All fields are required.";
            return;
        }

        // SQL query to update the video details in the database
        string query = "UPDATE CourseUpload SET title = @Title, description = @Description, cvidadress = @VideoUrl WHERE numOfvid = @VideoNumber AND cid = @cidd";

        using (SqlConnection conn = new SqlConnection(ConfigurationManager.AppSettings["LIS"]))
        {
            SqlCommand cmd = new SqlCommand(query, conn);
            cmd.Parameters.AddWithValue("@Title", videoTitle);
            cmd.Parameters.AddWithValue("@Description", videoDescription);
            cmd.Parameters.AddWithValue("@VideoUrl", videoUrl);
            cmd.Parameters.AddWithValue("@VideoNumber", videoNumber);
            cmd.Parameters.AddWithValue("@cidd", cid);

  
            
            try
            {
                conn.Open();
                int rowsAffected = cmd.ExecuteNonQuery();

                if (rowsAffected > 0)
                {
                    lblMessage.Text = "Video details updated successfully.";
                }
                else
                {
                    lblMessage.Text = "Failed to update video details.";
                }
            }
            catch (Exception ex)
            {
                lblMessage.Text = "An error occurred: " + ex.Message;
            }

         
        }

        txtVideoTitle.Text = " ";
        txtVideoDescription.Text = " ";
        txtaddressVideo.Text = " ";
    }
    protected void btnDeleteVideo_Click(object sender, EventArgs e)
    {
        string videoNumber = txtVideoNumber.Text;
        int cid = Convert.ToInt32(Request.QueryString["ciid"]);

        // Check if the video number is empty
        if (string.IsNullOrEmpty(videoNumber))
        {
            lblMessage.Text = "Please enter a video number to delete.";
            return;
        }

        // SQL query to delete the video record from the database
        string query = "DELETE FROM CourseUpload WHERE numOfvid = @VideoNumber AND cid = @cidd";

        using (SqlConnection conn = new SqlConnection(ConfigurationManager.AppSettings["LIS"]))
        {
            SqlCommand cmd = new SqlCommand(query, conn);
            cmd.Parameters.AddWithValue("@VideoNumber", videoNumber);
            cmd.Parameters.AddWithValue("@cidd", cid);

            try
            {
                conn.Open();
                int rowsAffected = cmd.ExecuteNonQuery();

                if (rowsAffected > 0)
                {
                    lblMessage.Text = "Video deleted successfully.";
                    // Clear the fields after deletion
                    txtVideoTitle.Text = string.Empty;
                    txtVideoDescription.Text = string.Empty;
                    txtaddressVideo.Text = string.Empty;

                }
                else
                {
                    lblMessage.Text = "Failed to delete the video. Video not found.";
                }
            }
            catch (Exception ex)
            {
                lblMessage.Text = "An error occurred: " + ex.Message;
            }
        }
    }
}