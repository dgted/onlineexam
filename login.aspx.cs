using System;
using System.Data;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;
using System.Data.SqlClient;
using System.Configuration;
public partial class login : System.Web.UI.Page
{

    protected void Page_Load(object sender, EventArgs e)
    {

    }




    protected void Button1_Click(object sender, EventArgs e)
    {
        {



            string conn = "";
            conn = ConfigurationManager.ConnectionStrings["LoginConnectionString"].ToString();
            SqlConnection objsqlconn = new SqlConnection(conn);
            objsqlconn.Open();

            SqlCommand cmd = new SqlCommand("select * from Ulogin where username=@username and password=@password", objsqlconn);
            cmd.Parameters.AddWithValue("@username", TextBox1.Text);
            cmd.Parameters.AddWithValue("@password", TextBox2.Text);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();

            da.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                if (dt.Rows[0]["admin"].ToString() == "1")
                {
                    Session["New"] = TextBox1.Text;
                    Response.Write("welcome Admin");
                    Response.Redirect("Admin.aspx");
                }
                if (dt.Rows[0]["student"].ToString() == "1" && dt.Rows[0]["teacher"].ToString() == "0")
                {
                    Session["New"] = TextBox1.Text;
                    Response.Write("welcome Student");
                    Response.Redirect("Rules.aspx");
                }
                if (dt.Rows[0]["teacher"].ToString() == "1" && dt.Rows[0]["student"].ToString() == "1")
                {
                    Session["New"] = TextBox1.Text;
                    Response.Write("welcome Teacher");
                    Response.Redirect("teacher.aspx");
                }
                else
                {
                    Response.Redirect("Login.aspx");
                }

            }
            else
            {
                Label1.Text = "Invalid username or password. Please try again.";
            }

        }
    }
}