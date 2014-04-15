<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="StyleSheet.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
        <div style="width: 1000px; background-color: white; border: 1px solid silver">
            <div id="logo" runat="server" style="width: 1000px; height: 100px">
            </div>
            <div style="width: 45%; float: left; height: 30px">
                <a href="Default.aspx">Home</a> <a href="courselist.aspx">Course</a>
            </div>
            <div style="width: 45%; float: right; text-align: right; height: 30px">
                <a href="login.aspx">Log In</a> <a href="register.aspx">Register</a>
            </div>
            <div style="width: 490px; float: left; text-align: left; height: 150px; border: 1px solid silver; border-left: 0px; border-right: 0px; padding-left: 10px">
                <h3>Highest Scored Courses</h3>
                <div style="width: 350px; float: left"><a id="hsc1" href="course.aspx?id=ec500">EC500 XXXXXX</a></div>
                <div style="width: 140px; float: left; text-align: center">
                    <asp:Label runat="server" ID="hss1">5.0</asp:Label>
                </div>
                <br style="clear: both" />
                <div style="width: 350px; float: left"><a id="hsc2" href="course.aspx?id=ec500">EC501 XXXXXX</a></div>
                <div style="width: 140px; float: left; text-align: center">
                    <asp:Label runat="server" ID="hss2"> 4.9</asp:Label>
                </div>
                <br style="clear: both" />
                <div style="width: 350px; float: left"><a id="hsc3" href="course.aspx?id=ec500">EC502 XXXXXX</a></div>
                <div style="width: 140px; float: left; text-align: center">
                    <asp:Label runat="server" ID="hss3"> 4.8</asp:Label>
                </div>
                <br style="clear: both" />
                <div style="width: 350px; float: left"><a id="hsc4" href="course.aspx?id=ec500">EC503 XXXXXX</a></div>
                <div style="width: 140px; float: left; text-align: center">
                    <asp:Label runat="server" ID="hss4"> 4.7</asp:Label>
                </div>
                <br style="clear: both" />
            </div>
            <div style="width: 489px; float: right; text-align: left; height: 150px; border: 1px solid silver; border-right: 0px; padding-left: 10px">
                <h3>Most Commented Courses</h3>
                <div style="width: 349px; float: left"><a id="mcc1" href="course.aspx?id=ec500">EC500 XXXXXX</a></div>
                <div style="width: 140px; float: left; text-align: center">
                    <asp:Label runat="server" ID="mcs1">100</asp:Label>
                </div>
                <br style="clear: both" />
                <div style="width: 349px; float: left"><a id="mcc2" href="course.aspx?id=ec500">EC501 XXXXXX</a></div>
                <div style="width: 140px; float: left; text-align: center">
                    <asp:Label runat="server" ID="mcs2">99</asp:Label>
                </div>
                <br style="clear: both" />
                <div style="width: 349px; float: left"><a id="mcc3" href="course.aspx?id=ec500">EC502 XXXXXX</a></div>
                <div style="width: 140px; float: left; text-align: center">
                    <asp:Label runat="server" ID="mcs3">98</asp:Label>
                </div>
                <br style="clear: both" />
                <div style="width: 349px; float: left"><a id="mcc4" href="course.aspx?id=ec500">EC503 XXXXXX</a></div>
                <div style="width: 140px; float: left; text-align: center">
                    <asp:Label runat="server" ID="mcs4">97</asp:Label>
                </div>
                <br style="clear: both" />
            </div>
            <br style="clear: both" />
        </div>
    </form>
</body>
</html>
