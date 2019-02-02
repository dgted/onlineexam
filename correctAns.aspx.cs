using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Text;
using System.Web.Security;


public partial class correctAns : System.Web.UI.Page
{

    string qry;
    SqlCommand cmd;
    public SqlDataReader dr;
    public SqlConnection con;
    public string testtype;
    public int ans;
    protected void Page_Load(object sender, EventArgs e)
    {
        testtype = System.Convert.ToString(Request.QueryString["testtype"]);
        con = new SqlConnection(ConfigurationManager.ConnectionStrings["LoginConnectionString"].ConnectionString);
        con.Open();
        qry = "select * from question where ans != 0 and settype ='" + testtype + " 'order by qid asc";
        cmd = new SqlCommand(qry, con);
        dr = cmd.ExecuteReader();
      





    }
 
    protected void Button2_Click(object sender, EventArgs e)
    {

        Session["New"] = null;
        Response.Redirect("Login.aspx");
    }
    protected void Button6_Click1(object sender, EventArgs e)
    {
        Response.Redirect("a.aspx");
    }
    protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            DataRowView drv = e.Row.DataItem as DataRowView;
            if (drv["Verification"].ToString().Equals("Right"))
            {
                e.Row.BackColor = System.Drawing.Color.Green;
             
            }
            else
            {
                e.Row.BackColor = System.Drawing.Color.Red;
            }

        }
    }
}