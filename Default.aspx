<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="StyleSheet.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
        <div style="width: 1000px; background-color: white">
            <div id="logo" runat="server" style="width: 1000px; height: 100px">
            </div>
            <div style="width: 45%; float:left; background-color:transparent">
                <a href="Default.aspx">Home</a> <a href="courselist.aspx">Course</a>
            </div>
            <div style="width: 45%; float:right; text-align: right; background-color:transparent">
                <a href="login.aspx">Log In</a> <a href="register.aspx">Register</a>
            </div>
            <br style="clear:both"/>
        </div>
    </form>
</body>
</html>
