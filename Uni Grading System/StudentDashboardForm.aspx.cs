using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Uni_Grading_System
{
    public partial class StudentDashboardForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["email"] != null)
                {
                    // Email is stored in the session, retrieve and use it
                    string teacherEmail = Session["email"].ToString();
                    // Now you can use the email as needed
                    // For example, display it in a label or other controls
                   /* lblWelcome.Text = "Welcome, " + teacherEmail;*/
                }
                else
                {
                    // Email is not stored in the session, redirect to the login page
                    Response.Redirect("LoginForm.aspx");
                }
            }
        }
    }
}