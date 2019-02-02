using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class testselection : System.Web.UI.Page
{
    HttpCookie ck;
    protected void Page_Load(object sender, EventArgs e)
    {
        ck = Request.Cookies["cook"];
        if (ck == null)
        {
          
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("panel.aspx?testtype=" + testlist.SelectedValue);
    }
}