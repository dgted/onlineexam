<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="addSubject.aspx.cs" Inherits="addSubject" %>



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
                    Add a new Subject to Database<br />
<br />
<br />
<asp:TextBox ID="TextBox1" runat="server" style="margin-left: 0px; text-align: center; background-color: #FFFFFF;" Width="441px" align ="center" Height="38px" Font-Bold="True"></asp:TextBox>
         <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Subject Required!"></asp:RequiredFieldValidator>
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" style="margin-top: 0px; color: #FFFFFF; background-color: #6600FF; margin-left: 85px;" Text="Add Subject" Width="321px" Height="39px" />
        <br />
<br />
        <asp:Label ID="Label1" runat="server" Text="Label" Visible="False" style="font-weight: 700"></asp:Label>
<br />
<br />
<br />
<br />
<br />
<br />
<br />
</asp:Content>