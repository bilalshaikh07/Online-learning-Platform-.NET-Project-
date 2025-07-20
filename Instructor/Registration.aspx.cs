using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class Instructor_Registration : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand cmd;

    protected void Page_Load(object sender, EventArgs e)
    {
       
    }
    protected void btnRestration_Click(object sender, EventArgs e)
    {
        con = new SqlConnection(ConfigurationManager.AppSettings["LIS"]);
        cmd = new SqlCommand();
        con.Open();
        cmd.CommandText = @"Insert Into RegistrationInstru (fname, lname , mobile, district, state, education, experience, email ,password)
                        Values (@fname, @lname, @mobile, @district, @state, @education, @experience, @email, @password)";
       

        cmd.Parameters.AddWithValue("@fname", txtfname.Text);
        cmd.Parameters.AddWithValue("@lname", txtlname.Text);
        cmd.Parameters.AddWithValue("@mobile", txtphone.Text);
        cmd.Parameters.AddWithValue("@district", txtDistrict.Text);
        cmd.Parameters.AddWithValue("@state", txtState.Text);
        cmd.Parameters.AddWithValue("@education", txtEducation.Text);
        cmd.Parameters.AddWithValue("@experience", txtExperience.Text);
        cmd.Parameters.AddWithValue("@email", txtEmail.Text);
        cmd.Parameters.AddWithValue("@password", txtPassword.Text);

        cmd.Connection = con;
        int n = cmd.ExecuteNonQuery();
        if (n > 0)
        {
            string script = @"<script>
                                Swal.fire({
                                  title: 'Thank You For Registration!',
                                  text: 'click ok to continue!',
                                  icon: 'success'
                                });
                             </script>";

            ScriptManager.RegisterStartupScript(this, GetType(), "ShowAlert", script, false);


            txtfname.Text = "";
           txtlname.Text = "";
           txtphone.Text = "";
           txtDistrict.Text = "";
           txtState.Text= "";
           txtEducation.Text = "";
           txtExperience.Text= "";
           txtEmail.Text = "";
           txtPassword.Text = "";
      

        }
        else
        {
            Response.Write("<script>alert('Check All Data');</script>");
        }
    }
}