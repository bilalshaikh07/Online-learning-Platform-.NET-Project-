using System;
using System.Configuration;
using System.Data.SqlClient;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class User_LearningPage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            CalculateAndRegisterProgressScript();
        }
    }

    protected void videoRepeater_ItemDataBound(object sender, RepeaterItemEventArgs e)
    {
        if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem)
        {
            string videoUrl = DataBinder.Eval(e.Item.DataItem, "cvidadress") as string;
            Button btnWatch = e.Item.FindControl("btnWatch") as Button;

            if (btnWatch != null)
            {
                btnWatch.CommandArgument = videoUrl;
            }
        }
    }

    protected void btnWatch_Click(object sender, EventArgs e)
    {
        Button btn = (Button)sender;
        string videoUrl = btn.CommandArgument;
        int cusid = Convert.ToInt32(Session["id"]);
        int courseid = Convert.ToInt32(Request.QueryString["cid"]);
        int numofvid = 0;

        using (SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["LIS"]))
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("SELECT numOfvid FROM CourseUpload WHERE cvidadress=@url AND cid=@cid", con);
            cmd.Parameters.AddWithValue("@url", videoUrl);
            cmd.Parameters.AddWithValue("@cid", courseid);
            SqlDataReader rd = cmd.ExecuteReader();

            if (rd.Read())
                numofvid = Convert.ToInt32(rd["numOfvid"]);
        }

        if (!HasUserWatchedVideo(cusid, courseid, numofvid))
        {
            SaveVideoWatchData(cusid, courseid, numofvid);
        }

        if (!string.IsNullOrEmpty(videoUrl))
        {
            ScriptManager.RegisterStartupScript(this, this.GetType(), "ShowVideo", "showVideo('" + videoUrl + "');", true);
        }

        CalculateAndRegisterProgressScript();
    }

    private bool HasUserWatchedVideo(int cusid, int courseid, int numofvid)
    {
        using (SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["LIS"]))
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("SELECT COUNT(*) FROM WatchedVideo WHERE customerid=@cusid AND courseid=@courseid AND videono=@videono", con);
            cmd.Parameters.AddWithValue("@cusid", cusid);
            cmd.Parameters.AddWithValue("@courseid", courseid);
            cmd.Parameters.AddWithValue("@videono", numofvid);
            return (int)cmd.ExecuteScalar() > 0;
        }
    }

    private void SaveVideoWatchData(int cusid, int courseid, int numofvid)
    {
        using (SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["LIS"]))
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("INSERT INTO WatchedVideo (customerid, courseid, videono, watchtime) VALUES (@cusid, @courseid, @videono, @watchtime)", con);
            cmd.Parameters.AddWithValue("@cusid", cusid);
            cmd.Parameters.AddWithValue("@courseid", courseid);
            cmd.Parameters.AddWithValue("@videono", numofvid);
            cmd.Parameters.AddWithValue("@watchtime", DateTime.Now);
            cmd.ExecuteNonQuery();
        }
    }

    private void CalculateAndRegisterProgressScript()
    {
        int total = 0, watched = 0;
        int cusid = Convert.ToInt32(Session["id"]);
        int courseid = Convert.ToInt32(Request.QueryString["cid"]);

        using (SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["LIS"]))
        {
            con.Open();

            SqlCommand totalCmd = new SqlCommand("SELECT COUNT(*) FROM CourseUpload WHERE cid=@cid", con);
            totalCmd.Parameters.AddWithValue("@cid", courseid);
            total = (int)totalCmd.ExecuteScalar();

            SqlCommand watchedCmd = new SqlCommand("SELECT COUNT(*) FROM WatchedVideo WHERE customerid=@cusid AND courseid=@cid", con);
            watchedCmd.Parameters.AddWithValue("@cusid", cusid);
            watchedCmd.Parameters.AddWithValue("@cid", courseid);
            watched = (int)watchedCmd.ExecuteScalar();
        }

        int percent = total > 0 ? (int)((watched / (float)total) * 100) : 0;
        ScriptManager.RegisterStartupScript(this, this.GetType(), "UpdateProgress", string.Format("updateProgressBar({0});", percent), true);
    }
}
