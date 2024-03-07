﻿using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Uni_Grading_System
{
    public partial class ViewTeacherForm : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-LG56L0B\SQLEXPRESS;Initial Catalog=UniGrading;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindTeacherData();
            }
        }
        protected void BindTeacherData()
        {
            SqlCommand cmd = new SqlCommand("Select * from Teacher_tbl", con);
            DataTable dt = new DataTable();
            con.Open();
            SqlDataReader reader = cmd.ExecuteReader();
            dt.Load(reader);
            con.Close();

            GridViewTeachers.DataSource = dt;
            GridViewTeachers.DataBind();

        }
    }
}