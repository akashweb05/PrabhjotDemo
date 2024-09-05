using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Drawing;
using System.IO;

namespace PrabhjotDemo
{
    public partial class Demo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source =LAPTOP-GVMR90PC\\SQLEXPRESS; Initial Catalog = Prabh; Integrated Security = True; TrustServerCertificate = True");
           if(con.State==ConnectionState.Closed)
            con.Open();
            SqlCommand cmd = new SqlCommand("Insert into Student (Firstname,Lastname,Gender,Email,Password,Confirmpassword) Values (@Firstname,@Lastname,@Gender,@Email,@Password,@Confirmpassword)",con);
            cmd.Parameters.AddWithValue("@Firstname",Txtfname.Text);
            cmd.Parameters.AddWithValue("@Lastname", Txtlname.Text);
            cmd.Parameters.AddWithValue("@Gender", Txtgender.Text);
            cmd.Parameters.AddWithValue("@Email", Txtemail.Text);
            cmd.Parameters.AddWithValue("@Password", Txtpass.Text);
            cmd.Parameters.AddWithValue("@Confirmpassword", Txtcfpass.Text);
            cmd.ExecuteNonQuery();
            GridView1.DataBind();
            if (con.State==ConnectionState.Open)
                con.Close();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source =LAPTOP-GVMR90PC\\SQLEXPRESS; Initial Catalog = Prabh; Integrated Security = True; trustServerCertificate = True");
            if (con.State == ConnectionState.Closed)
                con.Open();
            SqlCommand cmd = new SqlCommand("select * from Student",con);
            GridView1.DataSource = cmd.ExecuteReader();
            GridView1.DataBind();
            if (con.State == ConnectionState.Open)
                con.Close();
        }

        protected void btnback_Click(object sender, EventArgs e)
        {
            Response.Redirect("mainpage.aspx");
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            try
            {
                int id = int.Parse(GridView1.Rows[e.RowIndex].Cells[0].Text);
                string Firstname = ((TextBox)GridView1.Rows[e.RowIndex].Cells[1].Controls[0]).Text;
                string Lastname = ((TextBox)GridView1.Rows[e.RowIndex].Cells[2].Controls[0]).Text;
                string Gender = ((TextBox)GridView1.Rows[e.RowIndex].Cells[3].Controls[0]).Text;
                string Email = ((TextBox)GridView1.Rows[e.RowIndex].Cells[4].Controls[0]).Text;
                string Password = ((TextBox)GridView1.Rows[e.RowIndex].Cells[5].Controls[0]).Text;
                string Confirmpassword = ((TextBox)GridView1.Rows[e.RowIndex].Cells[6].Controls[0]).Text;

                SqlConnection con = new SqlConnection("Data Source =LAPTOP-GVMR90PC\\SQLEXPRESS; Initial Catalog = Prabh; Integrated Security = True; trustServerCertificate = True");
                if (con.State == ConnectionState.Closed)
                    con.Open();
                SqlCommand cmd = new SqlCommand("Update student set Firstname='"+Firstname+"',Lastname='"+Lastname+"',Gender='"+Gender+"',Email='"+Email+"',Password='"+Password+"',Confirmpassword='"+Confirmpassword+"' where id='"+id+"'", con);
                cmd.ExecuteNonQuery();

            }
            catch
            {
                
            }
            finally
            {

            }
        }

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {

            
        }
    }
}