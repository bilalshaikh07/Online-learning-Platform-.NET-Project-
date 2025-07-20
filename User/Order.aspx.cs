using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class User_Order : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        int cusid = Convert.ToInt32(Session["id"]);
        SqlDataSource1.SelectCommand = "SELECT c.coursename AS Coursename, " +
                                       "CONVERT(VARCHAR(10), c.coursedate, 105) AS Dateofcourse, " +
                                       "c.finalamount AS Finalamount, " +
                                       "c.authername AS Authername, " +
                                       "c.thumnailimg AS thimg, " +
                                       "c.cid AS cid " +
                                       "FROM Registration r " +
                                       "INNER JOIN purchase_course p ON r.id = p.cusid " +
                                       "INNER JOIN CourseData c ON p.cid = c.cid " +
                                       "WHERE p.cusid = " + cusid + " " +
                                       "ORDER BY c.cid DESC";



    }
    protected void btncertif_Command(object sender, CommandEventArgs e)
    {
        int cid = Convert.ToInt32(e.CommandArgument);
        int cusid = Convert.ToInt32(Session["id"]);

        int totalVideos = 0;
        int watchedVideos = 0;

        using (SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["LIS"]))
        {
            con.Open();

            // Total videos in the course
            SqlCommand cmdTotal = new SqlCommand("SELECT COUNT(*) FROM CourseUpload WHERE cid = @cid", con);
            cmdTotal.Parameters.AddWithValue("@cid", cid);
            totalVideos = (int)cmdTotal.ExecuteScalar();

            // Watched videos by this customer
            SqlCommand cmdWatched = new SqlCommand("SELECT COUNT(*) FROM WatchedVideo WHERE courseid = @cid AND customerid = @cusid", con);
            cmdWatched.Parameters.AddWithValue("@cid", cid);
            cmdWatched.Parameters.AddWithValue("@cusid", cusid);
            watchedVideos = (int)cmdWatched.ExecuteScalar();
        }

        if (totalVideos > 0 && watchedVideos == totalVideos)
        {
            // All videos watched — redirect to Certificate
            Response.Redirect("CertificateUser.aspx?cid=" + cid);
        }
        else
        {
            // Not all videos watched — redirect to NoCertificate page
            Response.Redirect("Notcertificate.aspx?cid=" + cid);
        }
    }
}