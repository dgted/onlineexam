<%@ Page Language="C#" AutoEventWireup="true" CodeFile="panel.aspx.cs" Inherits="panel" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>




    <style type="text/css">
        .auto-style1 {
            width: 100%;
            margin-right: 0px;
        }

        .auto-style2 {
            font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
            border-collapse: collapse;
            width: 100%;
        }

        .auto-style3 {
            height: 23px;
        }

        .auto-style4 {
            width: 1067px;
        }

        .auto-style5 {
            height: 22px;
            width: 114px;
            text-align: center;
        }

        .auto-style6 {
            width: 1067px;
            height: 23px;
        }

        .auto-style7 {
            width: 114px;
            text-align: center;
        }

        .customers {
            font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
            border-collapse: collapse;
            width: 50%;
        }

            .customers td, .customers th {
                border: 1px solid #ddd;
                padding: 8px;
            }

            .customers tr:nth-child(even) {
                background-color: #f2f2f2;
            }

            .customers tr:hover {
                background-color: #ddd;
            }

            .customers th {
                padding-top: 12px;
                padding-bottom: 12px;
                text-align: left;
                background-color: yellow;
                color: white;
            }

        .p {
            text-align: center;
            font-size: xx-large;
            margin-top: 0px;
            color: red;
            background-color: #FFFF00;
        }

        .label {
            text-align: justify;
            font-size: 40px;
            margin-top: 0px;
            color: red;
        }

        .auto-style8 {
            text-align: center;
        }

        .auto-style9 {
            width: 1067px;
            height: 23px;
            text-align: center;
        }

        a {
            text-decoration: none;
            display: inline-block;
            padding: 8px 16px;
        }

            a:hover {
                background-color: #ddd;
                color: black;
            }

        .previous {
            background-color: black;
            color: white;
        }

        .next {
            background-color: black;
            color: white;
        }

        .auto-style10 {
            width: 114px;
            text-align: left;
        }

        .auto-style12 {
            text-align: right;
        }

        .circleBase {
            border-radius: 50%;
            behavior: url(PIE.htc);
        }

        .type3 {
            width: 500px;
            height: 500px;
            background: aqua;
            border: 30px solid blue;
        }
    </style>

</head>
<body>



    <form id="form1" runat="server">
        <div>
            <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
            <div style="text-align: right">


                <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                    <ContentTemplate>
                        <div class="auto-style8">

                            <asp:Label ID="time" runat="server" Visible="False"></asp:Label>
                            <asp:Label ID="Label2" runat="server" CssClass="p" Text=""></asp:Label>
                        </div>

                    </ContentTemplate>
                    <Triggers>
                        <asp:AsyncPostBackTrigger ControlID="Timer1" />
                    </Triggers>
                </asp:UpdatePanel>
                <asp:Timer ID="Timer1" runat="server" Interval="1000" OnTick="Timer1_Tick"></asp:Timer>

                <div class="auto-style12">

                    <asp:Label ID="Label3" runat="server" Style="color: #FF0000; font-size: 60px"></asp:Label>

                </div>

                <asp:Label ID="Label6" Style="right: 80px; top: 80px; position: absolute; font-weight: 700; font-size: 50px; color: #000000; background-color: #FFFFFF;" runat="server" Text="Marks :" Font-Names="Lucida Handwriting" ForeColor="White" Visible="False"></asp:Label>


                <hr style="width: 50px; height: 10px; color: black; right: 0; top: 97px; position: absolute; background-color: #000000;" visible="false" />


                <div class="auto-style12">

                    <asp:Label ID="Label4" runat="server" Style="color: #3333CC; font-size: 60px"></asp:Label>
                </div>
            </div>

        </div>
        <div>

            <table class="auto-style1">
                <tr>
                    <td class="auto-style9">


                        <div align="right">
                            <asp:Button ID="Button6" runat="server" Text="View Previous Results" Width="197px" Visible="false" OnClick="Button6_Click1" Style="color: #000000; font-weight: 700; background-color: #0099FF" Height="33px" BorderStyle="None" Font-Bold="True" Font-Names="Agency FB" Font-Size="13pt" />
                            <asp:Button ID="Button5" runat="server" Height="33px" OnClick="Button5_Click" Style="background-color: #FF5050; font-weight: 700; color: #FFFFFF;" Text="View Correct Answers" Visible="False" Width="237px" BorderStyle="None" Font-Names="Agency FB" Font-Size="15pt" />

                        </div>
                        <div align="center" style="text-align: justify">
                        </div>
                        <br />

                    </td>


                    <tr>


                        <td class="auto-style6">
                            <div align="center">
                                <div align="center">

                                    <div class="auto-style8">
                                    </div>
                                </div>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style4" align=" center">
                            <div align="center">
                                <a>
                                    <asp:Button ID="backButton" runat="server" class="previous round" Text="&#8249;" Width="50px" Height="30px" OnClick="backButton_Click2" />
                                </a>

                                <asp:Label ID="msg" runat="server" Font-Bold="true" Font-Size="large" Style="color: #000066; font-size: x-large;"></asp:Label>

                                <a>
                                    <asp:Button ID="Button7" runat="server" class="next round" OnClick="Button2_Click" Text="&#8250;" Width="50px" Height="30px" />
                                </a>
                            </div>
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td style="text-align: center" class="auto-style4">
                            <table align="center" class="auto-style2">
                                <div align="center">
                                    <tr>
                                        <td class="customers">

                                            <asp:DropDownList OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" AppendDataBoundItems="true" ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="question" DataValueField="qid" Height="70px" Width="300px" Font-Bold="True" Font-Size="Medium">
                                                <asp:ListItem Text="ALL QUESTION" Value="" />

                                            </asp:DropDownList>

                                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:LoginConnectionString %>" SelectCommand="SELECT [qid], [question] FROM [question] WHERE ([settype] = @settype) order by [qid] SELECT NULL , '-----SELECT ONE-------'">
                                                <SelectParameters>
                                                    <asp:QueryStringParameter DefaultValue="" Name="settype" QueryStringField="testtype" Type="String" />
                                                </SelectParameters>
                                            </asp:SqlDataSource>

                                            <%
                                                con.Open();
                                                rqry = "select * from question where ans != '0' and settype='" + testtype + "' order by qid ";
                                                rcmd = new System.Data.SqlClient.SqlCommand(rqry, con);
                                                rdr = rcmd.ExecuteReader();

                                                c = 1;
                                                object[] values = null;
                                                while (rdr.Read())
                                                {
                                                    if (c != count)
                                                    {
                                                        c = c + 1;
                                                    }
                                                    else if (c == count)
                                                    {
                                                        values = new object[rdr.FieldCount];
                                                        rdr.GetValues(values);
                                                        rdr.Close();
                                                        break;
                                                    }
                                                }
                                                int q = Convert.ToInt16(values[0]);

                                                qid = q;
                                                
                                                string question = Convert.ToString(values[1]);
                                                string choicea = Convert.ToString(values[3]);
                                                string choiceb = Convert.ToString(values[4]);
                                                string choicec = Convert.ToString(values[5]);
                                                string choiced = Convert.ToString(values[6]); 
                                            %>
                                            <table align="center" class=" auto-style1">
                                                <tr>
                                                    <td colspan="1" class="auto-style5">
                                                        <h5 class="auto-style8">Question No <%  =count %>:-
                                                            <h3 class="auto-style8">
                                                                <br />
                                                                <% =question %> 

                                                            </h3>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="auto-style7">&nbsp;</td>

                                                </tr>
                                                <tr>
                                                    <td>
                                                     
                                                    </td>
                                                </tr>
                                                <tr>

                                                    <td class="auto-style10">
                                                       
                                                        <asp:RadioButton ID="RadioButton1" runat="server" type="radio" GroupName=" opt" />
                                                        <% =values[3] %>
                                                        
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="auto-style10">
                                                        <asp:RadioButton ID="RadioButton2" type="radio" runat="server" GroupName=" opt" />
                                                        <% =values[4] %>
                                  
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="auto-style10">
                                                        <asp:RadioButton ID="RadioButton3" runat="server" type="radio" GroupName=" opt" />
                                                        <% =values[5] %>
                                 
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="auto-style10">
                                                        <asp:RadioButton ID="RadioButton4" runat="server" type="radio" GroupName=" opt" />
                                                        <% = values[6] %>
                               
                                                    </td>
                                                </tr>
                                               
                                            </table>






                                        </td>
                                    </tr>
                            </table>
        </div>

        </td>
                </tr>
                <tr>
                    <td class="auto-style2" colspan="2">&nbsp;</td>
                </tr>
        <tr>
            <td class="auto-style3" colspan="2">

                <asp:Button ID="Button3" runat="server" Text="Finish Exam" Width="162px"
                    OnClientClick="return confirm('Are you sure you want to Finish the exam?')"
                    OnClick="Button3_Click" Style="text-align: center; color: #FFFFFF; margin-bottom: 9px; background-color: #FF0000;" BorderStyle="None" Font-Names="Lucida Sans Unicode" Font-Size="15pt" Height="41px" />
            </td>
        </tr>
        <tr>
            <td class="auto-style2" colspan="2">
                <asp:Button ID="Button4" Style="top: 10px; right: 0; position: absolute; width: 146px; height: 41px; color: #FFFFFF; background-color: #0099CC;" runat="server" OnClick="Button4_Click" Text="Logout" BorderColor="Black" BorderStyle="None" Font-Names="Microsoft PhagsPa" Font-Size="12pt" />
                <br />
            </td>
        </tr>
        </table>

         
        </div>
    </form>
</body>
</html>
