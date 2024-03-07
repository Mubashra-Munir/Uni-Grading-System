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
    public partial class UploadResultForm : System.Web.UI.Page
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

        protected void txtTotalMarks_TextChanged(object sender, EventArgs e)
        {
            CalculateAndSetGrade();
        }

        protected void txtObtainMarks_TextChanged(object sender, EventArgs e)
        {
            CalculateAndSetGrade();
        }

        private void CalculateAndSetGrade()
        {
            if (int.TryParse(txtTotalMarks.Text, out int totalMarks) && int.TryParse(txtObtainMarks.Text, out int obtainMarks))
            {
                double percentage = ((double)obtainMarks / totalMarks) * 100;
                if (percentage >= 90)
                {
                    txtgrade.Text = "A+";
                }
                else if (percentage >= 80)
                {
                    txtgrade.Text = "A";
                }
                else if (percentage >= 70)
                {
                    txtgrade.Text = "B";
                }
                else if (percentage >= 60)
                {
                    txtgrade.Text = "C";
                }
                else
                {
                    txtgrade.Text = "Fail";
                }
            }
            else
            {
                txtgrade.Text = "";
            }
               
            
        }

        protected void btnUpload_Click(object sender, EventArgs e)
        {
            try
            {
                using(SqlConnection connection = new SqlConnection(con))
                {
                    connection.Open();
                    string query = "INSERT INTO Result_tbl (StudentID, date, rollNo, tMarks, oMarks, grade, status) VALUES (@StudentID, @Date, @RollNo, @TotalMarks, @ObtainMarks, @Grade, @ResultStatus)";

                    using (SqlCommand command = new SqlCommand(query, connection))
                    {
                        command.Parameters.AddWithValue("@StudentID", ddlStudentName.SelectedValue);
                        command.Parameters.AddWithValue("@Date", txtDate.Text);
                        command.Parameters.AddWithValue("@RollNo", txtRollNo.Text);
                        command.Parameters.AddWithValue("@TotalMarks", txtTotalMarks.Text);
                        command.Parameters.AddWithValue("@ObtainMarks", txtObtainMarks.Text);
                        command.Parameters.AddWithValue("@Grade", txtgrade.Text);
                        command.Parameters.AddWithValue("@ResultStatus", ddlStatus.SelectedValue);

                        
                        command.ExecuteNonQuery();
                    }
                    Response.Write("<script>alert('Result Upload Successfully!');</script>");
                    ClearForm();
                }
            

            }
            catch (Exception ex)
            {

                throw ex;
            }
        }
        private void ClearForm()
        {
            ddlStudentName.SelectedIndex = 0;
            txtDate.Text = string.Empty;
            txtRollNo.Text = string.Empty;
            txtTotalMarks.Text = string.Empty;
            txtObtainMarks.Text = string.Empty;
            txtgrade.Text = string.Empty;
            ddlStatus.SelectedIndex = 0;
        }
    }
}