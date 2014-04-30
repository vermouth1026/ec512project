<%@ Page Language="C#" AutoEventWireup="true" CodeFile="confirm.aspx.cs" Inherits="confirm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="StyleSheet.css" rel="stylesheet" type="text/css" />
    <title>Registration completed</title>
</head>
<body>
    <form id="form1" runat="server">
        <div style="text-align:center">
            <asp:Label runat="server" ID="msg">Registration Succeeded!</asp:Label><br />
            <a href="Default.aspx">Return</a>
        </div>
    </form>
</body>
</html>
