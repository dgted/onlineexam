﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="Admin.aspx.cs" Inherits="Admin" %>


<asp:Content ID="Content1" ContentPlaceHolderID="title" Runat="Server">Admin Page
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
        <a href="addTeacher.aspx"><h2>Add<br />Teacher</h2></a>
        </div>
        <div class="dh">
        <a href="addSubject.aspx"> <h2>Add<br />Subject</h2></a> </div>
        <div class="dh">
        <a href="adduser.aspx"><h2>Add<br />Student</h2></a>
        </div>
        <br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br />
</asp:Content>

