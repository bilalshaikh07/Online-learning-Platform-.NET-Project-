using System;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.IO;

public partial class Instructor_dashboard_UploadCourse : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        

    }


    protected void btndatasubmit_Click(object sender, EventArgs e)
    {
        string Iid = Session["INSTRUid"].ToString();
  
            try
    {
        // Check if the file is uploaded
        if (fileuploadimg.HasFile)
        {
            // Get the file extension
            string fileExtension = Path.GetExtension(fileuploadimg.FileName).ToLower();

            // Allowed file types
            string[] allowedExtensions = { ".jpg", ".jpeg", ".png", ".gif" };

            // Validate file extension
            if (Array.IndexOf(allowedExtensions, fileExtension) == -1)
            {
                ShowAlert("Only image files are allowed (jpg, jpeg, png, gif).");
                return;
            }

            // Validate file size (max size 1 MB)
            if (fileuploadimg.PostedFile.ContentLength > 1048576) // 1MB
            {
                ShowAlert("File size should not exceed 1MB.");
                return;
            }

            // Ensure the directory exists
            string uploadDirectory = Server.MapPath("../../thumbnailImg/");
            if (!Directory.Exists(uploadDirectory))
            {
                Directory.CreateDirectory(uploadDirectory);
            }

            // Generate a unique file name to avoid overwriting
            string uniqueFileName = Guid.NewGuid().ToString() + fileExtension;

            // Save the file to the server with the new unique name
            fileuploadimg.SaveAs(Path.Combine(uploadDirectory, uniqueFileName));
            
            // Now proceed with inserting data into the database
            InsertCourseData(uniqueFileName);
        }
        else
        {
            ShowAlert("Please upload an image.");
        }
    }
    catch (Exception ex)
    {
        ShowAlert("Error: " + ex.Message);
    }
}

// Method to insert course data into the database
private void InsertCourseData(string uniqueFileName)
{
    try
    {
        using (SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["LIS"]))
        {
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = @"INSERT INTO CourseData(coursename, description, price, discount, coursedate, finalamount, fulldesc, videolink, authername, thumnailimg ,idInstructor , courseduration)
                                VALUES (@c, @des, @p, @dis, @cour, @fa, @fulldes, @videoli, @authern, @thumimg ,@Inid, @ctime)";

            cmd.Parameters.AddWithValue("@c", txtcoursename.Text);
            cmd.Parameters.AddWithValue("@des", txtshortDescription.Text);
            cmd.Parameters.AddWithValue("@p", txtprice.Text);
            cmd.Parameters.AddWithValue("@dis", txtdiscount.Text);
            cmd.Parameters.AddWithValue("@cour", txtdateofcourse.Text);
            cmd.Parameters.AddWithValue("@fa", txtfinalamount.Text);
            cmd.Parameters.AddWithValue("@fulldes", txtfulldescription.Text);
            cmd.Parameters.AddWithValue("@videoli", txtvidiolink.Text);
            cmd.Parameters.AddWithValue("@authern", txtauthername.Text);
            cmd.Parameters.AddWithValue("@thumimg", uniqueFileName);
            cmd.Parameters.AddWithValue("@Inid", Session["INSTRUid"]);
            cmd.Parameters.AddWithValue("ctime", txtduration.Text); 

            
            cmd.Connection = con;

            con.Open();

            cmd.ExecuteNonQuery();
            ShowAlert("Course data has been successfully uploaded!");


            // Method to clear form fields
            txtcoursename.Text = "";
            txtshortDescription.Text = "";
            txtprice.Text = "";
            txtdiscount.Text = "";
            txtdateofcourse.Text = "";
            txtfinalamount.Text = "";
            txtfulldescription.Text = "";
            txtvidiolink.Text = "";
            txtauthername.Text = "";
        }
    }
    catch (Exception ex)
    {
        ShowAlert("Error: " + ex.Message);
    }
}

//private void ShowAlert(string p)
//{
 //	throw new NotImplementedException();
//}
private void ShowAlert(string message)
{
    string script = @"<script>
                        Swal.fire({
                            title: 'Success!',
                            text: '" + message + @"',
                            icon: 'success',
                            confirmButtonText: 'OK'
                        }).then(function() {
                            window.location = 'Default.aspx'; // Redirect to another page or stay on the same page
                        });
                    </script>";

    ScriptManager.RegisterStartupScript(this, GetType(), "ShowAlert", script, false);
}


}


