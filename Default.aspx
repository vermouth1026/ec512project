<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

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
            <div style="width: 1000px; border-top: 1px solid silver; border-bottom: 1px solid silver;">
                <div style="width: 485px; float: left; text-align: left; height: 160px; border-right: 1px solid silver; padding-left: 10px">
                    <h3>Highest Scored Courses</h3>
                    <div style="width: 385px; float: left">
                        <asp:HyperLink runat="server" ID="hsc1" href="course.aspx?id=ec500">EC500 XXXXXX</asp:HyperLink>
                    </div>
                    <div style="width: 100px; float: left; text-align: center">
                        <asp:Label runat="server" ID="hss1">5.0</asp:Label>
                    </div>
                    <br style="clear: both" />
                    <div style="width: 385px; float: left">
                        <asp:HyperLink runat="server" ID="hsc2" href="course.aspx?id=ec500">EC501 XXXXXX</asp:HyperLink>
                    </div>
                    <div style="width: 100px; float: left; text-align: center">
                        <asp:Label runat="server" ID="hss2"> 4.9</asp:Label>
                    </div>
                    <br style="clear: both" />
                    <div style="width: 385px; float: left">
                        <asp:HyperLink runat="server" ID="hsc3" href="course.aspx?id=ec500">EC503 XXXXXX</asp:HyperLink>
                    </div>
                    <div style="width: 100px; float: left; text-align: center">
                        <asp:Label runat="server" ID="hss3"> 4.8</asp:Label>
                    </div>
                    <br style="clear: both" />
                    <div style="width: 385px; float: left">
                        <asp:HyperLink runat="server" ID="hsc4" href="course.aspx?id=ec500">EC504 XXXXXX</asp:HyperLink>
                    </div>
                    <div style="width: 100px; float: left; text-align: center">
                        <asp:Label runat="server" ID="hss4"> 4.7</asp:Label>
                    </div>
                    <br style="clear: both" />
                </div>
                <div style="width: 485px; float: right; text-align: left; height: 160px; padding-left: 10px">
                    <h3>Most Commented Courses</h3>
                    <div style="width: 385px; float: left">
                        <asp:HyperLink runat="server" ID="mcc1" href="course.aspx?id=ec500">EC500 XXXXXX</asp:HyperLink>
                    </div>
                    <div style="width: 100px; float: left; text-align: center">
                        <asp:Label runat="server" ID="mcs1">100</asp:Label>
                    </div>
                    <br style="clear: both" />
                    <div style="width: 385px; float: left">
                        <asp:HyperLink runat="server" ID="mcc2" href="course.aspx?id=ec500">EC501 XXXXXX</asp:HyperLink>
                    </div>
                    <div style="width: 100px; float: left; text-align: center">
                        <asp:Label runat="server" ID="mcs2">99</asp:Label>
                    </div>
                    <br style="clear: both" />
                    <div style="width: 385px; float: left">
                        <asp:HyperLink runat="server" ID="mcc3" href="course.aspx?id=ec500">EC502 XXXXXX</asp:HyperLink>
                    </div>
                    <div style="width: 100px; float: left; text-align: center">
                        <asp:Label runat="server" ID="mcs3">98</asp:Label>
                    </div>
                    <br style="clear: both" />
                    <div style="width: 385px; float: left">
                        <asp:HyperLink runat="server" ID="mcc4" href="course.aspx?id=ec500">EC503 XXXXXX</asp:HyperLink>
                    </div>
                    <div style="width: 100px; float: left; text-align: center">
                        <asp:Label runat="server" ID="mcs4">97</asp:Label>
                    </div>
                    <br style="clear: both" />
                </div>
                <br style="clear: both" />
            </div>
            <div style="padding-left: 10px; padding-right: 10px; height: 800px">
                <h3>Recent Reviews</h3>
                <div>
                    <div id="profile1" style="width: 25%; float: left; height: 200px">
                    </div>
                    <div style="width: 70%; float: right; height: 200px">
                        <div>
                            <div id="rcc1" style="float: left; width: 45%">
                            </div>
                            <div id="rcs1_0" style="float: right; width: 45%; text-align: right">
                            </div>
                        </div>
                        <div id="comment1">
                        </div>
                    </div>
                </div>
                <div>
                    <div id="profile2" style="width: 25%; float: left; height: 200px">
                    </div>
                    <div style="width: 70%; float: right; height: 200px">
                        <div>
                            <div id="rcc2" style="float: left; width: 45%">
                            </div>
                            <div id="rcs2_0" style="float: right; width: 45%; text-align: right">
                            </div>
                        </div>
                        <div id="comment2">
                        </div>
                    </div>
                </div>
                <div>
                    <div id="profile3" style="width: 25%; float: left; height: 200px">
                    </div>
                    <div style="width: 70%; float: right; height: 200px">
                        <div>
                            <div id="rcc3" style="float: left; width: 45%">
                            </div>
                            <div id="rcs3_0" style="float: right; width: 45%; text-align: right">
                            </div>
                        </div>
                        <div id="comment3">
                        </div>
                    </div>
                </div>
                <br style="clear: both" />
            </div>
        </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [COURSE]"></asp:SqlDataSource>

    </form>
</body>
</html>
