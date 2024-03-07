using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Uni_Grading_System
{
    public partial class GradingSchemeForm : System.Web.UI.Page
    {
        string con = @"Data Source=DESKTOP-LG56L0B\SQLEXPRESS;Initial Catalog=UniGrading;Integrated Security=True";
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnUpload_Click(object sender, EventArgs e)
        {
            try
            {

                using(SqlConnection connection = new SqlConnection(con))
                {
                    connection.Open();
                    string query = "INSERT INTO grading_scheme_tbl (class, subject, assessmentType, totalMarks, passingMarks) VALUES (@class, @subject, @assessmentType, @totalMarks, @passingMarks)";
                    SqlCommand cmd = new SqlCommand(query, connection);

                    cmd.Parameters.AddWithValue("@class", txtClass.Text);
                    cmd.Parameters.AddWithValue("@subject", txtSubject.Text);
                    cmd.Parameters.AddWithValue("@assessmentType", GetSelectedAssessmentType());
                    cmd.Parameters.AddWithValue("@totalMarks", txtTotalMarks.Text);
                    cmd.Parameters.AddWithValue("@passingMarks", txtPassingMarks.Text);

                    cmd.ExecuteNonQuery();
                }
                Response.Write("<script>alert('Grading Scheme Added Successfully!');</script>");
                ClearForm();
            
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('An error occurred while adding the grading scheme.');</script>");
                throw ex;
            }
        }
        private string GetSelectedAssessmentType()
        {
            if (radioAssignments.Checked) return "Assignments";
            if (radioQuizzes.Checked) return "Quizzes";
            if (radiomidterm.Checked) return "Midterm";
            if (radiofinalterm.Checked) return "FinalTerm";
            return string.Empty;
        }

        private void ClearForm()
        {
            txtClass.Text = string.Empty;
            txtSubject.Text = string.Empty;
            radioAssignments.Checked = false;
            radioQuizzes.Checked = false;
            radiomidterm.Checked = false;
            radiofinalterm.Checked = false;
            txtTotalMarks.Text = string.Empty;
            txtPassingMarks.Text = string.Empty;
        }
    }
}