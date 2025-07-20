using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Instructor_dashboard_UploadEachFullContent : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        int Inid = Convert.ToInt32(Session["INSTRUid"]);
        SqlDataSource1.SelectCommand = "select c.cid as cidd, c.coursename as Coursename, c.description as Description, c.finalamount as Finalamount, c.authername as Authername, c.thumnailimg as thimg  from  CourseData c where idInstructor = " + Inid + "";
  
    }
}