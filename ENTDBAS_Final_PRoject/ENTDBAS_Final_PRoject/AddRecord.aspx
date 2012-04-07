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
         #banner
        {
            margin-left: 225px;
            margin-top:-14px;
        }
        #body
        {
            background-color:Gray;
            width: 800px;
            height: 800px;
            margin-left:225px;
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
            height:800px;
            margin-left:130px;
            margin-top:-270px;
        }
    </style>
</head>
<body bgcolor="#339933">
    <form id="form1" runat="server">
    <div id="banner">  
        <img align="middle" alt="Banner" class="style1" 
            src="CLASSROOM_SCHEDULE_DATABASE_SYSTEM_BANNER.jpg" /></div>
    <div id="body">    
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
    <div id="workarea">
    
    </div>

    </div>
    </form>
</body>
</html>
