using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
public partial class paperview : System.Web.UI.Page
{
    public SqlConnection con;

    public SqlCommand cmd;
    public SqlDataReader dr;
    public string qry;
    string settype;
    public int ans;
    string ad;
    protected void Page_Load(object sender, EventArgs e)
    {
     
        if (Session["NEW"] != null)
        {
       
        }
        else {
      
    }
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["LoginConnectionString"].ConnectionString);
        con.Open();
        settype = System.Convert.ToString(Request.QueryString["settype"]);
        HiddenField1.Value = testlist.SelectedValue;

        qry = "select * from question where question != '0' and settype='" + HiddenField1.Value + "' order by qid ";
        cmd = new SqlCommand(qry, con);
        dr = cmd.ExecuteReader();
        //dr.Read();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("setqpaper.aspx");
    }
    protected void testlist_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}