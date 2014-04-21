<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Log in page</title>
    <link href="StyleSheet.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
        <div style="width: 1000px; border: 1px solid silver; background-color: white; overflow: hidden">
            <div id="logo" runat="server" style="width: 1000px; height: 120px">
            </div>
            <div id="navi1" style="width: 1000px; border-top: 1px solid silver; overflow: hidden">
                <div id="navigate1" style="width: 490px; float: left; padding-left: 10px; padding-top: 10px; height: 30px; background-color: cornsilk">
                    <a href="Default.aspx">Home</a>&nbsp&nbsp<a href="courselist.aspx">Course</a>
                </div>
                <div id="account1" style="width: 490px; float: right; text-align: right; padding-right: 10px; padding-top: 10px; height: 30px; background-color: cornsilk">
                    <a href="login.aspx">Log in</a>&nbsp&nbsp<a href="register.aspx">Register</a>
                </div>
                <br style="clear: both" />
            </div>
            <div style="width: 1000px; border-top: 1px solid silver; text-align: center; overflow: hidden">
                <br />
                <h3>Log in</h3>
                <div style="width: 400px; height: 200px; border: 1px solid silver; background-color: seashell">
                    <div style="width: 140px; height: 200px; padding-right: 10px; float: left">
                        <br />
                        <div style="width: 100%; height: 30px; text-align: right">Username</div>
                        <div style="width: 100%; height: 30px; text-align: right">Password</div>
                    </div>
                    <div style="width: 240px; height: 200px; padding-left: 10px; float: left; text-align: left">
                        <br />
                        <div style="width: 100%; height: 30px; text-align: left">
                            <asp:TextBox ID="username" Width="160px" Height="20px" runat="server"></asp:TextBox></div>
                        <div style="width: 100%; height: 30px; text-align: left">
                        <asp:TextBox TextMode="Password" ID="password" Width="160px" Height="20px" runat="server"></asp:TextBox></div>
                        <br />
                        <asp:Button id="submit" runat="server" Width="80px" Height="30px" Text="Log in"/>
                        <br />
                        <br />
                        <asp:Label runat="server" ID="error" ForeColor="red" Text="Da Shui Bi!"></asp:Label>
                    </div>
                    <br style="clear: both" />
                </div>
                <br />
            </div>
        </div>
    </form>
</body>
</html>
