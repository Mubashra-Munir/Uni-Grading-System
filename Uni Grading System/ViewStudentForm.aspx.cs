using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Uni_Grading_System
{
    public partial class ViewStudentForm : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-LG56L0B\SQLEXPRESS;Initial Catalog=UniGrading;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindStudentData();
            }

        }
        protected void BindStudentData()
        {
            SqlCommand cmd = new SqlCommand("Select * from Student_tbl", con);
            DataTable dt = new DataTable();
            con.Open();
            SqlDataReader reader = cmd.ExecuteReader();
            dt.Load(reader);
            con.Close();

            GridViewStudents.DataSource = dt;
            GridViewStudents.DataBind();

        }
    }
}