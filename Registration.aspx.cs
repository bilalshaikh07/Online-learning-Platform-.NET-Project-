using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;


public partial class Registration : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand cmd;
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        con = new SqlConnection(ConfigurationManager.AppSettings["LIS"]);
        cmd = new SqlCommand();
        con.Open();
        cmd.CommandText = @"Insert Into Registration (name,email,mobile,password)
                        Values (@name,@email,@mobile,@password)";
      
        cmd.Parameters.AddWithValue("@name", txtname.Text);
        cmd.Parameters.AddWithValue("@email", txtemail.Text);
        cmd.Parameters.AddWithValue("@mobile", txtmobile.Text);
        cmd.Parameters.AddWithValue("@password", txtpass.Text);
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


            txtname.Text = "";
            txtemail.Text = "";
            txtmobile.Text = "";
            txtpass.Text = "";
            
        }
        else
        {
            Response.Write("<script>alert('Check All Data');</script>");
        }
    }
}