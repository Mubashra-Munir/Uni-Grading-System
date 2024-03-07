using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Uni_Grading_System
{
    public partial class LoginForm : System.Web.UI.Page
    {
        string conString = @"Data Source=DESKTOP-LG56L0B\SQLEXPRESS;Initial Catalog=UniGrading;Integrated Security=True";

        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnLogin_Click(object sender,EventArgs e)
        {
            

            string name = txtUsername.Text;
            string password = txtPassword.Text;
            string userType = ddltype.Text;

            if(name=="admin@gmail.com" && password=="123" && userType == "Admin")
            {
                Response.Redirect("AdminForm.aspx");
            }
            else if (userType=="Teacher")
            {
                if (ValidateTeacher(name, password))
                {
                    Response.Redirect("TeacherDashboardForm.aspx");
                }
                else
                {
                    Response.Write("<script>alert('Invalid Teacher credentials!');</script>");
                }

            }else if (userType=="Student")
            {
                if (ValidateStudent(name, password))
                {
                    Session["email"] = name;
                    Response.Redirect("StudentDashboardForm.aspx");
                }
                else
                {
                    Response.Write("<script>alert('Invalid Student credentials!');</script>");
                }

            }

            /*
            if(name == "admin" && password == "123")
            {
                Response.Redirect("AdminForm.aspx");
            }
            else
            {

            }*/
        }
        private bool ValidateTeacher(string username, string password)
        {
            // Assuming you have a table named "Teacher" in your database
            // with columns: TeacherID, Username, Password
         

            using (SqlConnection connection = new SqlConnection(conString))
            {
                connection.Open();

                string query = "SELECT COUNT(*) FROM Teacher_tbl WHERE Email = @Email AND Password = @Password";
                using (SqlCommand command = new SqlCommand(query, connection))
                {
                    command.Parameters.AddWithValue("@Email", username);
                    command.Parameters.AddWithValue("@Password", password);

                    int count = (int)command.ExecuteScalar();

                    return count > 0;
                }
            }
        }

        private bool ValidateStudent(string username, string password)
        {
            // Assuming you have a table named "Teacher" in your database
            // with columns: TeacherID, Username, Password


            using (SqlConnection connection = new SqlConnection(conString))
            {
                connection.Open();

                string query = "SELECT COUNT(*) FROM Student_tbl WHERE Email = @Email AND Password = @Password";
                using (SqlCommand command = new SqlCommand(query, connection))
                {
                    command.Parameters.AddWithValue("@Email", username);
                    command.Parameters.AddWithValue("@Password", password);

                    int count = (int)command.ExecuteScalar();

                    return count > 0;
                }
            }
        }

    }
}