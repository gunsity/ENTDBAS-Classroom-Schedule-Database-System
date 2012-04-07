<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddRecord.aspx.cs" Inherits="ENTDBAS_Final_PRoject.AddRecord" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 799px;
            height: 128px;
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
        #option
        {
            background-color:AppWorkspace;
            width:130px;
            height:50px;
            margin-top:-15px;
            font-size:20px;
            text-align:center;
        }
        #selectedoption
        {
            background-color:White;
            width:130px;
            height:50px;
            margin-top:-15px;
            font-size:20px;
            text-align:center;
        }
        #workarea
        {
            background-color:White;
            width:650px;
            height:650px;
            margin-left:130px;
            margin-top:-290px;
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
    <div id="selectedoption">
    <p>Add Record</p>
    </div>
    <div id="option">
    <p><a href ="EditRecord.aspx">Edit Record</a></p>
    </div>
    <div id="option">
    <p><a href ="DeleteRecord.aspx">Delete Record</a></p>
    </div>
    <div id="option">
    <p><a href ="ViewRecord.aspx">View Record</a></p>
    </div>
    <div id="option">
    <p><a href ="PrintRecord.aspx">Print Record</a></p>
    </div>
    <a href=Login.aspx>Logout</a>
    <div id="workarea">
    <center>
    Add Subject
    <table border = 1>
    <tr>
    <td>Subject Code:</td><td>
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        </td>
    
    </tr>
    <tr>
    <td>Subject Name:</td><td><asp:TextBox ID="TextBox2" runat="server"></asp:TextBox></td>    
    </tr>
    <tr>
    <td></td><td><asp:Button ID="Button1" runat="server" Text="Add Subject" 
            onclick="Button1_Click" /></td>
    </tr>
    </table>
    <br />
    Add User Account
    <table border = 1>
    <tr>
    <td>Username:</td><td><asp:TextBox ID="TextBox3" runat="server"></asp:TextBox></td>
    </tr>
    <tr>
    <td>Password:</td><td><asp:TextBox ID="TextBox4" Textmode="Password" runat="server"></asp:TextBox></td>
    </tr>
    <tr>
    <td></td><td><asp:Button ID="Button2" runat="server" Text="Add Account" 
            onclick="Button2_Click" /></td>
    </tr>
    </table>
    <br />
    Add Professor
    <table border = 1>
    <tr>
    <td>Name:</td><td><asp:TextBox ID="TextBox5" runat="server"></asp:TextBox></td>
    </tr>
    <tr>
    <td>Gender:</td><td><asp:TextBox ID="TextBox6" runat="server"></asp:TextBox></td>
    </tr>
    <tr>
    <td>Department:</td><td><asp:TextBox ID="TextBox7" runat="server"></asp:TextBox></td>
    </tr>
    <tr>
    <td></td><td><asp:Button ID="Button3" runat="server" Text="Add Professor" 
            onclick="Button3_Click" /></td>
    </tr>
    </table>
    <br />
    Add Room
    <table border = 1>
    <tr>
    <td>Room Number:</td><td><asp:TextBox ID="TextBox8" runat="server"></asp:TextBox></td>
    </tr>
    <tr>
    <td>Building:</td><td><asp:TextBox ID="TextBox9" runat="server"></asp:TextBox></td>
    </tr>
    <tr>
    <td>Floor:</td><td><asp:TextBox ID="TextBox10" runat="server"></asp:TextBox></td>
    </tr>
    <tr>
    <td></td><td><asp:Button ID="Button4" runat="server" Text="Add Room" 
            onclick="Button4_Click" /></td>
    </tr>
    Add Section
    <table border = 1>
    <tr>
    <td>Section:</td><td><asp:TextBox ID="TextBox11" runat="server"></asp:TextBox></td>
    </tr>
    <tr>
    <td></td><td><asp:Button ID="Button5" runat="server" Text="Add Section" 
            onclick="Button5_Click" /></td>
    </table>
    </center>

        
    </div>
    
    </div>
    </div>
    </form>
</body>
</html>
