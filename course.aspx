<%@ Page Language="C#" AutoEventWireup="true" CodeFile="course.aspx.cs" Inherits="course" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="StyleSheet.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
        <div style="width: 1000px; border: 1px solid silver; background-color: white">
            <div id="logo" runat="server" style="width: 1000px; height: 120px">
            </div>
            <div style="width: 1000px; border-top: 1px solid silver">
                <div id="navigate" style="width: 490px; float: left; padding-left: 10px; padding-top: 10px; height: 30px; background-color: cornsilk">
                    <a href="Default.aspx">Home</a>&nbsp&nbsp<a href="courselist.aspx">Course</a>
                </div>
                <div id="account" style="width: 490px; float: right; text-align: right; padding-right: 10px; padding-top: 10px; height: 30px; background-color: cornsilk">
                    <a href="login.aspx">Log In</a>&nbsp&nbsp<a href="register.aspx">Register</a>
                </div>
            </div>
            <br style="clear: both" />
            <div style="width: 940px; border-top: 1px solid silver; border-bottom: 1px solid silver; height: 2000px; padding: 30px 30px 30px 30px">
                <div style="width: 416px; height: 246px; float: left; padding: 10px 10px 10px 10px; border: 2px solid black">
                    <asp:Label runat="server" ID="num" Font-Size="XX-Large">EC512</asp:Label>
                    <br />
                    <br />
                    <br />
                    <asp:Label runat="server" ID="name" Font-Size="Large">Name: Enterprise Client-Server Software Systems Design</asp:Label>
                    <br />
                    <br />
                    <asp:Label runat="server" ID="prof" Font-Size="Large">Professor: Thomas P. Skinner</asp:Label>
                    <br />
                    <br />
                    <asp:Label runat="server" ID="spec" Font-Size="Large">Specialization: Software</asp:Label>
                </div>
                <div style="width: 480px; height: 270px; float: right">
                    <div style="float: left; width: 178px; height: 268px; background-color: tomato; border: 1px solid white; text-align: center">
                        <br />
                        <br />
                        <br />
                        <asp:Label ID="score0" runat="server" Font-Size="32" ForeColor="white" Width="178px">TOTAL<br />5.0</asp:Label>
                    </div>
                    <div style="float: left; width: 290px; height: 270px">
                        <div style="float: left; width: 288px; height: 88px; background-color: orange; border: 1px solid white; text-align: center">
                            <br />
                            <asp:Label ID="score1" runat="server" Font-Size="24" ForeColor="white" Width="298px">Professor: 5.0</asp:Label>
                        </div>
                        <div style="float: left; width: 288px; height: 88px; background-color: deepskyblue; border: 1px solid white; text-align: center">
                            <br />
                            <asp:Label ID="score2" runat="server" Font-Size="24" ForeColor="white" Width="298px">Contents: 5.0</asp:Label>
                        </div>
                        <div style="float: left; width: 288px; height: 88px; background-color: seagreen; border: 1px solid white; text-align: center">
                            <br />
                            <asp:Label ID="score3" runat="server" Font-Size="24" ForeColor="white" Width="298px">Hardness: 5.0</asp:Label>
                        </div>
                    </div>
                </div>
                <br style="clear: both" />
                <div style="width: 100%; padding-top: 25px; padding-bottom: 25px">Description goes here.</div>
            </div>
        </div>
    </form>
</body>
</html>
