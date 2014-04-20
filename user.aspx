<%@ Page Language="C#" AutoEventWireup="true" CodeFile="user.aspx.cs" Inherits="user" %>

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
            <div style="width: 940px; border-top: 1px solid silver; border-bottom: 1px solid silver; padding: 30px 30px 30px 30px">
                <div style="width: 200px; height: 200px; float: left; padding-right: 20px">
                    <asp:Image runat="server" ID="myimg" Width="200px" Height="200px" ImageUrl="image\default.png" />
                </div>
                <div style="width: 296px; height: 176px; float: left; padding: 10px 10px 10px 10px; border: 2px solid black">
                    <asp:Label runat="server" ID="name" Font-Size="XX-Large">John Smith</asp:Label>
                    <br />
                    <br />
                    <br />
                    <asp:Label runat="server" ID="email" Font-Size="Large">Email: john@bu.edu</asp:Label>
                    <br />
                    <br />
                    <asp:Label runat="server" ID="spec" Font-Size="Large">Specialization: Software</asp:Label>
                </div>
                <div style="width: 356px; height: 176px; float: left; padding: 10px 10px 10px 10px; margin-left: 20px; border: 2px solid silver; overflow-y: scroll; background-color: whitesmoke">
                    <a href="course.aspx">EC500 XXXX XXXX XXXX XXXX</a><br />
                    <a href="course.aspx">EC500 XXXX XXXX XXXX XXXX</a><br />
                    <a href="course.aspx">EC500 XXXX XXXX XXXX XXXX</a><br />
                    <a href="course.aspx">EC500 XXXX XXXX XXXX XXXX</a><br />
                    <a href="course.aspx">EC500 XXXX XXXX XXXX XXXX</a><br />
                    <a href="course.aspx">EC500 XXXX XXXX XXXX XXXX</a><br />
                    <a href="course.aspx">EC500 XXXX XXXX XXXX XXXX</a><br />
                    <a href="course.aspx">EC500 XXXX XXXX XXXX XXXX</a><br />
                    <a href="course.aspx">EC500 XXXX XXXX XXXX XXXX</a><br />
                    <a href="course.aspx">EC500 XXXX XXXX XXXX XXXX</a><br />
                    <a href="course.aspx">EC500 XXXX XXXX XXXX XXXX</a><br />
                    <a href="course.aspx">EC500 XXXX XXXX XXXX XXXX</a><br />
                </div>
                <br style="clear: both" />
                <div id="edit" style="width: 100%; text-align: right"><a href="edit.aspx">[Edit]</a></div>
                <div id="recommend" style="width: 100%; text-align: left">
                    <h3>Recommended Courses for You</h3>
                    <div style="height: 30px; padding: 10px 10px 10px 10px; border: 1px solid silver; background-color: ivory">
                        <div style="width: 40%; float: left; height: 30px">
                            <asp:HyperLink ID="rcmd1" runat="server" Text="EC500 XXXX XXXX XXXX" NavigateUrl="course.aspx"></asp:HyperLink>
                        </div>
                        <div style="width: 60%; float: left; height: 30px">
                            <asp:Label ID="reason1" runat="server" Text="Here is the reason!"></asp:Label>
                        </div>
                        <br style="clear: both" />
                    </div>
                    <br />
                    <div style="height: 30px; padding: 10px 10px 10px 10px; border: 1px solid silver; background-color: ivory">
                        <div style="width: 40%; float: left; height: 30px">
                            <asp:HyperLink ID="rcmd2" runat="server" Text="EC500 XXXX XXXX XXXX" NavigateUrl="course.aspx"></asp:HyperLink>
                        </div>
                        <div style="width: 60%; float: left; height: 30px">
                            <asp:Label ID="reason2" runat="server" Text="Here is the reason!"></asp:Label>
                        </div>
                        <br style="clear: both" />
                    </div>
                    <br />
                    <div style="height: 30px; padding: 10px 10px 10px 10px; border: 1px solid silver; background-color: ivory">
                        <div style="width: 40%; float: left; height: 30px">
                            <asp:HyperLink ID="rcmd3" runat="server" Text="EC500 XXXX XXXX XXXX" NavigateUrl="course.aspx"></asp:HyperLink>
                        </div>
                        <div style="width: 60%; float: left; height: 30px">
                            <asp:Label ID="reason3" runat="server" Text="Here is the reason!"></asp:Label>
                        </div>
                        <br style="clear: both" />
                    </div>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
