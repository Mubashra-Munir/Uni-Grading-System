﻿using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Uni_Grading_System
{
    public partial class ViewTimeTableForm : System.Web.UI.Page
    {
        string con = @"Data Source=DESKTOP-LG56L0B\SQLEXPRESS;Initial Catalog=UniGrading;Integrated Security=True";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindTimeTable();
            }
        }
        private void BindTimeTable()
        {
            try
            {

                using (SqlConnection connection = new SqlConnection(con))
                {
                    connection.Open();

                    string query = "Select * from Time_tbl";
                    using (SqlCommand command = new SqlCommand(query, connection))
                    {
                        // Execute the query and get the results in a DataTable
                        DataTable eventsDataTable = new DataTable();
                        using (SqlDataReader reader = command.ExecuteReader())
                        {
                            eventsDataTable.Load(reader);
                        }

                        // Bind the events data to the GridView
                        GridViewTimeTbale.DataSource = eventsDataTable;
                        GridViewTimeTbale.DataBind();
                    }
                }
            }
            catch (Exception ex)
            {

                throw ex;
            }
        }

    }
}