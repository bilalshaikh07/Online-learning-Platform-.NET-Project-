using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration; 

public partial class Instructor_loginstruct : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btninst_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["LIS"]);
        con.Open();
        SqlCommand cmd = new SqlCommand();
        cmd.Connection = con;
        cmd.CommandText = "Select idInstructor, fname, lname, district, state ,email, password  From RegistrationInstru Where email=@email And password=@pass";
        cmd.Parameters.AddWithValue("@email", txtemail.Text);
        cmd.Parameters.AddWithValue("@pass", txtpass.Text);


        SqlDataReader rd = cmd.ExecuteReader();

        if (rd.Read())
        {


            string password = rd["password"].ToString();
            string userId = rd["idInstructor"].ToString();
            string emaill = rd["email"].ToString();
            string name = rd["fname"].ToString();
            string district = rd["district"].ToString();
            string state = rd["state"].ToString(); 
            // Session["id"] = userId;
            con.Close();
            Session.Add("INSTRUid", userId);
            Session.Add("INSTRUpassword", password);
            Session.Add("INSTRUemail", emaill);
            Session.Add("INSTRUfname", name);
            Session.Add("INSTRUdistrict", district);
            Session.Add("INSTRUstate", state);

            Response.Redirect("dashboard/Default.aspx");
        }

        else
        {
            string script = @"<script>
                                Swal.fire({
                                  title: 'Oops...!',
                                  text: 'Invalid UserName or Password!',
                                  icon: 'error'
                                });
                             </script>";

            ScriptManager.RegisterStartupScript(this, GetType(), "ShowAlert", script, false);

            txtemail.Text = "";
            txtpass.Text = "";

        }
    }
}