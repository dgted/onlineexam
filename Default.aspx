<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Online Exam System</title>
    <style type="text/css">
        .style2 {
         font-family:'Times New Roman', Times, serif;
         font-size: 32px;

        }
        .auto-style1 {
            width: 100%;
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
                body{
  margin:0;
  padding: 0;
  font-family: sans-serif;
  background:white;
}
ul{
  position: absolute;
  top: 30%;
  left: 50%;
  transform:translate(-50%, -50%);
  margin: 0;
  padding: 20px 0;
  background:#fff;
  display:flex;
  border-right:10px;
  border-radius: 10px;
  box-shadow: 0 10px 30px rgba(0,0,0,.3);  
}
ul li{
  list-style:none;
  text-align:center;
  display:block;
  border-right:1px solid rgba(0,0,0,0.2);
}
ul li:last-child{
  border-right:none;
}
ul li a{
  text-decoration:none;
  padding: 0 50px;
  display: block;
}
ul li a .icon{
  width:40px;
  height:40px;
  text-align:center;
/*   background:#ccc; */
  overflow:hidden;
  margin: 0 auto 10px;
}
ul li a .icon .fa{
  width:100%;
  height:100%;
  line-height:40px;
  font-size:34px;
  transition:0.5s;
  color:#000;
}
ul li a .icon .fa:last-child{
  color:#e91e63;
}
ul li a:hover .icon .fa{
  transform:translateY(-100%);
}
ul li a .name{
  position:relative;
  height:20px;
  width:100%;
  display:block;
  overflow:hidden;
}
ul li a .name span{
  display:block;
  position:relative;
  color:#000;
  font-size:18px;
  line-height:20px;
  transition:0.5s;
  
}
ul li a .name span:before{
  content: attr(data-text);
  position: absolute;
  top:-100%;
  left:0;
  width:100%;
  height:100%;
  color:#e91e63;
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
    </style>
     <link href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
</head>
<body bgcolor="White">
    <form id="form1" runat="server">
    <div>
    
        <table class="auto-style1" align="center">
            <tr>
                <td class="style2" align="center" >Online Exam System</td>
            </tr>
            <tr>
                <td bgcolor=" #666666">
                    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
             <ul>
    <li>
      <a href="adduser.aspx">
        <div class="icon">
           
          <i class="fa fa-user-plus" aria-hidden="true"></i>
          <i class="fa fa-user-plus" aria-hidden="true"></i>
        </div>
        <div class="name"><span data-text="Add Student">Add Student</span></div>
      </a>
    </li>
    <li>
      <a href="deleteuser.aspx">
        <div class="icon">
          <i class="fa fa-user-times" aria-hidden="true"></i>
          <i class="fa fa-user-times" aria-hidden="true"></i>
        </div>
        <div class="name"><span data-text="Delete Student">Delete Student</span></div>
      </a>
    </li>
    <li>
      <a href="setqpaper.aspx">
        <div class="icon">
         <i class="fa fa-edit" aria-hidden="true"></i>
          <i class="fa fa-edit" aria-hidden="true"></i>
        </div>
        <div class="name"><span data-text="Set Question">Set Question</span></div>
      </a>
    </li>
    <li>
      <a href="paperview.aspx">
        <div class="icon">
          <i class="fa fa-eye" aria-hidden="true"></i>
          <i class="fa fa-eye" aria-hidden="true"></i>
        </div>
        <div class="name"><span data-text=">View Question">View Question</span></div>
      </a>
    </li>
    <li>
      <a href="deletepaper.aspx">
        <div class="icon">
          <i class="fa fa-trash" aria-hidden="true"></i>
          <i class="fa fa-trash" aria-hidden="true"></i>
    </div>
        <div class="name"><span data-text="Delete Question">Delete Question</span></div>
      </a>
    </li>
    <li>
      <a href="report.aspx">
        <div class="icon">
         <i class="fa fa-file" aria-hidden="true"></i>
          <i class="fa fa-file" aria-hidden="true"></i>
        </div>
        <div class="name"><span data-text="Results">Results</span></div>
      </a>

    </li>
                            <li>   <a href="adminlogout.aspx">
        <div class="icon">
         <i class="fa-angle-right" aria-hidden="true"></i>
          <i class="fa-angle-right" aria-hidden="true"></i>
        </div>
        <div class="name"><span data-text="LOGOUT">LOGOUT</span></div>
      </a></li>
  </ul>
             
            <tr>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td bgcolor="#666666">&nbsp;</td>
            </tr>
            <tr>
                <td bgcolor="white" style="text-align: center">&nbsp;</td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
