<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PrintRecord.aspx.cs" Inherits="ENTDBAS_Final_PRoject.PrintRecord" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 801px;
            height: 131px;
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
    <img alt="Banner" id="style1" src="CLASSROOM_SCHEDULE_DATABASE_SYSTEM_BANNER.jpg" />
 
    <div id="option">
    <p><a href ="AddRecord.aspx">Add Record</a></p>
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
    <div id="selectedoption">
    <p>Print Record</p>
    </div>
    <a href=Login.aspx>Logout</a>
    <div id="workarea">
    
    </div>

    </div>
    </div>
    </form>
</body>
</html>
