using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Globalization;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Uni_Grading_System
{
    public partial class AddTimeForm : System.Web.UI.Page
    {
        string con = @"Data Source=DESKTOP-LG56L0B\SQLEXPRESS;Initial Catalog=UniGrading;Integrated Security=True";
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                // Populate the dropdown list with teachers' names
                List<string> teacherNames = GetTeachersNames();
                teacherNames.Insert(0, "Select Teacher");
                ddlTeacher.DataSource = teacherNames;
                ddlTeacher.DataBind();


               
            }
        }
        private List<string> GetTeachersNames()
        {
            List<string> teacherNames = new List<string>();
           

            using (SqlConnection connection = new SqlConnection(con))
            {
                connection.Open();
                string query = "SELECT Name FROM Teacher_tbl";
                using (SqlCommand command = new SqlCommand(query, connection))
                {
                    using (SqlDataReader reader = command.ExecuteReader())
                    {
                        while (reader.Read())
                        {
                            string teacherName = reader["Name"].ToString();
                            teacherNames.Add(teacherName);
                        }
                    }
                }
            }

            return teacherNames;
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {

            Response.Write("<script>alert('Time table added Successfully');</script>");

            string day = ddlDay.SelectedValue;
            string forTime = txtForTime.Text;
            string toTime = txttoTime.Text;
            string classSection = txtClass.Text;
            string course = txtCourse.Text;
            string techer = ddlTeacher.SelectedValue;
            string details = txtAdditionalInfo.Text;
            string location = txtRoom.Text;

                      
                if (SaveTimeTable(day, forTime, toTime, classSection, course, techer, location, details))
                {
                    Response.Write("<script>alert('Time Table saved successfully');</script>");
                }
                else
                {
                    Response.Write("<script>alert('Failed to save Time Table');</script>");
                }
            

              



        }

        private bool SaveTimeTable(string day, string fromTime,string toTime, string course, string classSection, string teacher, string room, string additionalInfo)
        {
            try
            {
                DateTime fromTimeDateTime = DateTime.ParseExact(fromTime, "HH:mm", CultureInfo.InvariantCulture);
                DateTime toTimeDateTime = DateTime.ParseExact(toTime, "HH:mm", CultureInfo.InvariantCulture);


                string formattedFromTime = fromTimeDateTime.ToString("HH:mm tt");
                string formattedToTime = toTimeDateTime.ToString("HH:mm tt");


                using (SqlConnection connection = new SqlConnection(con))
                {
                    connection.Open();
                    string query = "INSERT INTO Time_tbl (day, fromTime, toTime,course, class, teacher, location, details) " +
                                   "VALUES (@day, @fromTime,@toTime, @course, @class, @teacher, @location, @details)";
                    using(SqlCommand cmd = new SqlCommand(query, connection))
                    {
                        // Add parameters to the query to prevent SQL injection
                        cmd.Parameters.AddWithValue("@day", day);
                        cmd.Parameters.AddWithValue("@fromTime", formattedFromTime);
                        cmd.Parameters.AddWithValue("@toTime", formattedToTime);
                        cmd.Parameters.AddWithValue("@course", course);
                        cmd.Parameters.AddWithValue("@class", classSection);
                        cmd.Parameters.AddWithValue("@teacher", teacher);
                        cmd.Parameters.AddWithValue("@location", room);
                        cmd.Parameters.AddWithValue("@details", additionalInfo);

                        // Execute the SQL command
                        cmd.ExecuteNonQuery();
                        clear();
                    }
                    connection.Close();
                }
                return true;
            }
            catch (Exception ex)
            {

                throw ex;

                return false;
            }
        }

        private void clear()
        {
            ddlDay.SelectedIndex = -1;
            ddlTeacher.SelectedIndex = -1;
            txtForTime.Text = string.Empty;
            txttoTime.Text = string.Empty;
            txtRoom.Text = string.Empty;
            txtCourse.Text = string.Empty;
            txtClass.Text = string.Empty;
            txtAdditionalInfo.Text = string.Empty;
        }
    }
}