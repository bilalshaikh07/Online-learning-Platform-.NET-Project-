using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class User_available : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
          //  string ciddd = Request.QueryString["cid"];
    }
    protected void btnlearning_Click(object sender, EventArgs e)
    {
        string ciddd = Request.QueryString["cid"];
        Response.Redirect("LearningPage.aspx?cid=" + ciddd);
    }
}