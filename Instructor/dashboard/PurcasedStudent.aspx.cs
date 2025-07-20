using System;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.IO;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Instructor_dashboard_PurcasedStudent : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            BindStudentData();
        }
    }

    private void BindStudentData(string searchTerm = "")
    {
        int instructorId = Convert.ToInt32(Session["INSTRUid"]);
        string query = @"SELECT cd.coursename, r.id AS student_id, r.name AS student_name, r.email, r.mobile 
                         FROM [online_class].[dbo].[CourseData] cd 
                         JOIN [online_class].[dbo].[purchase_course] pc ON cd.cid = pc.cid 
                         JOIN [online_class].[dbo].[Registration] r ON pc.cusid = r.id 
                         WHERE cd.idInstructor = @InstructorId";

        if (!string.IsNullOrEmpty(searchTerm))
        {
            query += " AND (cd.coursename LIKE @Search OR r.name LIKE @Search)";
        }

        query += " ORDER BY cd.coursename, r.name";

        string connStr = ConfigurationManager.ConnectionStrings["Inventry_ModuleDBConnectionString"].ConnectionString;
        using (SqlConnection con = new SqlConnection(connStr))
        {
            using (SqlCommand cmd = new SqlCommand(query, con))
            {
                cmd.Parameters.AddWithValue("@InstructorId", instructorId);
                if (!string.IsNullOrEmpty(searchTerm))
                    cmd.Parameters.AddWithValue("@Search", "%" + searchTerm + "%");

                using (SqlDataAdapter da = new SqlDataAdapter(cmd))
                {
                    DataTable dt = new DataTable();
                    da.Fill(dt);
                    Repeater1.DataSource = dt;
                    Repeater1.DataBind();
                }
            }
        }
    }

    protected void btnSearch_Click(object sender, EventArgs e)
    {
        string searchTerm = txtSearch.Text.Trim();
        BindStudentData(searchTerm);
    }

    protected void btnExportExcel_Click(object sender, EventArgs e)
    {
        int instructorId = Convert.ToInt32(Session["INSTRUid"]);
        string query = @"SELECT cd.coursename, r.id AS student_id, r.name AS student_name, r.email, r.mobile 
                         FROM [online_class].[dbo].[CourseData] cd 
                         JOIN [online_class].[dbo].[purchase_course] pc ON cd.cid = pc.cid 
                         JOIN [online_class].[dbo].[Registration] r ON pc.cusid = r.id 
                         WHERE cd.idInstructor = @InstructorId
                         ORDER BY cd.coursename, r.name";

        string connStr = ConfigurationManager.ConnectionStrings["Inventry_ModuleDBConnectionString"].ConnectionString;
        using (SqlConnection con = new SqlConnection(connStr))
        {
            using (SqlCommand cmd = new SqlCommand(query, con))
            {
                cmd.Parameters.AddWithValue("@InstructorId", instructorId);

                using (SqlDataAdapter da = new SqlDataAdapter(cmd))
                {
                    DataTable dt = new DataTable();
                    da.Fill(dt);
                    ExportToExcel(dt);
                }
            }
        }
    }

    // Method to export DataTable to Excel using GridView (.xls format)
    private void ExportToExcel(DataTable dt)
    {
        GridView gv = new GridView();
        gv.DataSource = dt;
        gv.DataBind();

        Response.Clear();
        Response.Buffer = true;
        Response.AddHeader("content-disposition", "attachment;filename=PurchasedStudents.xls");
        Response.Charset = "";
        Response.ContentType = "application/vnd.ms-excel";

        using (StringWriter sw = new StringWriter())
        {
            using (HtmlTextWriter hw = new HtmlTextWriter(sw))
            {
                gv.RenderControl(hw);
                Response.Output.Write(sw.ToString());
                Response.Flush();
                Response.End();
            }
        }
    }

    public override void VerifyRenderingInServerForm(Control control)
    {
        // Required for GridView export
    }
}
