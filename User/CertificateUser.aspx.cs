using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class User_CertificateUser : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
       lblname.Text = Session["name"].ToString();
       
      SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["LIS"]);
      con.Open();
      SqlCommand cmd = new SqlCommand();
      cmd.Connection = con;
      cmd.CommandText = "Select cid, coursename , courseduration  From CourseData Where cid=@cidd";
      cmd.Parameters.AddWithValue("@cidd", Request.QueryString["cid"]);


      SqlDataReader rd = cmd.ExecuteReader();

      if (rd.Read())
     {
        lblcoursename.Text = rd["coursename"].ToString();
         lblduration.Text = rd["courseduration"].ToString(); 
      }

    }
}