using System;
using System.Configuration;
using System.Data.SqlClient;
using System.Web.UI;

public partial class Instructor_dashboard_PasswordChange : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        // Logic to handle page load if needed
    }

    protected void btnchangepass_Click(object sender, EventArgs e)
    {
        // Check if the entered old password matches the one stored in the session
        if (oldPassword.Text == Session["INSTRUpassword"].ToString())
        {
            // Connection to the database
            SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["LIS"]);
            con.Open();

            // Prepare SQL command to update the password
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = con;
            cmd.CommandText = "UPDATE RegistrationInstru SET password = @p WHERE idInstructor = @e";
            cmd.Parameters.AddWithValue("@p", newPassword.Text);  // New password from the form
            cmd.Parameters.AddWithValue("@e", Session["INSTRUid"].ToString()); // Instructor ID from session

            // Execute the command to update the password
            cmd.ExecuteNonQuery();
            con.Close();

            oldPassword.Text = ""; 
            // Display success message in label
            lblChangemsg.Text = "Password updated successfully!";

            // Trigger JavaScript pop-up message
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
