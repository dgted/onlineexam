using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
public partial class deleteuser : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand cmd;

    string qry;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["NEW"] != null)
        {
          //  Label1.Text += Session["NEW"].ToString();
        }
        
    }
      
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["LoginConnectionString"].ConnectionString);
        con.Open();
        qry = "delete from Ulogin where username='" + DropDownList1.Text + "'";
        cmd = new SqlCommand(qry, con);
        cmd.ExecuteNonQuery();
        ScriptManager.RegisterStartupScript(this, this.GetType(),
"alert",
"alert('Student Deleted sucessfully');window.location ='deleteuser.aspx';",
true);
    }
}