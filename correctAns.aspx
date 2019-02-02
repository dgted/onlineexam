<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage4.master" AutoEventWireup="true" CodeFile="correctAns.aspx.cs" Inherits="correctAns"  %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" Runat="Server">Rules
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
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
        body {
            margin: 0;
            padding: 0;
            font-family: sans-serif;
            background: white;
        }


h1{border-color:grey;
border-style:solid;
border-color:grey;
background-color:white;
font-family:"montserrat",sans-serif;
letter-spacing:4px;
line-height:1.2;
text-align:center;

;}

        .auto-style4 {
            text-align: left;
        }

        .auto-style5 {
            font-size: x-large;
        }
        .auto-style6 {
            font-size: large;
        }
        .auto-style7 {
            text-align: justify;
        }

    </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="body" Runat="Server">



        


            <span class="auto-style5">Your Answer&#39;s Verification</span>
            <br />
            <br />
    <div align="center">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" CellPadding="3" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" OnRowDataBound="GridView1_RowDataBound">
                <Columns>
                    <asp:BoundField DataField="question" HeaderText="question" SortExpression="question" >
                    <ItemStyle ForeColor="Yellow" />
                    </asp:BoundField>
                     <asp:BoundField DataField="verification" HeaderText="verification" 
                 SortExpression="verification" >
                    <ItemStyle ForeColor="Yellow" />
                    </asp:BoundField>
                </Columns>
                <FooterStyle BackColor="White" ForeColor="#000066" />
                <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="center" />
                <RowStyle ForeColor="#000066" />
                <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#007DBB" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#00547E" />
            </asp:GridView>
                        <br />
                        <asp:Button ID="Button6" runat="server" Text="View Previous Results" Width="170px" visible="true" OnClick="Button6_Click1" style="color: #000000; font-weight: 700; background-color: #0099FF" Height="41px" BorderStyle="None" Font-Bold="True" Font-Names="Agency FB" Font-Size="13pt" />
            <br />
        </div>
            <br />
            <span class="auto-style6">Answer Sheet<td></span><br />
     <table align="center" class="style4">
                    <tr>
                        <div align ="right">
                        <td>
                            &nbsp; </td>
                        <td bgcolor ="#0066FF">
                            <table align="center" border="1" frame="hsides" rules="rows"  class="style4" style="border-color: #000000; margin-left: 0px;">
                                <tr>
                                    <td class ="auto-style7"> &nbsp;</td>
                                    <td class ="fa-inverse"> <strong>Questions</strong></td>
                                      <td class ="auto-style6"> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="fa-inverse"><strong> Choices</strong></span></td>
                                    <td class="auto-style12"> &nbsp;</td>
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
                                       <td bgcolor="white" class="auto-style4"> <%= dr.GetValue(1) %>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                                               <td bgcolor="white" class="auto-style8"> 
                                               <table align ="center" class ="style4" >
                                                   <tr>
                                                       <td class ="text-right">
                                                        <div align="right">
                                                               <strong>
                                                         <%= dr.GetValue(3) %>
                                                           </strong>
                                                            </div>
                                                       </td>
                                                       <td class="text-right">
                                                           <div align="right">
                                                           <strong>
                                                           <asp:CheckBox ID="CheckBox1" runat ="server" />
                                                           </strong>
                                                               </div>
                                                       </td>
                                                   </tr>
                                                   <tr>
                                                       <td class ="text-right">
                                                           <div align="right">
                                                            <strong>
                                                         <%= dr.GetValue(4) %>
                                                           </strong>
                                                       </div>
                                                               </td>
                                                       <td class="text-right">
                                                            <div align="right">
                                                           <strong>
                                                           <asp:CheckBox ID="CheckBox2" runat ="server" />
                                                           </strong>
                                                                </div>
                                                       </td>
                                                   </tr>
                                                   <tr>
                                                       <td class ="text-right">
                                                            <div align="right">
                                                           <strong>
                                                         <%= dr.GetValue(5) %>
                                                           </strong>
                                                                </div>
                                                       </td>
                                                       <td class="text-right">
                                                            <div align="right">
                                                           <strong>
                                                           <asp:CheckBox ID="CheckBox3" runat ="server" />
                                                           </strong>
                                                                </div>
                                                       </td>
                                                   </tr>
                                                   <tr>
                                                       <td class ="text-right">
                                                            <div align="right">
                                                           <strong>
                                                        
                                                           &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                           <%= dr.GetValue(6) %>
                                                                </strong>
                                                                 </div>
                                                       </td>

                                                       <td class="text-right">
                                                            <div align="right">
                                                           <strong>
                                                           <asp:CheckBox ID="CheckBox4" runat ="server" />
                                                           </strong>
                                                                </div>
                                                       </td>
                                                   </tr>
                                               </table>   
                                               
                                               </td>
                                    <td bgcolor ="white" class="text-right">&nbsp;</td>
                              
                                      </tr> <%
                                            } %>
                            </table>
                           </div>
                        </td>
                    </tr>

                </table>
 
            </td>
            <br />
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:LoginConnectionString %>" SelectCommand="SELECT DISTINCT [question], [verification] FROM [answers]"></asp:SqlDataSource>
            <br />
            <br />
</asp:Content>