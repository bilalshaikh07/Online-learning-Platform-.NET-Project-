using System;
using System.Data.SqlClient;
using System.Configuration;
using System.Web.UI;

public partial class User_Successful_Purchase : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string cusid = Session["id"].ToString(); // Get user ID from session
        string name = Session["name"].ToString(); // Get user name from session
        string cid = Request.QueryString["cid"]; // Get course ID from query string

        // Optionally, you can use this label to display the user name on the page.
        // lblname.Text = name;

        // Establish database connection using connection string from Web.config
        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["LIS"]);
        con.Open();

        // Step 1: Check if the user has already purchased the course
        SqlCommand checkCmd = new SqlCommand();
        checkCmd.CommandText = "SELECT COUNT(*) FROM purchase_course WHERE cusid = @cusi AND cid = @cid";
        checkCmd.Parameters.AddWithValue("@cusi", cusid);
        checkCmd.Parameters.AddWithValue("@cid", cid);
        checkCmd.Connection = con;

        int purchaseCount = (int)checkCmd.ExecuteScalar(); // Execute the query and get the result

        if (purchaseCount > 0)
        {
            // If the count is greater than 0, the user has already purchased this course
            // Optionally, you can show a message to the user or redirect them
            Response.Write("<script>alert('You have already purchased this course.');</script>");
        }
        else
        {
            // Step 2: If not purchased, proceed to insert the purchase record
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = "INSERT INTO purchase_course (cid, cusid) VALUES(@cid, @cusi)";
            cmd.Parameters.AddWithValue("@cid", cid);
            cmd.Parameters.AddWithValue("@cusi", cusid);
            cmd.Connection = con;

            cmd.ExecuteNonQuery(); // Execute the insert query
            Response.Write("<script>alert('Course purchased successfully!');</script>");
        }

        con.Close();
    }

    // Button click to redirect to the learning page
    protected void btnlearning_Click(object sender, EventArgs e)
    {
        string c = Request.QueryString["cid"];
        Response.Redirect("LearningPage.aspx?cid=" + c);
    }
}
