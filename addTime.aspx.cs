using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data.SqlClient;
using System.Configuration;
public partial class addTime : System.Web.UI.Page
{
public static double xxx ;
     
    protected void Page_Load(object sender, EventArgs e)
    {
    
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Label1.Text = +xxx + "";
          try
            {

                using (SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["LoginConnectionString"].ConnectionString))
                {
                    using (SqlCommand command = new SqlCommand("SELECT Time FROM time", connection))
                    {
                        connection.Open();
                        using (SqlDataReader reader = command.ExecuteReader())
                        {
                            while (reader.Read())
                            {
                                xxx = Convert.ToDouble(reader[0]);
                              Response.Write(xxx);
                            }
                        }
                    }
                }
            }
           catch (Exception ex)
           {
               //error handling...
           }
    }
     
}

          