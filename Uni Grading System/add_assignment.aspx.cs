using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Net;
using System.Security.Policy;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace Uni_Grading_System
{
    public partial class add_assignment : System.Web.UI.Page
    {
            SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-LG56L0B\SQLEXPRESS;Initial Catalog=UniGrading;Integrated Security=True");


        protected void Page_Load(object sender, EventArgs e)
        {
            /*SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-LG56L0B\SQLEXPRESS;Initial Catalog=UniGrading;Integrated Security=True");*/

        }
        protected void btnSubmit_Click(object sender, EventArgs e)
        {

            SaveAssignmentDatabase();
          

        }
        protected void SaveAssignmentDatabase()
        {
            /*if (fileUpload.HasFile)
            {*/

                try
                {



              
                    con.Open();
                    string query = "INSERT INTO assignment_tbl (AssignmentTitle,AssignmentType,MaxScore, DueDate, Course,AdditionalNotes,Status) " +
                                  "VALUES (@AssignmentTitle, @AssignmentType, @MaxScore, @DueDate, @Course, @AdditionalNotes,@Status)";

                
                    SqlCommand command = new SqlCommand(query, con);
/*
                    fileUpload.SaveAs(Server.MapPath("~/Uni Grading System/Assignment/") + System.IO.Path.GetFileName(fileUpload.FileName));
                    string path = "Assignment/" + System.IO.Path.GetFileName(fileUpload.FileName);
*/


                 /* string fileName = Path.GetFileName(fileUpload.FileName);
                    string path = "~/Uni Grading System/Assignment/" + fileName; */

                 /* fileUpload.SaveAs(Server.MapPath(path));                     */


                command.CommandType = CommandType.Text;
                command.Parameters.AddWithValue("@AssignmentTitle", txtTitle.Text);
                command.Parameters.AddWithValue("@AssignmentType", ddlAssignmentType.SelectedValue);
                command.Parameters.AddWithValue("@MaxScore", Convert.ToDouble(txtMaxScore.Text));
                command.Parameters.AddWithValue("@DueDate", txtDueDate.Text);
                command.Parameters.AddWithValue("@Course", ddlCourse.SelectedValue);
                command.Parameters.AddWithValue("@AdditionalNotes", txtAdditionalNotes.Text);
                command.Parameters.AddWithValue("@Status", "Pending");
                command.ExecuteNonQuery();
                con.Close();

                Response.Write("<script>alert('Assignment Add Successfully!');</script>");
                ClearFormFields();

               
                }
                catch (Exception ex)
                {

                throw ex;
                }
                
                
            //}

           /*else
            {
                Response.Write("<script>alert('Assignment Add UNSuccessfully!');</script>");
            }*/
        }

        private void ClearFormFields()
        {
            txtTitle.Text = string.Empty;
            txtAdditionalNotes.Text = string.Empty;
            txtDueDate.Text = string.Empty;
            ddlCourse.SelectedIndex = 0;
            txtMaxScore.Text = string.Empty;
            ddlAssignmentType.SelectedIndex = 0;
        }
    }
}