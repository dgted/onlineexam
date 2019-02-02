<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage4.master" AutoEventWireup="true" CodeFile="a.aspx.cs" Inherits="a" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" Runat="Server">Rules
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
        .style1
        {
            width: 1024px;  
        }
        .style2{
            font-family: "Monotype Corsiva";
            font-size : xx-large;
            font-weight: bold;
            color: #3399FF;
            text-align: center;
            padding :0;
}
        .style4{
            width: 100%;
        }
        .style5 {
            text-align: center;
               color:white;
        }
  .style12 {
            text-align: center;
            width: 165px;

        }
  .style14 {
            text-align: center;
            width: 166px;

        }
 .style20 {
              color:white;
            width: 167px;
             text-align: center;
        }
 .style21 {
              color:white;
            width: 254px;
             text-align: center;
        }
 .style22 {
           color:white;
            width: 200px;
             text-align: center;
        }
        .style23{
            width: 166px;
            color: #FFFFFF;
            text-align: center;
            padding :0;
            text-decoration: underline;
}
             body{
  margin:0;
  padding: 0;
  font-family: sans-serif;
  background:white;
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
ul li a:hover .name span{
  transform:translateY(20px);
}
        .auto-style1 {
        color: #FFFFFF;
        width: 245px;
        text-align: center;
        font-weight: bold;
        background-color: #3333CC;
    }
    .auto-style2 {
        width: 245px;
        text-align: center;
        background-color: #FFFFFF;
            font-weight: 700;
            color: #CC0000;
        }
    .auto-style4 {
        color: #FFFFFF;
        width: 308px;
        text-align: center;
        font-weight: bold;
        background-color: #3333CC;
    }
    .auto-style5 {
        width: 308px;
        text-align: center;
        background-color: #FFFFFF;
            font-weight: 700;
        }
    .auto-style6 {
        color: #FFFFFF;
        text-align: center;
        width: 303px;
        font-weight: bold;
        background-color: #3333CC;
    }
    .auto-style7 {
        text-align: center;
        width: 303px;
        background-color: #FFFFFF;
            font-weight: 700;
        }
    .auto-style9 {
        text-align: center;
        width: 365px;
        background-color: #FFFFFF;
            font-weight: 700;
        }
    .auto-style10 {
        color: #FFFFFF;
        text-align: center;
        font-weight: bold;
        background-color: #3333CC;
    }
    .auto-style11 {
        text-align: center;
        width: 365px;
        font-weight: bold;
        background-color: #3333CC;
    }
    .auto-style12 {
        text-align: center;
        background-color: #FFFFFF;
            font-weight: 700;
        }


        .auto-style13 {
            font-size: large;
        }


        .previous {
  background-color: black;
  color: white;
}


        </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="body" Runat="Server">



              
                     <span class="auto-style13">
                     <br />
                     Showning



              
                     &nbsp;<asp:Label ID="Label1" runat="server" Text=""></asp:Label>
                     &#39;s Result Table 
                     <br />
                     </span>
                     <table align="center" class="style4">
                         <tr>
                             <td class="auto-style4">User</td>
                             <td class="auto-style6">Date and Time</td>
                             <td class="auto-style11"><span class="fa-inverse">Subject</span></td>
                             <td class="auto-style1">Obtained Marks </td>
                             <td class="auto-style10">Total Marks</td>
                         </tr>
                         <%
                             while (dr.Read())
                           {
                                %>
                         <tr>
                             <td ="style22"="" class="auto-style5" color="black">
                                 <%=dr.GetValue(0) %> </td>
                             <td ="style22"="" class="auto-style7" color="black">
                                 <%=dr.GetValue(1) %> </td>
                             <td ="style21"="" class="auto-style9" color="black">
                                 <%=dr.GetValue(2) %> </td>
                             <td ="style20"="" class="auto-style2" color="black">
                                 <%=dr.GetValue(3) %> </td>
                             <td ="style5"="" class="auto-style12" color="black">
                                 <%=dr.GetValue(4) %> </td>
                         </tr>
                         <%
                             
                         }
                             %>
                             </table>
                     <br />
                   
                         <asp:button ID="Button3" runat="server" Width="119px"
            OnClientClick="JavaScript:window.history.back(1);return false;" style="text-align: center; color: #FFFFFF; margin-bottom: 9px; background-color: #FF0000;" BorderStyle="None" Font-Names="Lucida Sans Unicode" Font-Size="15pt" Height="28px" Text="Go Back" />
                             
                     <br />
    <br />

</asp:Content>