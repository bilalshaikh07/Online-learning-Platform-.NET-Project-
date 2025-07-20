using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Web;
using System.Web.Services;
using System.Web.Script.Services;

public partial class User_Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["LIS"]);
        con.Open();
        SqlCommand cmd = new SqlCommand();
        cmd.Connection = con;

        cmd.CommandText = "Select name ,email, mobile From Registration Where email=@email";
        cmd.Parameters.AddWithValue("@email", Session["email"].ToString());

        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.Read())
        {
            txtname.Text = dr.GetString(0);
            txtemail.Text = dr.GetString(1);
            txtph.Text = dr.GetString(2);
        }

        con.Close();
    }

    public class CourseProgressStatus
    {
        public string CourseName { get; set; }
        public int CompletionPercentage { get; set; }
    }

    public class CourseInfo
    {
        public int Cid { get; set; }
        public string Name { get; set; }
    }

    [WebMethod(EnableSession = true)]
    [ScriptMethod(ResponseFormat = ResponseFormat.Json)]
    public static List<CourseProgressStatus> GetCourseProgressStatus()
    {
        List<CourseProgressStatus> list = new List<CourseProgressStatus>();
        string email = HttpContext.Current.Session["email"].ToString();
        string connStr = ConfigurationManager.AppSettings["LIS"];

        using (SqlConnection con = new SqlConnection(connStr))
        {
            con.Open();

            string getCourses = @"SELECT DISTINCT c.cid, c.coursename
                                  FROM CourseData c
                                  JOIN WatchedVideo w ON c.cid = w.courseid
                                  WHERE w.customerid = (SELECT id FROM Registration WHERE email = @userEmail)";

            SqlCommand courseCmd = new SqlCommand(getCourses, con);
            courseCmd.Parameters.AddWithValue("@userEmail", email);
            SqlDataReader dr = courseCmd.ExecuteReader();

            List<CourseInfo> courses = new List<CourseInfo>();
            while (dr.Read())
            {
                courses.Add(new CourseInfo
                {
                    Cid = Convert.ToInt32(dr["cid"]),
                    Name = dr["coursename"].ToString()
                });
            }
            dr.Close();

            foreach (var course in courses)
            {
                int total = 0, watched = 0;

                SqlCommand totalCmd = new SqlCommand("SELECT COUNT(*) FROM CourseUpload WHERE cid = @cid", con);
                totalCmd.Parameters.AddWithValue("@cid", course.Cid);
                total = (int)totalCmd.ExecuteScalar();

                SqlCommand watchedCmd = new SqlCommand(@"SELECT COUNT(*) FROM WatchedVideo 
                                                         WHERE courseid = @cid AND customerid = 
                                                         (SELECT id FROM Registration WHERE email = @userEmail)", con);
                watchedCmd.Parameters.AddWithValue("@cid", course.Cid);
                watchedCmd.Parameters.AddWithValue("@userEmail", email);
                watched = (int)watchedCmd.ExecuteScalar();

                int completionPercentage = (total > 0) ? (watched * 100) / total : 0;

                list.Add(new CourseProgressStatus
                {
                    CourseName = course.Name,
                    CompletionPercentage = completionPercentage
                });
            }
        }

        return list;
    }
}
