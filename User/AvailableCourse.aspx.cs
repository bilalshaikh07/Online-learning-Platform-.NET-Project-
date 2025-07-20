using System;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class User_AvailableCourse : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        // If it's not a postback, bind the courses.
        if (!IsPostBack)
        {
            // Check if a search term exists in ViewState
            if (ViewState["SearchText"] != null)
            {
                // Retrieve and use the stored search term
                string searchText = ViewState["SearchText"].ToString();
                // Set the SqlDataSource select command based on the search term
                SqlDataSource1.SelectCommand = "SELECT * FROM [CourseData] WHERE [coursename] LIKE '%' + @searchText + '%'";
                SqlDataSource1.SelectParameters.Clear();
                SqlDataSource1.SelectParameters.Add("searchText", searchText);
            }
            else
            {
                // Load all courses if there's no search term stored in ViewState
                SqlDataSource1.SelectCommand = "SELECT * FROM [CourseData]";
            }

            // Bind the data to the Repeater
            Repeater1.DataSource = SqlDataSource1;
            Repeater1.DataBind();
        }
    }

    // Event handler for the search button click event
    protected void btnsearch_Click(object sender, EventArgs e)
    {
        // Get the search text from the textbox
        string searchText = txtsearch.Text.Trim();

        // If there's text in the search box, filter the courses
        if (!string.IsNullOrEmpty(searchText))
        {
            // Modify the SelectCommand to include the search condition
            SqlDataSource1.SelectCommand = "SELECT * FROM [CourseData] WHERE [coursename] LIKE '%' + @searchText + '%'";
            SqlDataSource1.SelectParameters.Clear();
            SqlDataSource1.SelectParameters.Add("searchText", searchText);

            // Save the search term in ViewState so it can persist across postbacks
            ViewState["SearchText"] = searchText;
        }
        else
        {
            // If the search box is empty, show all courses
            SqlDataSource1.SelectCommand = "SELECT * FROM [CourseData]";
            ViewState["SearchText"] = null; // Clear any previously stored search term
        }

        // Rebind the data to the Repeater
        Repeater1.DataSource = SqlDataSource1;
        Repeater1.DataBind();
        
    }
}
