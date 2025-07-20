using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Instructor_dashboard_UploadPerCourseVideo : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnLinkContent_Click(object sender, EventArgs e)
    {
        lbl1.Visible = true;
        lbl11.Visible = false;
        txtVideoLink.Visible = true;
        fileUpload1.Visible = false;
        btnuploadlink.Visible = true;
        btnuploadfile.Visible = false; 
    }
    protected void btnFileContent_Click(object sender, EventArgs e)
    {
        lbl1.Visible = false;
        lbl11.Visible = true;
        txtVideoLink.Visible = false;
        fileUpload1.Visible = true;
        btnuploadfile.Visible = true;
        btnuploadlink.Visible = false; 
    }

    protected void btnuploadlink_Click(object sender, EventArgs e)
    {
        string videoNumber = txtnovideo.Text;
        string videoTitle = txtTitlevid.Text;
        string videoLink = txtVideoLink.Text;
        string videoDescription = txtVideoDescriptionFile.Text;
        string CId = Request.QueryString["ciid"];
      //int iid = Convert.ToInt32(CourseId); 

        // SQL connection string (replace with your actual connection string)
       // string connStr = ConfigurationManager.ConnectionStrings["YourConnectionString"].ConnectionString;

        using (SqlConnection conn = new SqlConnection(ConfigurationManager.AppSettings["LIS"]))
        {
            conn.Open();
            string query = @"INSERT INTO CourseUpload (cvidadress, numOfvid, title, description, cid) 
                              VALUES (@vadd, @numvid, @vtitle, @desc, @cidd)";

            SqlCommand cmd = new SqlCommand(query, conn);
            cmd.Parameters.AddWithValue("@numvid", videoNumber);
            cmd.Parameters.AddWithValue("@vtitle", videoTitle);
            cmd.Parameters.AddWithValue("@vadd", videoLink);
            cmd.Parameters.AddWithValue("@desc", videoDescription);
            cmd.Parameters.AddWithValue("@cidd", CId);

           // conn.Open();
            cmd.ExecuteNonQuery();
            conn.Close();
            txtnovideo.Text = "";
            txtTitlevid.Text = "";
            txtVideoLink.Text = "";
            txtVideoDescriptionFile.Text = "";
            ShowAlert();
            // Provide feedback to the user
            // Example: Response.Write("Link uploaded successfully.");

        }
    }

    private void ShowAlert()
    {
        string script = "alert(' submited successfully ');";
        ClientScript.RegisterStartupScript(this.GetType(), "alert", script, true);
       
    }

    protected void btnuploadfile_Click(object sender, EventArgs e)
    {
        if (fileUpload1.HasFile)
        {
            string videoNumber = txtnovideo.Text;
            string videoTitle = txtTitlevid.Text;
            string videoDescription = txtVideoDescriptionFile.Text;
            string CourseId = Request.QueryString["ciid"];
            //int iid = Convert.ToInt32(CourseId); 
            // Save the file to the server (adjust the path accordingly)
            string fileName = fileUpload1.FileName;
            string filePath = Server.MapPath("~../../UploadedPerVideo/") + fileName;
            fileUpload1.SaveAs(filePath);

            // SQL connection string (replace with your actual connection string)

            using (SqlConnection conn = new SqlConnection(ConfigurationManager.AppSettings["LIS"]))
            {

                conn.Open();
                string query = @"INSERT INTO CourseUpload (cvidadress, numOfvid, title, description, cid) " +
                               "VALUES (@vadd, @numvid, @vtitle, @desc, @cidd)";

                SqlCommand cmd = new SqlCommand(query, conn);
                cmd.Parameters.AddWithValue("@numvid", videoNumber);
                cmd.Parameters.AddWithValue("@vtitle", videoTitle);
                cmd.Parameters.AddWithValue("@vadd", fileName); // Store file name in database
                cmd.Parameters.AddWithValue("@desc", videoDescription);
                cmd.Parameters.AddWithValue("@cidd", CourseId);

                
                cmd.ExecuteNonQuery();
                conn.Close();
                txtnovideo.Text = "";
                txtTitlevid.Text = "";
                txtVideoDescriptionFile.Text = "";
                // Provide feedback to the user
                // Example: Response.Write("File uploaded successfully.");
                ShowAlert();
            }
        }
        else
        {
            // Handle the case where no file is selected
            // Example: Response.Write("Please select a file to upload.");
        }
    }



}