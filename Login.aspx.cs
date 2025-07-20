using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click1(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["LIS"]);
        con.Open();
        SqlCommand cmd = new SqlCommand();
        cmd.Connection = con;
        cmd.CommandText = "Select id, name ,email, password  From Registration Where email=@email And password=@pass";
        cmd.Parameters.AddWithValue("@email", txtemail.Text);
        cmd.Parameters.AddWithValue("@pass", txtpass.Text);
       

        SqlDataReader rd = cmd.ExecuteReader();

        if (rd.Read())
        {


            string password = rd["password"].ToString();
            int userId = Convert.ToInt32( rd["id"]);
            string emaill = rd["email"].ToString();
            String name = rd["name"].ToString(); 
           // Session["id"] = userId;
            con.Close();
            Session.Add("id", userId);
            Session.Add("password", password);
            Session.Add("email", emaill);
            Session.Add("name" , name );

            Response.Redirect("User/Default.aspx");
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