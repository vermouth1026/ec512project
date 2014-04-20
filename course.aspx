<%@ Page Language="C#" AutoEventWireup="true" CodeFile="course.aspx.cs" Inherits="course" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="StyleSheet.css" rel="stylesheet" type="text/css" />
    <script>
        function loadNextPage()
        {
            profile1.textContent = "Hello!";
        }
    </script>
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
            <div style="width: 1000px; height: 2000px; border-bottom: 1px solid silver;">
                <div style="width: 940px; border-top: 1px solid silver; border-bottom: 1px solid silver; height: 250px; padding: 30px 30px 30px 30px">
                    <div style="width: 45%; float: left; padding: 10px 10px 10px 10px; border: 1px solid black">
                        <asp:Label runat="server" ID="num" Font-Size="X-Large">EC512</asp:Label>
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
                    <div style="width: 45%; float: left; padding: 10px 10px 10px 10px">
                        <asp:Label runat="server" ID="Score0" Font-Size="64">5.0</asp:Label>
                    </div>
                </div>
                <div id="reviews" style="padding-left: 10px; padding-right: 10px; height: 1450px">
                    <h3>Past Reviews</h3>
                    <div style="padding-left: 10px; padding-right: 10px">
                        <div style="border: 1px solid black; border-radius: 10px; height: 160px; padding: 30px 20px 20px 30px; background-color: #FFFFBF">
                            <div id="profile1" runat="server" style="width: 15%; float: left; height: 150px">
                            </div>
                            <div style="width: 83%; float: right; height: 150px">
                                <div style="height: 35px">
                                    <div style="float: left; width: 45%; padding-left: 10px">
                                        <asp:HyperLink runat="server" ID="rcc1" NavigateUrl="course.aspx?id=ec501" Text="EC501 XXXXXX" />
                                    </div>
                                    <div style="float: right; width: 45%; text-align: center">
                                        <asp:Label runat="server" ID="rcs1_0">5.0</asp:Label>
                                    </div>
                                </div>
                                <div style="text-align: left; border: 1px solid silver; height: 100px; padding: 10px 10px 10px 10px; background-color: white">
                                    <asp:Label runat="server" ID="comment1">Lorem ipsum onsectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat.</asp:Label>
                                </div>
                            </div>
                        </div>
                        <br />
                        <div style="border: 1px solid black; border-radius: 10px; height: 160px; padding: 30px 20px 20px 30px; background-color: cornsilk">
                            <div id="profile2" runat="server" style="width: 15%; float: left; height: 150px">
                            </div>
                            <div style="width: 83%; float: right; height: 150px">
                                <div style="height: 35px">
                                    <div style="float: left; width: 45%; padding-left: 10px">
                                        <asp:HyperLink runat="server" ID="rcc2" NavigateUrl="course.aspx?id=ec502" Text="EC502 XXXXXX" />
                                    </div>
                                    <div style="float: right; width: 45%; text-align: center">
                                        <asp:Label runat="server" ID="rcs2_0">5.0</asp:Label>
                                    </div>
                                </div>
                                <div style="text-align: left; border: 1px solid silver; height: 100px; padding: 10px 10px 10px 10px; background-color: white">
                                    <asp:Label runat="server" ID="comment2">Lorem ipsum onsectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat.</asp:Label>
                                </div>
                            </div>
                        </div>
                        <br />
                        <div style="border: 1px solid black; border-radius: 10px; height: 160px; padding: 30px 20px 20px 30px; background-color: #FFFFBF">
                            <div id="profile3" runat="server" style="width: 15%; float: left; height: 150px">
                            </div>
                            <div style="width: 83%; float: right; height: 150px">
                                <div style="height: 35px">
                                    <div style="float: left; width: 45%; padding-left: 10px">
                                        <asp:HyperLink runat="server" ID="rcc3" NavigateUrl="course.aspx?id=ec503" Text="EC503 XXXXXX" />
                                    </div>
                                    <div style="float: right; width: 45%; text-align: center">
                                        <asp:Label runat="server" ID="rcs3_0">5.0</asp:Label>
                                    </div>
                                </div>
                                <div style="text-align: left; border: 1px solid silver; height: 100px; padding: 10px 10px 10px 10px; background-color: white">
                                    <asp:Label runat="server" ID="comment3">Lorem ipsum onsectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat.</asp:Label>
                                </div>
                            </div>
                        </div>
                        <br style="clear: both" />
                        <button type="button" id="next" onclick="loadNextPage">Next Page</button>
                    </div>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
