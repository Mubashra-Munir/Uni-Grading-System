using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Uni_Grading_System
{
    public partial class ViewAttendenceForm : System.Web.UI.Page
    {
        string conString = @"Data Source=DESKTOP-LG56L0B\SQLEXPRESS;Initial Catalog=UniGrading;Integrated Security=True";

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindGridView();
            }
        }
        private void BindGridView()
        {
            // Connection string


            using (SqlConnection con = new SqlConnection(conString))
            {
                // SQL query to retrieve attendance records
                string query = "SELECT a.AttendanceID,a.Date,s.Name AS StudentName,a.Description,a.Status FROM Attendance a INNER JOIN student_tbl s ON a.StudentID = s.ID";

                using (SqlCommand cmd = new SqlCommand(query, con))
                {
                    con.Open();
                    SqlDataAdapter da = new SqlDataAdapter(cmd);
                    DataTable dt = new DataTable();
                    da.Fill(dt);

                    GridViewAttendance.DataSource = dt;
                    GridViewAttendance.DataBind();
                }
            }
        }
    }
}