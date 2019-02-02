<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="deletepaper.aspx.cs" Inherits="deletepaper" %>



<asp:Content ID="Content1" ContentPlaceHolderID="title" Runat="Server">
Admin Page
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" Runat="Server">

    <style type="text/css">
        body {
background-color: #f4f4f4;
color: #5a5656;
font-family: 'Open Sans', Arial, Helvetica, sans-serif;
font-size: 16px;
line-height: 1.5em;
            text-align: center;
        }
#a1
{
    font-size:x-large;
}
a { text-decoration: none; }
h1 { font-size: 1em; }
h1, p {
margin-bottom: 10px;
}
strong {
font-weight: bold;
}
.uppercase { text-transform: uppercase; }

/* ---------- LOGIN ---------- */
#login {
margin: 50px auto;
width: 300px;
}
form fieldset input[type="text"], input[type="password"] {
background-color: #e5e5e5;
border: none;
border-radius: 3px;
-moz-border-radius: 3px;
-webkit-border-radius: 3px;
color: #5a5656;
font-family: 'Open Sans', Arial, Helvetica, sans-serif;
font-size: 14px;
height: 50px;
outline: none;
padding: 0px 10px;
width: 280px;
-webkit-appearance:none;
}

form fieldset input[type="submit"] {
background-color: #008dde;
border: none;
border-radius: 3px;
-moz-border-radius: 3px;
-webkit-border-radius: 3px;
color: #f4f4f4;
cursor: pointer;
font-family: 'Open Sans', Arial, Helvetica, sans-serif;
height: 50px;
text-transform: uppercase;
width: 280px;
-webkit-appearance:none;
}
form fieldset a {
color: #5a5656;
font-size: 10px;
}

h1
{
    color:Black;
}
</style>

</asp:Content>



<asp:Content ID="Content3" ContentPlaceHolderID="body" Runat="Server">
  
                    <br />
<br />
<br />
                    <asp:DropDownList ID="DropDownList1" AppendDataBoundItems="true" runat="server" DataSourceID="SqlDataSource1" Height="40px" Width="250px" DataTextField="settype" DataValueField="settype" style="margin-left: 0px">
                   <asp:ListItem Text="Select Subject" Value="" />  </asp:DropDownList>
                <br />
<br />
<br />
<br />
<br />
<br />
                </td>
            </tr>
            <tr>
                <td bgcolor="white" style="text-align: center">
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:LoginConnectionString %>" SelectCommand="SELECT DISTINCT [settype] FROM [question]"></asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td bgcolor="white" style="text-align: center">
                  <asp:button ID="Button1" runat="server" Text="Delete Subject" Width="230px" 
            OnClientClick="return confirm('Are you sure you want to Delete this Subject? The Data will be lost')"
            OnClick="Button1_Click" />
                
    </asp:Content>