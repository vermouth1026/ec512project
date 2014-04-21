<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Homepage</title>
    <link href="StyleSheet.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
        <div style="width: 1000px; border: 1px solid silver; background-color: white">
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
            <div id="navi2" style="width: 1000px; border-top: 1px solid silver; display: normal; overflow: hidden">
                <div id="navigate2" style="width: 490px; float: left; padding-left: 10px; padding-top: 10px; height: 30px; background-color: cornsilk">
                    <a href="Default.aspx">Home</a>&nbsp&nbsp<a href="courselist.aspx">Course</a>&nbsp&nbsp<asp:HyperLink ID="mypage" runat="server" Text="My page" NavigateUrl="user.aspx"></asp:HyperLink>
                </div>
                <div id="account2" style="width: 490px; float: right; text-align: right; padding-right: 10px; padding-top: 10px; height: 30px; background-color: cornsilk">
                    <asp:Label ID="greeting" runat="server" Text="Hello, Shuibi!"></asp:Label>&nbsp&nbsp<asp:LinkButton ID="logout" runat="server" Text="Log out" OnClick="logout_Click"></asp:LinkButton>
                </div>
                <br style="clear: both" />
            </div>
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
            <div style="padding-left: 10px; padding-right: 10px; height: 1450px">
                <h3>Recent Reviews</h3>
                <div style="padding-left: 10px; padding-right: 10px">
                    <div style="border: 1px solid silver; border-radius: 10px; height: 210px; padding: 30px 20px 20px 30px; background-color: seashell">
                        <div id="profile1" runat="server" style="width: 20%; float: left; height: 200px">
                        </div>
                        <div style="width: 78%; float: right; height: 200px">
                            <div style="height: 35px">
                                <div style="float: left; width: 45%; padding-left: 10px">
                                    <asp:HyperLink runat="server" ID="rcc1" NavigateUrl="course.aspx?id=ec501" Text="EC501 XXXXXX" />
                                </div>
                                <div style="float: right; width: 45%; text-align: right">
                                    <asp:Label runat="server" ID="rcs1_0" BorderColor="silver" BorderStyle="Solid" BorderWidth="1px" BackColor="Tomato" ForeColor="White">&nbsp Total: 5 &nbsp</asp:Label>
                                    <asp:Label runat="server" ID="rcs1_1" BorderColor="silver" BorderStyle="Solid" BorderWidth="1px" BackColor="Orange" ForeColor="White">&nbsp Prof: 5 &nbsp</asp:Label>
                                    <asp:Label runat="server" ID="rcs1_2" BorderColor="silver" BorderStyle="Solid" BorderWidth="1px" BackColor="deepskyblue" ForeColor="White">&nbsp Cont: 5 &nbsp</asp:Label>
                                    <asp:Label runat="server" ID="rcs1_3" BorderColor="silver" BorderStyle="Solid" BorderWidth="1px" BackColor="seagreen" ForeColor="White">&nbsp Hard: 5 &nbsp</asp:Label>
                                </div>
                            </div>
                            <div style="text-align: left; border: 1px solid silver; height: 150px; padding: 10px 10px 10px 10px; background-color: white">
                                <asp:Label runat="server" ID="comment1">Lorem ipsum onsectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat.</asp:Label>
                            </div>
                        </div>
                    </div>
                    <br />
                    <div style="border: 1px solid silver; border-radius: 10px; height: 210px; padding: 30px 20px 20px 30px; background-color: seashell">
                        <div id="profile2" runat="server" style="width: 20%; float: left; height: 200px">
                        </div>
                        <div style="width: 78%; float: right; height: 200px">
                            <div style="height: 35px">
                                <div style="float: left; width: 45%; padding-left: 10px">
                                    <asp:HyperLink runat="server" ID="rcc2" NavigateUrl="course.aspx?id=ec502" Text="EC502 XXXXXX" />
                                </div>
                                <div style="float: right; width: 45%; text-align: right">
                                    <asp:Label runat="server" ID="rcs2_0" BorderColor="silver" BorderStyle="Solid" BorderWidth="1px" BackColor="Tomato" ForeColor="White">&nbsp Total: 5 &nbsp</asp:Label>
                                    <asp:Label runat="server" ID="rcs2_1" BorderColor="silver" BorderStyle="Solid" BorderWidth="1px" BackColor="Orange" ForeColor="White">&nbsp Prof: 5 &nbsp</asp:Label>
                                    <asp:Label runat="server" ID="rcs2_2" BorderColor="silver" BorderStyle="Solid" BorderWidth="1px" BackColor="deepskyblue" ForeColor="White">&nbsp Cont: 5 &nbsp</asp:Label>
                                    <asp:Label runat="server" ID="rcs2_3" BorderColor="silver" BorderStyle="Solid" BorderWidth="1px" BackColor="seagreen" ForeColor="White">&nbsp Hard: 5 &nbsp</asp:Label>
                                </div>
                            </div>
                            <div style="text-align: left; border: 1px solid silver; height: 150px; padding: 10px 10px 10px 10px; background-color: white">
                                <asp:Label runat="server" ID="comment2">Lorem ipsum onsectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat.</asp:Label>
                            </div>
                        </div>
                    </div>
                    <br />
                    <div style="border: 1px solid silver; border-radius: 10px; height: 210px; padding: 30px 20px 20px 30px; background-color: seashell">
                        <div id="profile3" runat="server" style="width: 20%; float: left; height: 200px">
                        </div>
                        <div style="width: 78%; float: right; height: 200px">
                            <div style="height: 35px">
                                <div style="float: left; width: 45%; padding-left: 10px">
                                    <asp:HyperLink runat="server" ID="rcc3" NavigateUrl="course.aspx?id=ec503" Text="EC503 XXXXXX" />
                                </div>
                                <div style="float: right; width: 45%; text-align: right">
                                    <asp:Label runat="server" ID="rcs3_0" BorderColor="silver" BorderStyle="Solid" BorderWidth="1px" BackColor="Tomato" ForeColor="White">&nbsp Total: 5 &nbsp</asp:Label>
                                    <asp:Label runat="server" ID="rcs3_1" BorderColor="silver" BorderStyle="Solid" BorderWidth="1px" BackColor="Orange" ForeColor="White">&nbsp Prof: 5 &nbsp</asp:Label>
                                    <asp:Label runat="server" ID="rcs3_2" BorderColor="silver" BorderStyle="Solid" BorderWidth="1px" BackColor="deepskyblue" ForeColor="White">&nbsp Cont: 5 &nbsp</asp:Label>
                                    <asp:Label runat="server" ID="rcs3_3" BorderColor="silver" BorderStyle="Solid" BorderWidth="1px" BackColor="seagreen" ForeColor="White">&nbsp Hard: 5 &nbsp</asp:Label>
                                </div>
                            </div>
                            <div style="text-align: left; border: 1px solid silver; height: 150px; padding: 10px 10px 10px 10px; background-color: white">
                                <asp:Label runat="server" ID="comment3">Lorem ipsum onsectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat.</asp:Label>
                            </div>
                        </div>
                    </div>
                    <br />
                    <div style="border: 1px solid silver; border-radius: 10px; height: 210px; padding: 30px 20px 20px 30px; background-color: seashell">
                        <div id="profile4" runat="server" style="width: 20%; float: left; height: 200px">
                        </div>
                        <div style="width: 78%; float: right; height: 200px">
                            <div style="height: 35px">
                                <div style="float: left; width: 45%; padding-left: 10px">
                                    <asp:HyperLink runat="server" ID="rcc4" NavigateUrl="course.aspx?id=ec504" Text="EC504 XXXXXX" />
                                </div>
                                <div style="float: right; width: 45%; text-align: right">
                                    <asp:Label runat="server" ID="rcs4_0" BorderColor="silver" BorderStyle="Solid" BorderWidth="1px" BackColor="Tomato" ForeColor="White">&nbsp Total: 5 &nbsp</asp:Label>
                                    <asp:Label runat="server" ID="rcs4_1" BorderColor="silver" BorderStyle="Solid" BorderWidth="1px" BackColor="Orange" ForeColor="White">&nbsp Prof: 5 &nbsp</asp:Label>
                                    <asp:Label runat="server" ID="rcs4_2" BorderColor="silver" BorderStyle="Solid" BorderWidth="1px" BackColor="deepskyblue" ForeColor="White">&nbsp Cont: 5 &nbsp</asp:Label>
                                    <asp:Label runat="server" ID="rcs4_3" BorderColor="silver" BorderStyle="Solid" BorderWidth="1px" BackColor="seagreen" ForeColor="White">&nbsp Hard: 5 &nbsp</asp:Label>
                                </div>
                            </div>
                            <div style="text-align: left; border: 1px solid silver; height: 150px; padding: 10px 10px 10px 10px; background-color: white">
                                <asp:Label runat="server" ID="comment4">Lorem ipsum onsectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat.</asp:Label>
                            </div>
                        </div>
                    </div>
                    <br />
                    <div style="border: 1px solid silver; border-radius: 10px; height: 210px; padding: 30px 20px 20px 30px; background-color: seashell">
                        <div id="profile5" runat="server" style="width: 20%; float: left; height: 200px">
                        </div>
                        <div style="width: 78%; float: right; height: 200px">
                            <div style="height: 35px">
                                <div style="float: left; width: 45%; padding-left: 10px">
                                    <asp:HyperLink runat="server" ID="rcc5" NavigateUrl="course.aspx?id=ec505" Text="EC505 XXXXXX" />
                                </div>
                                <div style="float: right; width: 45%; text-align: right">
                                    <asp:Label runat="server" ID="rcs5_0" BorderColor="silver" BorderStyle="Solid" BorderWidth="1px" BackColor="Tomato" ForeColor="White">&nbsp Total: 5 &nbsp</asp:Label>
                                    <asp:Label runat="server" ID="rcs5_1" BorderColor="silver" BorderStyle="Solid" BorderWidth="1px" BackColor="Orange" ForeColor="White">&nbsp Prof: 5 &nbsp</asp:Label>
                                    <asp:Label runat="server" ID="rcs5_2" BorderColor="silver" BorderStyle="Solid" BorderWidth="1px" BackColor="deepskyblue" ForeColor="White">&nbsp Cont: 5 &nbsp</asp:Label>
                                    <asp:Label runat="server" ID="rcs5_3" BorderColor="silver" BorderStyle="Solid" BorderWidth="1px" BackColor="seagreen" ForeColor="White">&nbsp Hard: 5 &nbsp</asp:Label>
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
