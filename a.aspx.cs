using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
public partial class a : System.Web.UI.Page
{

    string testtype;
    HttpCookie ck;
    public SqlConnection con;
    public SqlCommand cmd;
    public SqlDataReader dr;
    string qry;
    string uname;
    protected void Page_Load(object sender, EventArgs e)
    {
        testtype = System.Convert.ToString(Request.QueryString["testtype"]);
        if (Session["NEW"] != null)
        {
  uname = Session["NEW"].ToString();
 Label1.Text += Session["NEW"].ToString();
  
        }
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["LoginConnectionString"].ConnectionString);
        con.Open();
        qry = "select * from results where username ='" + uname + "' order by date DESC";
        cmd = new SqlCommand(qry, con);
        dr = cmd.ExecuteReader();
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
      
        ck = Request.Cookies["cook"];
        //ck.Expires = DateTime.Now.AddDays(-1);
        Response.Redirect("login.aspx");
    }

    protected void Button5_Click(object sender, EventArgs e)
    {
        Response.Redirect("correctAns.aspx?testtype=" + testtype);
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        Response.Redirect("rules.aspx");
    }
}