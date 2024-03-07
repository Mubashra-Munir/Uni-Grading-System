using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Uni_Grading_System
{
    public partial class add_student : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-LG56L0B\SQLEXPRESS;Initial Catalog=UniGrading;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnSubmit_Click(object sender,EventArgs e)
        {
            try
            {

                string name = txtName.Text;
                string email = txtEMail.Text;
                string passwor = txtPassword.Text;
                string age = txtAge.Text;
                string phone = txtPhone.Text;
                string dateOfBirth = TetxtDate.Text;
                string address = txtAddress.Text;
                string gender = rblGender.SelectedValue;


                string query = "INSERT INTO Student_tbl VALUES (@Name, @Email, @Password, @Age, @Phone, @DOB, @Address, @Gender)";

                SqlCommand cmd = new SqlCommand(query, con);
                cmd.CommandType = CommandType.Text;
                cmd.Parameters.AddWithValue("@Name", txtName.Text);
                cmd.Parameters.AddWithValue("@Email", email);
                cmd.Parameters.AddWithValue("@Password", passwor);
               
                cmd.Parameters.AddWithValue("@Age", age);
                cmd.Parameters.AddWithValue("@Phone", phone);
                cmd.Parameters.AddWithValue("@DOB", dateOfBirth);
                cmd.Parameters.AddWithValue("@Address", address);
                cmd.Parameters.AddWithValue("@Gender", gender);


                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
                Cleartext();

                Response.Write("<script>alert('Student Add Successfully!');</script>");

            }
            catch(Exception ex)
            {
                throw ex;
            }
        }
        public void Cleartext()
        {
            try
            {
                txtName.Text = string.Empty;
                txtEMail.Text = string.Empty;
                txtAddress.Text = string.Empty;
                txtAge.Text = string.Empty;
                txtPhone.Text = string.Empty;
                txtPassword.Text = string.Empty;
                
                rblGender.SelectedIndex = -1;
                TetxtDate.Text = string.Empty;


            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
    }
}