using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
public partial class MasterPage4 : System.Web.UI.MasterPage
{
    SqlConnection con;
    SqlCommand cmd;

    string qry;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void SignOut_Click(object sender, EventArgs e)
    {
        Session["New"] = null;
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["LoginConnectionString"].ConnectionString);
        con.Open();
        qry = "delete from answers";
        cmd = new SqlCommand(qry, con);
        cmd.ExecuteNonQuery();
        Response.Redirect("Login.aspx");
    }
}
