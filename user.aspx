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
            <div style="width: 940px; border-top: 1px solid silver; border-bottom: 1px solid silver; padding: 30px 30px 30px 30px; overflow:hidden">
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
                <div id="mycourse" runat="server" style="width: 356px; height: 176px; float: left; padding: 10px 10px 10px 10px; margin-left: 20px; border: 2px solid silver; overflow-y: scroll; background-color: whitesmoke">
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
                    <div style="height: 30px; padding: 10px 10px 10px 10px; border: 1px solid silver; background-color: seashell">
                        <div style="width: 40%; float: left; height: 30px">
                            <asp:HyperLink ID="rcmd1" runat="server" Text="EC500 XXXX XXXX XXXX" NavigateUrl="course.aspx"></asp:HyperLink>
                        </div>
                        <div style="width: 60%; float: left; height: 30px">
                            <asp:Label ID="reason1" runat="server" Text="Here is the reason!"></asp:Label>
                        </div>
                        <br style="clear: both" />
                    </div>
                    <br />
                    <div style="height: 30px; padding: 10px 10px 10px 10px; border: 1px solid silver; background-color: seashell">
                        <div style="width: 40%; float: left; height: 30px">
                            <asp:HyperLink ID="rcmd2" runat="server" Text="EC500 XXXX XXXX XXXX" NavigateUrl="course.aspx"></asp:HyperLink>
                        </div>
                        <div style="width: 60%; float: left; height: 30px">
                            <asp:Label ID="reason2" runat="server" Text="Here is the reason!"></asp:Label>
                        </div>
                        <br style="clear: both" />
                    </div>
                    <br />
                    <div style="height: 30px; padding: 10px 10px 10px 10px; border: 1px solid silver; background-color: seashell">
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
            <div style="padding: 0px 30px 30px 30px; overflow-y:hidden">
                <h3>Comments</h3>
                <div id="comments">
                    <div id="rr1" runat="server" style="border: 1px solid silver; border-radius: 10px; height: 210px; padding: 30px 20px 20px 30px; background-color: seashell">
                        <div id="profile1" runat="server" style="width: 20%; float: left; height: 200px">
                        </div>
                        <div style="width: 78%; float: right; height: 200px">
                            <div style="height: 35px">
                                <div style="float: left; width: 45%; padding-left: 10px">
                                    <asp:HyperLink runat="server" ID="rcc1" NavigateUrl="course.aspx?id=ec504" Text="EC504 XXXXXX" />
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

                    <div id="rr2" runat="server" style="border: 1px solid silver; border-radius: 10px; height: 210px; padding: 30px 20px 20px 30px; background-color: seashell">
                        <div id="profile2" runat="server" style="width: 20%; float: left; height: 200px">
                        </div>
                        <div style="width: 78%; float: right; height: 200px">
                            <div style="height: 35px">
                                <div style="float: left; width: 45%; padding-left: 10px">
                                    <asp:HyperLink runat="server" ID="rcc2" NavigateUrl="course.aspx?id=ec504" Text="EC504 XXXXXX" />
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

                    <div id="rr3" runat="server" style="border: 1px solid silver; border-radius: 10px; height: 210px; padding: 30px 20px 20px 30px; background-color: seashell">
                        <div id="profile3" runat="server" style="width: 20%; float: left; height: 200px">
                        </div>
                        <div style="width: 78%; float: right; height: 200px">
                            <div style="height: 35px">
                                <div style="float: left; width: 45%; padding-left: 10px">
                                    <asp:HyperLink runat="server" ID="rcc3" NavigateUrl="course.aspx?id=ec504" Text="EC504 XXXXXX" />
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

                    <div id="rr4" runat="server" style="border: 1px solid silver; border-radius: 10px; height: 210px; padding: 30px 20px 20px 30px; background-color: seashell">
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

                    <div id="rr5" runat="server" style="border: 1px solid silver; border-radius: 10px; height: 210px; padding: 30px 20px 20px 30px; background-color: seashell">
                        <div id="profile5" runat="server" style="width: 20%; float: left; height: 200px">
                        </div>
                        <div style="width: 78%; float: right; height: 200px">
                            <div style="height: 35px">
                                <div style="float: left; width: 45%; padding-left: 10px">
                                    <asp:HyperLink runat="server" ID="rcc5" NavigateUrl="course.aspx?id=ec504" Text="EC504 XXXXXX" />
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

                    <div id="rr6" runat="server" style="border: 1px solid silver; border-radius: 10px; height: 210px; padding: 30px 20px 20px 30px; background-color: seashell">
                        <div id="profile6" runat="server" style="width: 20%; float: left; height: 200px">
                        </div>
                        <div style="width: 78%; float: right; height: 200px">
                            <div style="height: 35px">
                                <div style="float: left; width: 45%; padding-left: 10px">
                                    <asp:HyperLink runat="server" ID="rcc6" NavigateUrl="course.aspx?id=ec504" Text="EC504 XXXXXX" />
                                </div>
                                <div style="float: right; width: 45%; text-align: right">
                                    <asp:Label runat="server" ID="rcs6_0" BorderColor="silver" BorderStyle="Solid" BorderWidth="1px" BackColor="Tomato" ForeColor="White">&nbsp Total: 5 &nbsp</asp:Label>
                                    <asp:Label runat="server" ID="rcs6_1" BorderColor="silver" BorderStyle="Solid" BorderWidth="1px" BackColor="Orange" ForeColor="White">&nbsp Prof: 5 &nbsp</asp:Label>
                                    <asp:Label runat="server" ID="rcs6_2" BorderColor="silver" BorderStyle="Solid" BorderWidth="1px" BackColor="deepskyblue" ForeColor="White">&nbsp Cont: 5 &nbsp</asp:Label>
                                    <asp:Label runat="server" ID="rcs6_3" BorderColor="silver" BorderStyle="Solid" BorderWidth="1px" BackColor="seagreen" ForeColor="White">&nbsp Hard: 5 &nbsp</asp:Label>
                                </div>
                            </div>
                            <div style="text-align: left; border: 1px solid silver; height: 150px; padding: 10px 10px 10px 10px; background-color: white">
                                <asp:Label runat="server" ID="comment6">Lorem ipsum onsectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat.</asp:Label>
                            </div>
                        </div>
                    </div>

                    <div id="rr7" runat="server" style="border: 1px solid silver; border-radius: 10px; height: 210px; padding: 30px 20px 20px 30px; background-color: seashell">
                        <div id="profile7" runat="server" style="width: 20%; float: left; height: 200px">
                        </div>
                        <div style="width: 78%; float: right; height: 200px">
                            <div style="height: 35px">
                                <div style="float: left; width: 45%; padding-left: 10px">
                                    <asp:HyperLink runat="server" ID="rcc7" NavigateUrl="course.aspx?id=ec504" Text="EC504 XXXXXX" />
                                </div>
                                <div style="float: right; width: 45%; text-align: right">
                                    <asp:Label runat="server" ID="rcs7_0" BorderColor="silver" BorderStyle="Solid" BorderWidth="1px" BackColor="Tomato" ForeColor="White">&nbsp Total: 5 &nbsp</asp:Label>
                                    <asp:Label runat="server" ID="rcs7_1" BorderColor="silver" BorderStyle="Solid" BorderWidth="1px" BackColor="Orange" ForeColor="White">&nbsp Prof: 5 &nbsp</asp:Label>
                                    <asp:Label runat="server" ID="rcs7_2" BorderColor="silver" BorderStyle="Solid" BorderWidth="1px" BackColor="deepskyblue" ForeColor="White">&nbsp Cont: 5 &nbsp</asp:Label>
                                    <asp:Label runat="server" ID="rcs7_3" BorderColor="silver" BorderStyle="Solid" BorderWidth="1px" BackColor="seagreen" ForeColor="White">&nbsp Hard: 5 &nbsp</asp:Label>
                                </div>
                            </div>
                            <div style="text-align: left; border: 1px solid silver; height: 150px; padding: 10px 10px 10px 10px; background-color: white">
                                <asp:Label runat="server" ID="comment7">Lorem ipsum onsectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat.</asp:Label>
                            </div>
                        </div>
                    </div>

                    <div id="rr8" runat="server" style="border: 1px solid silver; border-radius: 10px; height: 210px; padding: 30px 20px 20px 30px; background-color: seashell">
                        <div id="profile8" runat="server" style="width: 20%; float: left; height: 200px">
                        </div>
                        <div style="width: 78%; float: right; height: 200px">
                            <div style="height: 35px">
                                <div style="float: left; width: 45%; padding-left: 10px">
                                    <asp:HyperLink runat="server" ID="rcc8" NavigateUrl="course.aspx?id=ec504" Text="EC504 XXXXXX" />
                                </div>
                                <div style="float: right; width: 45%; text-align: right">
                                    <asp:Label runat="server" ID="rcs8_0" BorderColor="silver" BorderStyle="Solid" BorderWidth="1px" BackColor="Tomato" ForeColor="White">&nbsp Total: 5 &nbsp</asp:Label>
                                    <asp:Label runat="server" ID="rcs8_1" BorderColor="silver" BorderStyle="Solid" BorderWidth="1px" BackColor="Orange" ForeColor="White">&nbsp Prof: 5 &nbsp</asp:Label>
                                    <asp:Label runat="server" ID="rcs8_2" BorderColor="silver" BorderStyle="Solid" BorderWidth="1px" BackColor="deepskyblue" ForeColor="White">&nbsp Cont: 5 &nbsp</asp:Label>
                                    <asp:Label runat="server" ID="rcs8_3" BorderColor="silver" BorderStyle="Solid" BorderWidth="1px" BackColor="seagreen" ForeColor="White">&nbsp Hard: 5 &nbsp</asp:Label>
                                </div>
                            </div>
                            <div style="text-align: left; border: 1px solid silver; height: 150px; padding: 10px 10px 10px 10px; background-color: white">
                                <asp:Label runat="server" ID="comment8">Lorem ipsum onsectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat.</asp:Label>
                            </div>
                        </div>
                    </div>


                </div>
            </div>
        </div>
    </form>
</body>
</html>
