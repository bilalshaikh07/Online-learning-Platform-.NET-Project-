using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Instructor_dashboard_instructorDashMasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        lblname.Text = Session["INSTRUfname"].ToString();
        lblemail.Text = Session["INSTRUemail"].ToString();
        string dist = Session["INSTRUdistrict"].ToString();
        string state = Session["INSTRUstate"].ToString();
        lbldiststate.Text = dist + " " + state; 

    }
    protected void btnRetrieveVideo_Click(object sender, EventArgs e)
    {

    }
}
