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
public partial class panel : System.Web.UI.Page
{

    public SqlCommand zcmd;
    public SqlDataReader ddr;
    string qqry;

    bool isChecked = false;
    HttpCookie ck;
    public SqlConnection con;
    SqlCommand cmd;
    SqlDataReader dr;
    public SqlCommand rcmd;
    public SqlDataReader rdr;
    SqlCommand scmd;
    SqlCommand ccmd;
    SqlDataReader cdr;
    public string rqry;
    string qry;
    string sqry;
    string uname;
    public string testtype;
    public string question;

    public string choicea;
    public string choiceb;
    public string choicec;
    public string choiced;
    public int ans;
    public int selected_ans = -1;
    public int n = 0;
    public int count;
    public int marks = 0;
    public int totalmarks;
    public int qid;
    public int c;
    static int hh, mm, ss;
    public SqlCommand tcmd;
    public SqlDataReader tdr;
    string tqry;
    public static double TimeAllSecondes = 300;




    protected void Page_Load(object sender, EventArgs e)
    {



        if (Session["NEW"] != null)
        {


            uname = Session["NEW"].ToString();
        }


        ck = Request.Cookies["cook"];
        if (ck == null)
        {

        }

        question = System.Convert.ToString(Request.QueryString["question"]);
        choicea = System.Convert.ToString(Request.QueryString["choicea"]);
        choiceb = System.Convert.ToString(Request.QueryString["choiceb"]);
        choicec = System.Convert.ToString(Request.QueryString["choicec"]);
        choiced = System.Convert.ToString(Request.QueryString["choiced"]);
        testtype = System.Convert.ToString(Request.QueryString["testtype"]);

        count = System.Convert.ToInt16(Request.QueryString["count"]);
        marks = System.Convert.ToInt16(Request.QueryString["marks"]);
        if (count == 0)
        {
            count = 1;
        }
        time.Text = DateTime.Now.ToString();
        con = new SqlConnection(ConfigurationManager.ConnectionStrings["LoginConnectionString"].ConnectionString);
        con.Open();

        qry = "select * from question where ans != '0' and settype ='" + testtype + "'";
        cmd = new SqlCommand(qry, con);
        dr = cmd.ExecuteReader();
        while (dr.Read())
        {
            n = n + 1;
        }
        con.Close();
        if (count <= n)
        {
            msg.Text = count + " / " + n;

        }
        else
        {

            msg.Text = "This is the last question";
            count = n;

        }
        con.Open();
        rqry = "select * from question where ans != '0' and settype= '" + testtype + "' order by qid";
        rcmd = new System.Data.SqlClient.SqlCommand(rqry, con);
        rdr = rcmd.ExecuteReader();
        c = 1;

        while (rdr.Read())
        {

            if (c != count)
            {
                c = c + 1;
            }
            else
            {
                question = Convert.ToString(rdr.GetValue(1));
                choicea = Convert.ToString(rdr.GetValue(3));
                choiceb = Convert.ToString(rdr.GetValue(4));
                choicec = Convert.ToString(rdr.GetValue(5));
                choiced = Convert.ToString(rdr.GetValue(6));
                qid = Convert.ToInt16(rdr.GetValue(0));
                c = c + 1;
            }
        }
        rdr.Close();

        string ans_query = "SELECT * FROM answers WHERE qid=" + qid;
        var ans_cmd = new System.Data.SqlClient.SqlCommand(ans_query, con);
        var ans_rdr = ans_cmd.ExecuteReader();


        if (ans_rdr.HasRows)
        {
            ans_rdr.Read();
            selected_ans = Convert.ToInt16(ans_rdr.GetValue(7));
        }
        ans_rdr.Close();
        con.Close();


        if (selected_ans == 1)
        {
            RadioButton1.Checked = true;
        }
        else if (selected_ans == 2)
        {
            RadioButton2.Checked = true;
        }
        else if (selected_ans == 3)
        {
            RadioButton3.Checked = true;
        }
        else if (selected_ans == 4)
        {
            RadioButton4.Checked = true;
        }
    }

    protected void Page_Load_Complete(object sender, EventArgs e)
    {

        
    }


    protected void Button1_Click(object sender, EventArgs e)
    {

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Write(qid);




        if (count <= n)
        {
            if (RadioButton1.Checked == true)
            {
                ans = 1;



            }
            if (RadioButton2.Checked == true)
            {
                ans = 2;


            }
            if (RadioButton3.Checked == true)
            {
                ans = 3;

            }
            if (RadioButton4.Checked == true)
            {
                ans = 4;

            }

            con.Open();
            new SqlCommand("DELETE FROM answers WHERE qid=" + qid, con).ExecuteNonQuery();
            
            ccmd = new SqlCommand("select * from question where qid=" + qid + " and ans =" + ans, con);
            cdr = ccmd.ExecuteReader();

            


            if (cdr.HasRows)
            {

                marks = marks + 1;



                sqry = "insert into answers values ('" + qid + "','" + question + "','" + testtype + "','" + choicea + "','" + choiceb + "', '" + choicec + "','" + choiced + "', '" + ans + "', 'Right' , '1')";

                cdr.Close();

                tcmd = new SqlCommand(sqry, con);
                tcmd.ExecuteNonQuery();


            }

            else
            {

                sqry = "insert into answers values ('" + qid + "','" + question + "','" + testtype + "','" + choicea + "','" + choiceb + "', '" + choicec + "','" + choiced + "', '" + ans + "', 'Wrong' , '1')";

                cdr.Close();
                tcmd = new SqlCommand(sqry, con);
                tcmd.ExecuteNonQuery();
            }


            con.Close();
            count = count + 1;

            Response.Redirect("panel.aspx?testtype=" + testtype + "&count=" + count + " &marks=" + marks);

        }

        else
        {
            Label3.Text = " MARKS: " + marks + " Out Of " + totalmarks;

        }
    }

    public void Button3_Click(object sender, EventArgs e)
    {


        con.Close();
        con.Open();
        totalmarks = n;
        string date = DateTime.Now.ToString();

        sqry = "insert into results values ('" + uname + "', '" + date + "','" + testtype + "', " + marks + ", " + totalmarks + ")";


        scmd = new SqlCommand(sqry, con);
        scmd.ExecuteNonQuery();
        msg.Text = "Good Luck";
        RadioButton4.Visible = false;

        con.Close();
        Response.Write("<script> alert('Exam successful submit') </script>");

        backButton.Visible = false;
        Button3.Visible = false;
        Label3.Text = +marks + "";
        Label4.Text = +totalmarks + "";
        Timer1.Enabled = false;
        Button5.Visible = true;
        Button6.Visible = true;
        Label4.Visible = true;

        Label6.Visible = true;

        Button7.Visible = false;
    }
    protected void Button4_Click(object sender, EventArgs e)
    {


        Session["New"] = null;

        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["LoginConnectionString"].ConnectionString);
        con.Open();
        qry = "delete from answers";
        cmd = new SqlCommand(qry, con);
        cmd.ExecuteNonQuery();
        //ck.Expires = DateTime.Now.AddDays(-1);
        Response.Redirect("login.aspx");

    }



    bool ReturnValue()
    {
        return false;
    }



    public void Timer1_Tick(object sender, EventArgs e)
    {
        if (TimeAllSecondes > 0)
        {
            TimeAllSecondes = TimeAllSecondes - 1;

        }
        else
        {
            ScriptManager.RegisterStartupScript(this, this.GetType(),
"alert",
"alert('Exam Submitted');window.location ='a.aspx';",
true);

            con.Close();
            con.Open();
            totalmarks = n;
            string date = DateTime.Now.ToString();

            sqry = "insert into results values ('" + uname + "', '" + date + "','" + testtype + "', " + marks + ", " + totalmarks + ")";


            scmd = new SqlCommand(sqry, con);
            scmd.ExecuteNonQuery();
            msg.Text = "marks";

            con.Close();


        }

        TimeSpan time_Span = TimeSpan.FromSeconds(TimeAllSecondes);
        hh = time_Span.Hours;
        mm = time_Span.Minutes;
        ss = time_Span.Seconds;

        Label2.Text = "  " + hh + ":" + mm + ":" + ss;

    }


    protected void backButton_Click(object sender, EventArgs e)
    {



    }
    protected void Button5_Click(object sender, EventArgs e)
    {
        Response.Redirect("correctAns.aspx?testtype=" + testtype);
    }

    protected void Button6_Click1(object sender, EventArgs e)
    {
        Response.Redirect("a.aspx");
    }
    protected void backButton_Click1(object sender, EventArgs e)
    {


    }
    protected void Button2_Click11(object sender, EventArgs e)
    {

    }
    protected void backButton_Click2(object sender, EventArgs e)
    {
        count = count - 1;

        Response.Redirect("panel.aspx?testtype=" + testtype + "&count=" + count);
    }


    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {

        count = DropDownList1.SelectedIndex;

        var mark = Request.QueryString.Get("marks");
        var url = "panel.aspx?testtype=" + testtype + "&count=" + count;
        if (mark != null)
        {
            url += ("&marks=" + mark);
        }
        Response.Redirect(url);
    }

}