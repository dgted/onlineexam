<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage3.master" AutoEventWireup="true" CodeFile="editqpaper.aspx.cs" Inherits="editqpaper" %>


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
            width: 672px;
        }
        .auto-style2 {
            width: 670px;
        }
        .auto-style4 {
            width: 387px;
        }

        .auto-style5 {
            width: 503px;
        }

    </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="body" Runat="Server">
            <tr>
                <td class="auto-style8" colspan="1" rowspan="1">&nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2" colspan="2">
                    <br />
<br />
<br />
                    <asp:TextBox ID="question" runat="server" Height="60px" style="margin-left: 0px" Width="661px"></asp:TextBox>
                <br />
<br />
                </td>
            </tr>
            <tr>
                <td class="auto-style8">
                    <br />
                    <asp:TextBox ID="opt1" runat="server" Width="469px"></asp:TextBox>
                </td>
                <td>
                    <asp:RadioButton ID="RadioButton1" runat="server" GroupName="opt"  />
                <br />
                </td>
            </tr>
            <tr>
                <td class="auto-style6">
                    <asp:TextBox ID="opt2" runat="server" Width="469px"></asp:TextBox>
                </td>
                <td class="auto-style7">
                    <asp:RadioButton ID="RadioButton2" runat="server" GroupName="opt" />
                <br />
                </td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <asp:TextBox ID="opt3" runat="server" Width="469px"></asp:TextBox>
                </td>
                <td class="auto-style5">
                    <asp:RadioButton ID="RadioButton3" runat="server" GroupName="opt"  />
                <br />
                </td>
            </tr>
            <tr>
                <td class="auto-style6">
                    <asp:TextBox ID="opt4" runat="server" Width="469px"></asp:TextBox>
                </td>
                <td class="auto-style7">
                    <asp:RadioButton ID="RadioButton4" runat="server" GroupName="opt" />
                <br />
<br />
<br />
                </td>
            </tr>
            <tr>
                <td class="auto-style4">
                    &nbsp;</td>
                <td class="auto-style5"></td>
            </tr>
            <tr>
                <td class="auto-style8" colspan="2">
                    <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Text="Update" Width="224px" />
                    <asp:Button ID="Button5" runat="server" OnClick="Button5_Click" Text="Delete" Width="224px" />
                    <asp:Button ID="Button6" runat="server" OnClick="Button6_Click" Text="View Paper" Width="224px" />
                <br />
<br />
                </td>
            </tr>
</asp:Content>