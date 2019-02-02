<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage3.master" AutoEventWireup="true" CodeFile="paperview.aspx.cs" Inherits="paperview" %>


<asp:Content ID="Content1" ContentPlaceHolderID="title" Runat="Server">Teacher Page
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
.dh
{
    border: solid 1px;
    width:200px;
    height:200px;
    float:left;
    padding:30px;
    margin:60px;
    background-color:blueviolet;
   
    text-align:center;
}
h2
{
     color:yellow;
}
 .auto-style1 {
            width: 100%;
        }
        .style2 {
         font-family:'Times New Roman', Times, serif;
         font-size: 32px;

        }
        .style12 {
            text-align: center;
            width: 166px;
               font-family:Impact, Haettenschweiler, 'Arial Narrow Bold', sans-serif;
                    font-size: 16px;
        }
           .style14 {
               font-family:Impact, Haettenschweiler, 'Arial Narrow Bold', sans-serif;
            text-align: center;
            width: 166px;
               font-size: 16px;
        }
        .auto-style4 {
            width: 378px;
            font-size: medium;
            text-align: left;
            font-weight: 700;
        }
        body {
            margin: 0;
            padding: 0;
            font-family: sans-serif;
            background: white;
        }

        .auto-style5 {
            width: 378px;
            color: #FFFFFF;
            font-weight: bold;
            text-align: center;
        }
        .auto-style6 {
            color: #FFFFFF;
            font-weight: bold;
            text-align: center;
        }
        .auto-style7 {
            font-weight: bold;
            text-align: center;
        }
        .auto-style8 {
            text-align: center;
        }

        .auto-style9 {
            text-decoration: none;
        }
        .auto-style10 {
            color: #000066;
            background-color: #FFFFFF;
        }
        
        .auto-style12 {
            text-align: center;
            color: #FFFFFF;
        }

    </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="body" Runat="Server">
    <div>
    
        <br />
    
        <asp:DropDownList ID="testlist" AppendDataBoundItems="true" runat="server" align ="center" Height="33px" style="margin-left: 0px" Width="204px" AutoPostBack="true" DataSourceID ="SqlDataSource1" DataTextField="settype" OnSelectedIndexChanged="testlist_SelectedIndexChanged" Font-Bold="True" Font-Names="Arial" Font-Overline="False" Font-Size="Large">
      <asp:ListItem Text="Select a SUBJECT" Value="" />   </asp:DropDownList>
       




        <br />
        <br />
        <br />
       




        <br />
       




        <table class="auto-style1">
            <tr>
                <td colspan="2">
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:LoginConnectionString %>" SelectCommand="SELECT DISTINCT [settype] FROM [question] ORDER BY [settype]"></asp:SqlDataSource>
               
                     </td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:HiddenField ID="HiddenField1" runat="server" />
                </td>
            </tr>
           
        </table>
       
        <tr>
            <td>
                <table align="center" class="style4">
                    <tr>
                        <td>
                            &nbsp; </td>
                        <td bgcolor ="#0066FF">
                            <table align="center" border="1" frame="hsides" rules="rows"  class="style4" style="border-color: #000000">
                                <tr>
                                    <td class ="auto-style7"> &nbsp;</td>
                                    <td class ="auto-style5"> Questions</td>
                                      <td class ="auto-style6"> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Choices</td>
                                    <td class="auto-style12"> <strong>Edit / Delete</strong></td>
                                    </tr>
                                <% while(dr.Read()) 
                                    {%><%ans = Convert.ToInt16(dr.GetValue(7)); %>
                                <%if (ans == 1) {
                                   CheckBox1.Checked = true;   
                                            CheckBox2.Checked = false;   
                                                      CheckBox3.Checked = false;   
                                                      CheckBox4.Checked = false;   
                                  }%>
                                 <%if (ans == 2) {
                                   CheckBox1.Checked = false;   
                                            CheckBox2.Checked = true;   
                                                      CheckBox3.Checked = false;   
                                                      CheckBox4.Checked = false;   
                                  }%>
                                 <%if (ans == 3) {
                                   CheckBox1.Checked = false;   
                                            CheckBox2.Checked = false;   
                                                      CheckBox3.Checked = true;   
                                                      CheckBox4.Checked = false;   
                                  }
                                  %>
                                      <%if (ans == 4) {
                                   CheckBox1.Checked = false;   
                                            CheckBox2.Checked = false;   
                                                      CheckBox3.Checked = false;   
                                                      CheckBox4.Checked = true;   
                                  }
                                  %>
                                <tr>
                              
                                    <td bgcolor="white" class="text-center">  </td>
                                       <td bgcolor="white" class="auto-style4"> <%= dr.GetValue(1) %>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                                               <td bgcolor="white" class="auto-style8"> 
                                               <table align ="center" class ="style4" >
                                                   <tr>
                                                       <td class ="text-right">
                                                           <strong>
                                                         <%= dr.GetValue(3) %>
                                                           </strong>
                                                       </td>
                                                       <td>
                                                           <strong>
                                                           <asp:CheckBox ID="CheckBox1" runat ="server" />
                                                           </strong>
                                                       </td>
                                                   </tr>
                                                   <tr>
                                                       <td class ="text-right">
                                                           <strong>
                                                         <%= dr.GetValue(4) %>
                                                           </strong>
                                                       </td>
                                                       <td>
                                                           <strong>
                                                           <asp:CheckBox ID="CheckBox2" runat ="server" />
                                                           </strong>
                                                       </td>
                                                   </tr>
                                                   <tr>
                                                       <td class ="text-right">
                                                           <strong>
                                                         <%= dr.GetValue(5) %>
                                                           </strong>
                                                       </td>
                                                       <td>
                                                           <strong>
                                                           <asp:CheckBox ID="CheckBox3" runat ="server" />
                                                           </strong>
                                                       </td>
                                                   </tr>
                                                   <tr>
                                                       <td class ="text-right">
                                                           <strong>
                                                        
                                                           &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                           <%= dr.GetValue(6) %>
                                                                </strong>
                                                       </td>

                                                       <td>
                                                           <strong>
                                                           <asp:CheckBox ID="CheckBox4" runat ="server" />
                                                           </strong>
                                                       </td>
                                                   </tr>
                                               </table>   
                                               
                                               </td>
                                    <td bgcolor ="white" class="text-right"><a href="editqpaper.aspx?settype=<%Response.Write(dr.GetValue(2)); %> &qid=<%Response.Write(dr.GetValue(0)); %>" class="auto-style9"><span class="auto-style10"><strong>Edit </strong> </span> <strong> <br class="auto-style10"> </strong> <span class="auto-style10"><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; or</strong></span><strong><br class="auto-style10"></strong><span class="auto-style10"><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Delete</strong></span></a></td>
                              
                                      </tr> <%
                                            } %>
                            </table>
                        </td>
                    </tr>

                </table>
            </td>
            </tr>


        <br />
        <br />
        <br />


    </div>

    </asp:Content>