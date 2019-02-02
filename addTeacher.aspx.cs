using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class addTeacher : System.Web.UI.Page
{
   

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            GenerateAutoId();
        }
 
        if (Session["NEW"] != null)
        {
        
        }
    }
    private void GenerateAutoId()
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["LoginConnectionString"].ConnectionString);
        conn.Open();
        SqlCommand cm = new SqlCommand("select count(rollno) from Ulogin ", conn);
        int c = Convert.ToInt32(cm.ExecuteScalar());
        conn.Close();
        c++;

        Label.Text = c.ToString();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
           SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["LoginConnectionString"].ConnectionString);
            conn.Open();
             SqlCommand cm = new SqlCommand("select count(*) from Ulogin where username='" + TextBox1.Text + "'",conn);
           
            cm.ExecuteNonQuery();
            int temp = Convert.ToInt32(cm.ExecuteScalar().ToString());
            if (temp == 1)
            {
                Label4.Visible = true;
                Label4.Text = "Username Already exists!";

            }
        
        else

        {
            GenerateAutoId();
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["LoginConnectionString"].ConnectionString);
            con.Open();

            SqlCommand cmd = new SqlCommand("insert into Ulogin values (@username, @password, @student, @teacher,@admin, @rollno)", con);
            cmd.Parameters.AddWithValue("username", TextBox1.Text);
            cmd.Parameters.AddWithValue("password", TextBox2.Text);
            cmd.Parameters.AddWithValue("student", "1");
            cmd.Parameters.AddWithValue("teacher", "1");
            cmd.Parameters.AddWithValue("admin", "0");

            cmd.Parameters.AddWithValue("rollno", Label.Text);
            cmd.ExecuteNonQuery();
            Label4.Visible = true;
            Label4.Text = "Teacher registered successfully";


        }


    }
    
}