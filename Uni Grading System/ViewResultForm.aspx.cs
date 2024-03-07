using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Uni_Grading_System
{
    public partial class ViewResultForm : System.Web.UI.Page
    {
        string con = @"Data Source=DESKTOP-LG56L0B\SQLEXPRESS;Initial Catalog=UniGrading;Integrated Security=True";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindGridView();
            }
        }
        private void BindGridView()
        {
           
            using (SqlConnection conection = new SqlConnection(con))
            {
                conection.Open();
                string query = "select r.StudentID, s.Name AS StudentName, r.Date, r.rollNo, r.tMarks, r.oMarks, r.Grade, r.status FROM Result_tbl r INNER JOIN Student_tbl s ON r.StudentID = s.ID";
                using (SqlCommand cmd = new SqlCommand(query, conection))
                {
                    SqlDataAdapter da = new SqlDataAdapter(cmd);
                    DataTable dt = new DataTable();
                    da.Fill(dt);
                    GridViewResults.DataSource = dt;
                    GridViewResults.DataBind();
                }
            }
        }
    }
}