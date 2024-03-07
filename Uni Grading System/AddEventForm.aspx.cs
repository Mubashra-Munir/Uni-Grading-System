using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Globalization;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Uni_Grading_System
{
    public partial class AddEventForm : System.Web.UI.Page
    {
        string con = @"Data Source=DESKTOP-LG56L0B\SQLEXPRESS;Initial Catalog=UniGrading;Integrated Security=True";
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnAddEvent_Click(object sender, EventArgs e)

        {
            string title = txtTitle.Text;
            string date = txtDate.Text;
            string startTime =txtStartTime.Text;
            string endTime = txtEndTime.Text;
            string location = txtLocation.Text;
            string description = txtDescription.Text;




            DateTime startDateTime = DateTime.ParseExact(startTime, "HH:mm", CultureInfo.InvariantCulture);
            DateTime ENdTimeDateTime = DateTime.ParseExact(endTime, "HH:mm", CultureInfo.InvariantCulture);



            string formattedFromTime = startDateTime.ToString("HH:mm tt");
            string formattedToTime = ENdTimeDateTime.ToString("HH:mm tt");

            using (SqlConnection connection = new SqlConnection(con))
            {
                connection.Open();
                string query = "INSERT INTO Events (Title, Date, StartTime, EndTime, Location, Description) " +
                               "VALUES (@Title, @Date, @StartTime, @EndTime, @Location, @Description)";

                using (SqlCommand cmd = new SqlCommand(query, connection))
                {
                    cmd.Parameters.AddWithValue("@Title", title);
                    cmd.Parameters.AddWithValue("@Date", date);
                    cmd.Parameters.AddWithValue("@StartTime", formattedFromTime);
                    cmd.Parameters.AddWithValue("@EndTime", formattedToTime);
                    cmd.Parameters.AddWithValue("@Location", location);
                    cmd.Parameters.AddWithValue("@Description", description);

                    cmd.ExecuteNonQuery();
                    Response.Write("<script>alert('Event saved successfully');</script>");
                }
            }
            ClearForm();
        }
        private void ClearForm()
        {
            txtTitle.Text = string.Empty;
            txtDate.Text = string.Empty;
            txtStartTime.Text = string.Empty;
            txtEndTime.Text = string.Empty;
            txtLocation.Text = string.Empty;
            txtDescription.Text = string.Empty;
        }

    }
}