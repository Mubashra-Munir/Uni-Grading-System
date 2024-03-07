using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Drawing;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Uni_Grading_System
{
    public partial class AddUniForm : System.Web.UI.Page
    {
        /* string con=@"Data Source=DESKTOP-LG56L0B\SQLEXPRESS;Initial Catalog=UniGrading;Integrated Security=True";*/
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                clear();
            }
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            
            if (FileUplod1.HasFiles)
            {
                try
                {
                   /* FileUplod1.SaveAs(HttpContext.Current.Request.PhysicalApplicationPath + "Images/" + FileUplod1.FileName);
                    path = FileUplod1.FileName*/;

                    string fname = Path.GetFileName(FileUplod1.FileName);
                    FileUplod1.SaveAs(Server.MapPath("Images/") + fname);
                    using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["OnlineUniGrading"].ConnectionString))
                    {
                        con.Open();
                        SqlCommand cmd = new SqlCommand("insert into uni_tbl values ('" + txtName.Text + "','" + txtEMail.Text + "','" + txtPhone.Text + "','" + txtAddress.Text + "','" + txtDetails.Text + "','" + fname + "')", con);
                        int t = cmd.ExecuteNonQuery();
                        if (t > 0)
                        {
                            Response.Write("<script>alert('University Add Successfully!');</script>");
                        }
                    }

                }
                catch (Exception ex)
                {

                    lblMessage.Text = "The File Has not Upload  the following error oocurd " + ex.Message;
                }
            }



            /*try
            {
                using (SqlConnection sqlCon = new SqlConnection(con))
                {
                   
                    if (fileUpload.HasFile)
                    {
                        sqlCon.Open();
                        string query = "INSERT INTO uni_tbl (name,email,phone,address,details,image) VALUES (@name,@email,@phone,@address,@details,@image)";
                        SqlCommand cmd = new SqlCommand(query, sqlCon);
                     
                        fileUpload.SaveAs(Server.MapPath("~/UniImg/") + System.IO.Path.GetFileName(fileUpload.FileName));
                        string filePath = "UniImg/" + System.IO.Path.GetFileName(fileUpload.FileName);
                        cmd.Parameters.AddWithValue("@name", txtName.Text);
                        cmd.Parameters.AddWithValue("@email", txtEMail.Text);
                        cmd.Parameters.AddWithValue("@phone", txtPhone.Text);
                        cmd.Parameters.AddWithValue("@address", txtAddress.Text);
                        cmd.Parameters.AddWithValue("@details", txtDetails.Text);
                        cmd.Parameters.AddWithValue("@image", filePath);

                        cmd.ExecuteNonQuery();

                    }
                }
                Response.Write("<script>alert('University Add Successfully!');</script>");
            }
            catch (Exception ex)
            {

                throw ex;

            }*/
        }
        private void clear()
        {
            txtName.Text = "";
            txtAddress.Text = "";
            txtDetails.Text = "";
            txtEMail.Text = "";
            txtPhone.Text = "";
            lblMessage.Text = "";
        }
    }
}