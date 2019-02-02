using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data.SqlClient;
using System.Configuration;
public partial class editqpaper : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand cmd;
    SqlDataReader dr;
    String qry;

    public SqlCommand rcmd;
    public SqlDataReader rdr;
    public string rqry;
    Int16 ans;
    public string settype;
    int qid;

    protected void Page_Load(object sender, EventArgs e)
    {

        if (!Page.IsPostBack)
        {
            settype = System.Convert.ToString(Request.QueryString["settype"]);
            qid = System.Convert.ToInt16(Request.QueryString["qid"]);
            con = new SqlConnection(ConfigurationManager.ConnectionStrings["LoginConnectionString"].ConnectionString);
            con.Open();

            rqry = "select * from question where qid=" + qid;
            rcmd = new SqlCommand(rqry, con);
            rdr = rcmd.ExecuteReader();


            while (rdr.Read())
            {
                question.Text = Convert.ToString(rdr.GetValue(1));
                opt1.Text = Convert.ToString(rdr.GetValue(3));
                opt2.Text = Convert.ToString(rdr.GetValue(4));
                opt3.Text = Convert.ToString(rdr.GetValue(5));
                opt4.Text = Convert.ToString(rdr.GetValue(6));
                ans = Convert.ToInt16(rdr.GetValue(7));

                if (ans == 1)
                {
                    RadioButton1.Checked = true;
                    RadioButton2.Checked = false;
                    RadioButton3.Checked = false;
                    RadioButton4.Checked = false;
                }
                if (ans == 2)
                {
                    RadioButton1.Checked = false;
                    RadioButton2.Checked = true;
                    RadioButton3.Checked = false;
                    RadioButton4.Checked = false;
                }
                if (ans == 3)
                {
                    RadioButton1.Checked = false;
                    RadioButton2.Checked = false;
                    RadioButton3.Checked = true;
                    RadioButton4.Checked = false;
                }
                if (ans == 4)
                {
                    RadioButton1.Checked = false;
                    RadioButton2.Checked = false;
                    RadioButton3.Checked = false;
                    RadioButton4.Checked = true;
                }

            }
            con.Close();
        }
        else
        {
            
        }
       
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        if (RadioButton1.Checked)
            ans = 1;

        if (RadioButton2.Checked)
            ans = 2;
        if (RadioButton3.Checked)
            ans = 3;
        if (RadioButton4.Checked)
            ans = 4;
        
        qid = System.Convert.ToInt16(Request.QueryString["qid"]);
        con = new SqlConnection(ConfigurationManager.ConnectionStrings["LoginConnectionString"].ConnectionString);
        con.Open();
        SqlCommand cmd = new SqlCommand();
        cmd.Connection = con;

        cmd.CommandText = "Update question set question=' " + question.Text + " ' ,  choicea=' " + opt1.Text + " ' ,  choiceb=' " + opt2.Text + " ',  choicec=' " + opt3.Text + " ',  choiced=' " + opt4.Text + " ', ans= " + ans + " where qid=" + qid;
        SqlDataReader dr = cmd.ExecuteReader();
        ScriptManager.RegisterStartupScript(this, this.GetType(),
      "alert",
      "alert('Question Updated sucessfully');window.location ='paperview.aspx';",
      true);
    }
    protected void Button5_Click(object sender, EventArgs e)
    {
        qid = System.Convert.ToInt16(Request.QueryString["qid"]);
        con = new SqlConnection(ConfigurationManager.ConnectionStrings["LoginConnectionString"].ConnectionString);
        con.Open();
        qry = "delete from question where qid=" + qid;
        cmd = new SqlCommand(qry, con);
        cmd.ExecuteNonQuery();
        con.Close();
        ScriptManager.RegisterStartupScript(this, this.GetType(),
"alert",
"alert('Question Deleted sucessfully');window.location ='paperview.aspx';",
true);
    }
    protected void Button6_Click(object sender, EventArgs e)
    {

    }
    private void populateFlilds()
    {

    }
}