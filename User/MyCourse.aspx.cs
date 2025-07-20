using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration; 

public partial class User_MyCourse : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        int cusid = Convert.ToInt32(Session["id"]);
        SqlDataSource1.SelectCommand = "SELECT c.coursename AS Coursename, c.description AS Description, c.finalamount AS Finalamount, c.authername AS Authername, c.thumnailimg AS thimg, c.cid AS cid " +
                               "FROM Registration r " +
                               "INNER JOIN purchase_course p ON r.id = p.cusid " +
                               "INNER JOIN CourseData c ON p.cid = c.cid " +
                               "WHERE p.cusid = " + cusid + " " +
                               "ORDER BY c.cid DESC";

  
    }
    protected void btnlearning_Click(object sender, EventArgs e)
    {
        Response.Redirect("LearningPage.aspx");
    }
    
}