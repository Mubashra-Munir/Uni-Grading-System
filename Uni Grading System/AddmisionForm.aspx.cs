using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text.RegularExpressions;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Uni_Grading_System
{
    public partial class AddmisionForm : System.Web.UI.Page
    {
        string con = @"Data Source=DESKTOP-LG56L0B\SQLEXPRESS;Initial Catalog=UniGrading;Integrated Security=True";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Fetch student names from the database and bind them to the dropdown list
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
        
        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            string studentName = ddlStudentName.Text;
            string date = txtAdmissionDate.Text;
            string Grade = txtClass.Text;
            string address = txtAddress.Text;
            string contect = txtContect.Text;
            string email = txtEmail.Text;
            string parentName = txtParentName.Text;
            string parentContect = txtParentContect.Text;
            string addmissionFee = txtfee.Text;

            using(SqlConnection connection = new SqlConnection(con))
            {
                connection.Open();
                string query = "Insert into addmission_tbl(studentName, date, grade, address, contect, email, parentName, parentContect, fee)" +
                    "VALUES(@studentName, @date, @grade, @address, @contect, @email, @parentName , @parentContect, @fee)";

                using(SqlCommand cmd = new SqlCommand(query, connection))
                {
                    cmd.Parameters.AddWithValue("@studentName", studentName);
                    cmd.Parameters.AddWithValue("@date", date);
                    cmd.Parameters.AddWithValue("@grade", Grade);
                    cmd.Parameters.AddWithValue("@address", address);
                    cmd.Parameters.AddWithValue("@contect", contect);
                    cmd.Parameters.AddWithValue("@email", email);
                    cmd.Parameters.AddWithValue("@parentName", parentName);
                    cmd.Parameters.AddWithValue("@parentContect", parentContect);
                    cmd.Parameters.AddWithValue("@fee", addmissionFee);

                    cmd.ExecuteNonQuery();
                    Clear();
                    Response.Write("<script>alert('Admission saved successfully');</script>");
                }
            }

        }
        private void Clear()
        {
            ddlStudentName.SelectedIndex = -1;
            txtAddress.Text = string.Empty;
            txtAdmissionDate.Text = "";
            txtClass.Text = "";
            txtContect.Text = "";
            txtEmail.Text = "";
            txtParentContect.Text = "";
            txtParentName.Text = "";


        }
    }
}