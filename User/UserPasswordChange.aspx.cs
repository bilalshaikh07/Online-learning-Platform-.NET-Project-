using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class User_UserPasswordChange : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnchangepass_Click(object sender, EventArgs e)
    {
        if (oldPassword.Text == Session["password"].ToString())
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["LIS"]);
            con.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = con;

            cmd.CommandText = "update Registration set password = @p where id =@e";
            cmd.Parameters.AddWithValue("@p", newPassword.Text);
            cmd.Parameters.AddWithValue("@e", Session["id"].ToString());

            cmd.Connection = con;
            cmd.ExecuteNonQuery();
            con.Close();
            lblChangemsg.Text = "password updated successfully!!!";
            ShowAlert("Password updated successfully!");
        }
        else
        {
            // Display error message in label if old password doesn't match
            lblChangemsg.Text = "Invalid old password.";

            // Trigger JavaScript pop-up message for invalid old password
            ShowAlert("Invalid old password.");
        }
    }
    // Method to display JavaScript alert using string concatenation
    private void ShowAlert(string message)
    {
        string script = "alert('" + message + "');"; // String concatenation instead of string interpolation
        ClientScript.RegisterStartupScript(this.GetType(), "alert", script, true);

    }
}