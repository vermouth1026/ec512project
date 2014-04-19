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
                        <asp:HyperLink runat="server" ID="hsc1" NavigateUrl="course.aspx?id=ec500" Text="EC500 XXXXXX" />
                    </div>
                    <div style="width: 100px; float: left; text-align: center">
                        <asp:Label runat="server" ID="hss1">5.0</asp:Label>
                    </div>
                    <br style="clear: both" />
                    <div style="width: 385px; float: left">
                        <asp:HyperLink runat="server" ID="hsc2" NavigateUrl="course.aspx?id=ec501" Text="EC501 XXXXXX" />
                    </div>
                    <div style="width: 100px; float: left; text-align: center">
                        <asp:Label runat="server" ID="hss2"> 4.9</asp:Label>
                    </div>
                    <br style="clear: both" />
                    <div style="width: 385px; float: left">
                        <asp:HyperLink runat="server" ID="hsc3" NavigateUrl="course.aspx?id=ec502" Text="EC502 XXXXXX" />
                    </div>
                    <div style="width: 100px; float: left; text-align: center">
                        <asp:Label runat="server" ID="hss3"> 4.8</asp:Label>
                    </div>
                    <br style="clear: both" />
                    <div style="width: 385px; float: left">
                        <asp:HyperLink runat="server" ID="hsc4" NavigateUrl="course.aspx?id=ec503" Text="EC503 XXXXXX" />
                    </div>
                    <div style="width: 100px; float: left; text-align: center">
                        <asp:Label runat="server" ID="hss4"> 4.7</asp:Label>
                    </div>
                    <br style="clear: both" />
                </div>
                <div style="width: 495px; float: right; text-align: left; height: 160px; padding-left: 0px">
                    <h3>Most Commented Courses</h3>
                    <div style="width: 385px; float: left">
                        <asp:HyperLink runat="server" ID="mcc1" NavigateUrl="course.aspx?id=ec500" Text="EC500 XXXXXX" />
                    </div>
                    <div style="width: 100px; float: left; text-align: center">
                        <asp:Label runat="server" ID="mcs1">100</asp:Label>
                    </div>
                    <br style="clear: both" />
                    <div style="width: 385px; float: left">
                        <asp:HyperLink runat="server" ID="mcc2" NavigateUrl="course.aspx?id=ec501" Text="EC501 XXXXXX" />
                    </div>
                    <div style="width: 100px; float: left; text-align: center">
                        <asp:Label runat="server" ID="mcs2">99</asp:Label>
                    </div>
                    <br style="clear: both" />
                    <div style="width: 385px; float: left">
                        <asp:HyperLink runat="server" ID="mcc3" NavigateUrl="course.aspx?id=ec502" Text="EC502 XXXXXX" />
                    </div>
                    <div style="width: 100px; float: left; text-align: center">
                        <asp:Label runat="server" ID="mcs3">98</asp:Label>
                    </div>
                    <br style="clear: both" />
                    <div style="width: 385px; float: left">
                        <asp:HyperLink runat="server" ID="mcc4" NavigateUrl="course.aspx?id=ec503" Text="EC503 XXXXXX" />
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
                <div style="padding-left:10px;padding-right:10px">
                    <div style="border: 1px solid black; border-radius: 10px; height: 210px; padding: 10px 10px 10px 10px; background-color:#FFFFBF">
                        <div id="profile1" style="width: 20%; float: left; height: 200px">
                        </div>
                        <div style="width: 75%; float: right; height: 200px">
                            <div style="height: 35px">
                                <div style="float: left; width: 45%; padding-left: 10px; padding-top: 10px">
                                    <asp:HyperLink runat="server" ID="rcc1" NavigateUrl="course.aspx?id=ec501" Text="EC501 XXXXXX" />
                                </div>
                                <div style="float: right; width: 45%; text-align: center; padding-top: 10px">
                                    <asp:Label runat="server" ID="rcs1_0">5.0</asp:Label>
                                </div>
                            </div>
                            <div style="text-align: left; border: 1px solid silver; height: 150px; padding: 10px 10px 10px 10px; background-color: white">
                                <asp:Label runat="server" ID="comment1">Lorem ipsum onsectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat.</asp:Label>
                            </div>
                        </div>
                    </div>
                    <br />
                    <div style="border: 1px solid black; border-radius: 10px; height: 210px; padding: 10px 10px 10px 10px; background-color:#FFFFBF">
                        <div id="profile2" style="width: 20%; float: left; height: 200px">
                        </div>
                        <div style="width: 75%; float: right; height: 200px">
                            <div style="height: 35px">
                                <div style="float: left; width: 45%; padding-left: 10px; padding-top: 10px">
                                    <asp:HyperLink runat="server" ID="rcc2" NavigateUrl="course.aspx?id=ec502" Text="EC502 XXXXXX" />
                                </div>
                                <div style="float: right; width: 45%; text-align: center; padding-top: 10px">
                                    <asp:Label runat="server" ID="rcs2_0">5.0</asp:Label>
                                </div>
                            </div>
                            <div style="text-align: left; border: 1px solid silver; height: 150px; padding: 10px 10px 10px 10px; background-color: white">
                                <asp:Label runat="server" ID="comment2">Lorem ipsum onsectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat.</asp:Label>
                            </div>
                        </div>
                    </div>
                    <br />
                    <div style="border: 1px solid black; border-radius: 10px; height: 210px; padding: 10px 10px 10px 10px; background-color:#FFFFBF">
                        <div id="profile3" style="width: 20%; float: left; height: 200px">
                        </div>
                        <div style="width: 75%; float: right; height: 200px">
                            <div style="height: 35px">
                                <div style="float: left; width: 45%; padding-left: 10px; padding-top: 10px">
                                    <asp:HyperLink runat="server" ID="rcc3" NavigateUrl="course.aspx?id=ec503" Text="EC503 XXXXXX" />
                                </div>
                                <div style="float: right; width: 45%; text-align: center; padding-top: 10px">
                                    <asp:Label runat="server" ID="rcs3_0">5.0</asp:Label>
                                </div>
                            </div>
                            <div style="text-align: left; border: 1px solid silver; height: 150px; padding: 10px 10px 10px 10px; background-color: white">
                                <asp:Label runat="server" ID="comment3">Lorem ipsum onsectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat.</asp:Label>
                            </div>
                        </div>
                    </div>
                    <br />
                    <div style="border: 1px solid black; border-radius: 10px; height: 210px; padding: 10px 10px 10px 10px; background-color:#FFFFBF">
                        <div id="profile4" style="width: 20%; float: left; height: 200px">
                        </div>
                        <div style="width: 75%; float: right; height: 200px">
                            <div style="height: 35px">
                                <div style="float: left; width: 45%; padding-left: 10px; padding-top: 10px">
                                    <asp:HyperLink runat="server" ID="rcc4" NavigateUrl="course.aspx?id=ec504" Text="EC504 XXXXXX" />
                                </div>
                                <div style="float: right; width: 45%; text-align: center; padding-top: 10px">
                                    <asp:Label runat="server" ID="rcs4_0">5.0</asp:Label>
                                </div>
                            </div>
                            <div style="text-align: left; border: 1px solid silver; height: 150px; padding: 10px 10px 10px 10px; background-color: white">
                                <asp:Label runat="server" ID="comment4">Lorem ipsum onsectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat.</asp:Label>
                            </div>
                        </div>
                    </div>
                    <br />
                    <div style="border: 1px solid black; border-radius: 10px; height: 210px; padding: 10px 10px 10px 10px; background-color:#FFFFBF">
                        <div id="profile5" style="width: 20%; float: left; height: 200px">
                        </div>
                        <div style="width: 75%; float: right; height: 200px">
                            <div style="height: 35px">
                                <div style="float: left; width: 45%; padding-left: 10px; padding-top: 10px">
                                    <asp:HyperLink runat="server" ID="rcc5" NavigateUrl="course.aspx?id=ec505" Text="EC505 XXXXXX" />
                                </div>
                                <div style="float: right; width: 45%; text-align: center; padding-top: 10px">
                                    <asp:Label runat="server" ID="rcs5_0">5.0</asp:Label>
                                </div>
                            </div>
                            <div style="text-align: left; border: 1px solid silver; height: 150px; padding: 10px 10px 10px 10px; background-color: white">
                                <asp:Label runat="server" ID="comment5">Lorem ipsum onsectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat.</asp:Label>
                            </div>
                        </div>
                    </div>
                    <br style="clear: both" />
                </div>
            </div>
        </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [COURSE]"></asp:SqlDataSource>

    </form>
</body>
</html>