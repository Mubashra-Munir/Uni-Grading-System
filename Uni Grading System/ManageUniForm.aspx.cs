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
    public partial class ManageUniForm : System.Web.UI.Page
    {

        string con = @"Data Source=DESKTOP-LG56L0B\SQLEXPRESS;Initial Catalog=UniGrading;Integrated Security=True";
        protected void Page_Load(object sender, EventArgs e)
        {

          
            if (!IsPostBack)
            {
                BindUNiData();
            }
        }
        protected void BindUNiData()
        {
            using(SqlConnection sqlcon  = new SqlConnection(con))
            {
                sqlcon.Open();
                SqlCommand cmd = new SqlCommand("Select * from uni_tbl", sqlcon);
                DataTable dt = new DataTable();
                SqlDataReader reader = cmd.ExecuteReader();
                dt.Load(reader);
                GridViewUni.DataSource = dt;
                GridViewUni.DataBind();
            }
            




        }
        protected string GetImagePath(object imageObj)
        {
            if (imageObj != null && imageObj != DBNull.Value)
            {
                string imagePath = imageObj.ToString();
                if (!string.IsNullOrEmpty(imagePath))
                {
                    string relativePath = ResolveUrl(imagePath);
                    return relativePath;
                }
            }
            // Return a placeholder image path if the image is not available
            return "~/Images/placeholder.png";
        }

        protected void GridViewUni_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridViewUni.EditIndex = e.NewEditIndex;
            BindUNiData();
            /*string id = GridViewUni.DataKeys[e.NewEditIndex]?.Value?.ToString();
            if (!string.IsNullOrEmpty(id))
            {
                Response.Redirect("UpdateUniFrom.aspx?id=" + id);
            }
            else
            {
                // Handle the case when the ID is null or empty
            }*/
        }

        protected void GridViewUni_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void GridViewUni_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int id = Convert.ToInt32(GridViewUni.DataKeys[e.RowIndex].Value.ToString());
            using(SqlConnection sqlcon = new SqlConnection(con))
            {
                sqlcon.Open();

                SqlCommand cmd = new SqlCommand("DELETE FROM uni_tbl WHERE uid = '"+id+"'", sqlcon);

                int t = cmd.ExecuteNonQuery();
                if (t > 0)
                {
                    Response.Write("<script>alert('Date Successfully Deleted') </script>");
                    GridViewUni.EditIndex = -1;
                    BindUNiData();
                }
            }
        }

        protected void GridViewUni_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            int id = Convert.ToInt32(GridViewUni.DataKeys[e.RowIndex].Value.ToString());
            string name = e.NewValues["name"].ToString();
            string email = e.NewValues["email"].ToString();
            string phone = e.NewValues["phone"].ToString();
            string address = e.NewValues["address"].ToString();
            string details = e.NewValues["details"].ToString();


            using(SqlConnection sqlcon = new SqlConnection(con))
            {
                sqlcon.Open();
                SqlCommand cmd = new SqlCommand("Update uni_tbl set name = '" + name + "',email = '" + email + "',phone = '" + phone + "',address = '" + address + "',details = '" + details + "' WHERE uid = '" + id + "'", sqlcon);
                int t = cmd.ExecuteNonQuery();
                if (t > 0)
                {
                    Response.Write("<script>alert('Date Successfully Update') </script>");
                    GridViewUni.EditIndex = -1;
                    BindUNiData();
                }
            }
           
        }

        protected void GridViewUni_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridViewUni.EditIndex = -1;
            BindUNiData();
        }
    }
}