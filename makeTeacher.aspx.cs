using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class makeTeacher : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {

        foreach (GridViewRow row in GridView1.Rows)
        {
            CheckBox status = (row.Cells[2].FindControl("CheckBox1") as CheckBox);
            int rollno = Convert.ToInt32(row.Cells[1].Text);
            if (status.Checked)
            {
                updaterow(rollno, "1");
            }
            else
            {
                updaterow(rollno, "0");

            }



        }




    }

    private void updaterow(int rollno, String markstatus)
    {
        String mycon = "Data Source=DESKTOP-NQ1U4MR\\SQLEXPRESS; Initial Catalog=Login; Integrated Security=True";
        String updatedata = "Update Ulogin set teacher='" + markstatus + "' where rollno=" + rollno;
        SqlConnection con = new SqlConnection(mycon);
        con.Open();
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = updatedata;
        cmd.Connection = con;
        cmd.ExecuteNonQuery();
        ScriptManager.RegisterStartupScript(this, this.GetType(),
     "alert",
     "alert('Teacher Added Successfully');window.location ='makeTeacher.aspx';",
     true);

    }
}