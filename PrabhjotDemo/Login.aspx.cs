using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PrabhjotDemo
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnLogin_Click(object sender, EventArgs e)
        {

            SqlConnection con = new SqlConnection("Data Source =LAPTOP-GVMR90PC\\SQLEXPRESS; Initial Catalog = Prabh; Integrated Security = True; trustServerCertificate = True");
            if (con.State == ConnectionState.Closed)
                con.Open();
            SqlCommand cmd = new SqlCommand("select * from Student where Email=@Email and Password=@Password", con);
        }

        protected void BtnBack_Click(object sender, EventArgs e)
        {
            Response.Redirect("mainpage.aspx");
        }
    }
}