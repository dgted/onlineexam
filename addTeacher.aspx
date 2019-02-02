<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="addTeacher.aspx.cs" Inherits="addTeacher" %>



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
                    Register Teacher Here !</td>
            </tr>
                
            <tr>
                <td class="auto-style4">
                    <span class="auto-style3"><strong>Entry&nbsp; No</strong></span>:
                    <asp:Label ID="Label" runat="server" Text="Label"></asp:Label>
                    <br />
                <br />
<br />
<br />
                </td>
            </tr>
                
           <tr>
                <td class="auto-style10">
                    <asp:Label ID="Label2" runat="server"  Text="Username" style="text-align: center; font-family: 'Times New Roman', Times, serif;  font-size: 32px;"></asp:Label>
                    <asp:TextBox ID="TextBox1" runat="server" style="margin-left: 0px; background-color: #FFFFFF;" Width="260px" align ="center" Height="27px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Username Required!"></asp:RequiredFieldValidator>
                <br />
<br />
                </td>
            </tr>
            <tr>
                <td class="auto-style8"></td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style5">
                    <br />
&nbsp;<asp:Label ID="Label3" runat="server"   style="text-align: center; font-family: 'Times New Roman', Times, serif;  font-size: 32px;" Text="Password"></asp:Label>
                    <asp:TextBox ID="TextBox2" runat="server" style="margin-left: 0px; background-color: #FFFFFF;" TextMode="Password" Width="251px" Height="25px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Password Required!"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <br />
<br />
<br />
                    &nbsp;</td><br />
&nbsp;</tr><tr><td class="auto-style3"><asp:Label ID="Label4" runat="server" Text="Label4" Visible="False"></asp:Label>
                <br />
                </td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Button ID="Button1"  runat="server" Text="Register" OnClick="Button1_Click" style="color: #FFFFFF; margin-left: 0px; background-color: #9933FF" Width="377px" />
                </td>
                  
            </tr>

    </asp:Content>