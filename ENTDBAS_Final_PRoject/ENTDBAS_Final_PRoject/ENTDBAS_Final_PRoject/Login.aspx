<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="ENTDBAS_Final_PRoject.Login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 795px;
            height: 126px;
        }
        #body
        {
            background-color:Gray;
            width: 800px;
            height: 800px;
            margin-left:auto;
            margin-right:auto;
            margin-top:-15px;
        }
        #style1
        {
            height: 128px;
            width: 799px;
        }
    </style>
</head>
<body bgcolor="#339933">
    <form id="form1" runat="server">
 
    <div id="container">
    <div id="body">
    <img alt="Banner" id="style1" 
            src="CLASSROOM_SCHEDULE_DATABASE_SYSTEM_BANNER.jpg" />
    <br />
    <br />
    <br />
    <br />
    <center>
    <table>
    <tr>
    <td>
        <asp:Label ID="Label1" runat="server" Text="Username"></asp:Label>
        </td>
   <td>
            <asp:TextBox ID="txt_username" runat="server" MaxLength="20" Width="173px"></asp:TextBox>
        </td>
    </tr>
    <tr>
    <td>
        <asp:Label ID="Label2" runat="server" Text="Password"></asp:Label>
        </td><td>
            <asp:TextBox ID="txt_password" runat="server" TextMode="Password" MaxLength="50" 
                Width="171px"></asp:TextBox>
        </td>
    </tr>
    <tr>
    <td>
    </td>
    <td>
    <br />
        <asp:Button ID="Button1" runat="server" Text="Login" onclick="Button1_Click" 
            Height="29px" Width="49px" />
        </td>
    </tr>
    </table>
    </center>
    </div>
    </div>
    </form>
</body>
</html>
