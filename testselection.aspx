<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage4.master" AutoEventWireup="true" CodeFile="testselection.aspx.cs" Inherits="testselection" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" Runat="Server">Rules
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            color: #000066;
        }
    </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="body" Runat="Server">
                                                    <div class="dropdown">
                                                        <br />
                                                        <br />
                                                        <br />
     <asp:DropDownList ID="testlist" AppendDataBoundItems="true" runat="server"  CssClass="ddl" Width="192px" BackColor="#F6F1DB" ForeColor="#7d6754" Font-Names="Andalus" style=" text-align: center;"  DataSourceID ="SqlDataSource1" DataTextField ="settype" DataValueField="settype" Height="57px">  <asp:ListItem Text="Select your Subject" Value="" /> </asp:DropDownList>
                                                        
                                            </div>
                                                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:LoginConnectionString %>" SelectCommand="SELECT DISTINCT [settype] FROM [question]"> </asp:SqlDataSource>

       
     

       
          <table class="auto-style1">
              <tr>
                  <td>
                      <table class="auto-style1">
                          <tr>
                              <td>&nbsp;</td>
                              <td>
                                  <br />
                                  <br />
                                  <br />
                                  <br />
                              </td>
                          </tr>
                          <tr>
                              <td>&nbsp;</td>
                              <td>&nbsp;</td>
                          </tr>
                      </table>
                  </td>
              </tr>
        </table>
       
     

       
          <asp:Button ID="Button1" CssClass="dd2" runat="server" onclick="Button1_Click" Text="Start Exam" Width="313px" />
       
 
                                                    <br />
                                                    <br />
                                                    <br />
                                                    <br />
                                                    <br />
       
 
</asp:Content>