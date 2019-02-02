<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage3.master" AutoEventWireup="true" CodeFile="teacher.aspx.cs" Inherits="teacher" %>


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

</style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="body" Runat="Server">
        <div class="dh">
        <a href="setqpaper.aspx"><h2>Add<br />Questions</h2></a>
        </div>
        <div class="dh">
        <a href="paperview.aspx"> <h2>Edit / Delete Questions</h2></a> </div>
        <div class="dh">
        <a href="report.aspx"><h2>Results</h2></a>
        </div>
        <br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br />
</asp:Content>

