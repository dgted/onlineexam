using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
public partial class addSubject : System.Web.UI.Page
{
    public int c = 11;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["NEW"] != null)
        {
         
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
           SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["LoginConnectionString"].ConnectionString);
            conn.Open();
            SqlCommand cm = new SqlCommand("select count(*) from question where settype='" + TextBox1.Text + "'", conn);
           
            cm.ExecuteNonQuery();
            int temp = Convert.ToInt32(cm.ExecuteScalar().ToString());
            if (temp >= 1)
            {
                Label1.Visible = true;
                Label1.Text = "SUBJECT Already exists!";

            }
        
        else

        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["LoginConnectionString"].ConnectionString);
            con.Open();

            SqlCommand cmd = new SqlCommand("insert into question values(@qid, @question, @settype, @choicea,@choiceb, @choicec,@choiced, @ans)", con);
            cmd.Parameters.AddWithValue("qid", c + 1);
            cmd.Parameters.AddWithValue("question", "0");
            cmd.Parameters.AddWithValue("settype", TextBox1.Text);
            cmd.Parameters.AddWithValue("choicea", "0");
            cmd.Parameters.AddWithValue("choiceb", "0");
            cmd.Parameters.AddWithValue("choicec", "0");
            cmd.Parameters.AddWithValue("choiced", "0");
            cmd.Parameters.AddWithValue("ans", "0");
            cmd.ExecuteNonQuery();
            Label1.Visible = true;
            Label1.Text = "SUBJECT Added successfully";


        }


    }
    
    }
