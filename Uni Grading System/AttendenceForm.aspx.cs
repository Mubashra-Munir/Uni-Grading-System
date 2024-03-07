using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Uni_Grading_System
{
    public partial class AttendenceForm : System.Web.UI.Page
    {
        string con = @"Data Source=DESKTOP-LG56L0B\SQLEXPRESS;Initial Catalog=UniGrading;Integrated Security=True";

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindStudentNames();
            }
        }
        private void BindStudentNames()
        {
            using (SqlConnection connection = new SqlConnection(con))
            {
                string query = "SELECT ID, Name FROM Student_tbl";
                SqlCommand cmd = new SqlCommand(query, connection);

                try
                {
                    connection.Open();
                    SqlDataReader reader = cmd.ExecuteReader();
                    ddlStudentName.DataSource = reader;
                    ddlStudentName.DataTextField = "Name";
                    ddlStudentName.DataValueField = "ID";
                    ddlStudentName.DataBind();
                    ddlStudentName.Items.Insert(0, new ListItem("Select Student", "0"));
                    reader.Close();
                }
                catch (Exception ex)
                {
                    // Handle any exceptions here
                    // For simplicity, you can display a message in the dropdown if there's an error
                    ddlStudentName.Items.Clear();
                    ddlStudentName.Items.Add(new ListItem("Error fetching student names", "0"));
                }
            }
        }

        protected void btnUpload_Click(object sender, EventArgs e)
        {
            try
            {
                using(SqlConnection connection = new SqlConnection(con))
                {
                    connection.Open();
                    string query = "INSERT INTO Attendance (Date, StudentID, Status, Description) " +
                                   "VALUES (@Date, @StudentID, @Status, @Description)";

                    SqlCommand cmd = new SqlCommand(query, connection);
                    cmd.Parameters.AddWithValue("@Date", txtDate.Text);
                    cmd.Parameters.AddWithValue("@StudentID", ddlStudentName.SelectedValue);
                    cmd.Parameters.AddWithValue("@Status", GetSelectedStatus());
                    cmd.Parameters.AddWithValue("@Description", txtDescription.Text);

                    cmd.ExecuteNonQuery();
                    ClearFields();
                    Response.Write("<script>alert('Attendance Added Successfully!');</script>");
                }
            }
            
            catch (Exception ex)
            {

                throw ex;
            }
        }
        private string GetSelectedStatus()
        {
            if (radioPresent.Checked)
                return "Present";
            else if (radioAbsent.Checked)
                return "Absent";
            else if (radioLeave.Checked)
                return "Leave";
            else
                return string.Empty;
        }
        protected void ClearFields()
        {
            txtDate.Text = string.Empty;
            ddlStudentName.SelectedIndex = 0; // Reset dropdown to default selection
            radioPresent.Checked = true; // Reset radio buttons to default selection
            txtDescription.Text = string.Empty;
        }
    }
}