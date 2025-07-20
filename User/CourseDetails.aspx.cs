using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration; 

public partial class User_CourseDetails : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        // Retrieve the 'id' from the query string
        string cid = Request.QueryString["cid"];
        string courseId = Request.QueryString["cid"]; 


        // Check if the 'id' is provided
        if (!string.IsNullOrEmpty(cid))
        {
            // Call the method to check if the user exists
            bool userExists = CheckIfUserExists(cid);

            // Display appropriate message or redirect
            if (userExists)
            {
                Response.Redirect("available.aspx?cid=" + courseId);   // Redirect if the user exists
            }
            else
            {
                // You can show a message if the user does not exist, for example:
                // lblMessage.Text = "User not found!";
            }
        }
    }

    private bool CheckIfUserExists(string cid)
    {
        bool exists = false;
        string cusid = Session["id"].ToString(); 
        // Using 'using' block to ensure that resources are disposed correctly
       // SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["LIS"]);
       // string connectionString = "Server=DESKTOP-5GRV1IH; Initial Catalog=online_class; Integrated Security=true";

        using (SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["LIS"]))
        {
        
                // Open the connection
                con.Open();

                // Define the SQL query (use the correct schema if necessary)
                string query = "SELECT COUNT(*) FROM purchase_course WHERE cid = @UserId and cusid = @id";

                using (SqlCommand cmd = new SqlCommand(query, con))
                {
                    // Add the parameter to prevent SQL injection
                    cmd.Parameters.AddWithValue("@UserId", cid);
                    cmd.Parameters.AddWithValue("@id", cusid); 

                    // Execute the query and check the result
                    int count = (int)cmd.ExecuteScalar();

                    if (count > 0)
                    {
                        exists = true;
                    }
                }
            }
     
        

        return exists;
    }
}

