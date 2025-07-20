using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Web.Services;

public partial class Instructor_dashboard_Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        lblInstructorName.Text = Session["INSTRUfname"].ToString();
        lblInstructorEmail.Text = Session["INSTRUemail"].ToString();
        int idd = Convert.ToInt32(Session["INSTRUid"]);

        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["LIS"]);
        con.Open();

        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = @"SELECT SUM(finalamount) AS famt, COUNT(p.cid) AS cnt
                            FROM CourseData c 
                            INNER JOIN purchase_course p ON c.cid = p.cid 
                            WHERE c.idInstructor = @id";

        cmd.Parameters.AddWithValue("@id", idd);
        cmd.Connection = con;

        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.Read())
        {
            lblTotalIncome.Text = dr.IsDBNull(0) ? "0" : dr.GetInt32(0).ToString();
            lblTotalStudents.Text = dr.IsDBNull(1) ? "0" : dr.GetInt32(1).ToString();
        }

        con.Close();
    }

    public class CourseSales
    {
        public string CourseName { get; set; }
        public decimal TotalSales { get; set; }
    }

    [WebMethod(EnableSession = true)]
    public static List<CourseSales> GetCourseSalesData()
    {
        List<CourseSales> list = new List<CourseSales>();

        int instructorId = Convert.ToInt32(HttpContext.Current.Session["INSTRUid"]);
        string connStr = ConfigurationManager.AppSettings["LIS"];

        using (SqlConnection con = new SqlConnection(connStr))
        {
            string query = @"SELECT c.coursename, SUM(c.finalamount) AS TotalSales
                             FROM CourseData c
                             JOIN purchase_course p ON c.cid = p.cid
                             WHERE c.idInstructor = @id
                             GROUP BY c.coursename";

            SqlCommand cmd = new SqlCommand(query, con);
            cmd.Parameters.AddWithValue("@id", instructorId);
            con.Open();

            SqlDataReader dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                list.Add(new CourseSales
                {
                    CourseName = dr["coursename"].ToString(),
                    TotalSales = Convert.ToDecimal(dr["TotalSales"])
                });
            }
        }

        return list;
    }
}
