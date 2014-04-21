<%@ Page Language="C#" AutoEventWireup="true" CodeFile="courselist.aspx.cs" Inherits="courselist" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>ECE Courses 5xx/7xx</title>
    <link href="StyleSheet.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
        <div style="width: 1000px; border: 1px solid silver; background-color: white; overflow: hidden">
            <div id="logo" runat="server" style="width: 1000px; height: 120px">
            </div>
            <div id="navi1" runat="server" style="width: 1000px; border-top: 1px solid silver; overflow: hidden">
                <div id="navigate1" style="width: 490px; float: left; padding-left: 10px; padding-top: 10px; height: 30px; background-color: cornsilk">
                    <a href="Default.aspx">Home</a>&nbsp&nbsp<a href="courselist.aspx">Course</a>
                </div>
                <div id="account1" style="width: 490px; float: right; text-align: right; padding-right: 10px; padding-top: 10px; height: 30px; background-color: cornsilk">
                    <a href="login.aspx?ReturnUrl=courselist.aspx">Log in</a>&nbsp&nbsp<a href="register.aspx">Register</a>
                </div>
                <br style="clear: both" />
            </div>
            <div id="navi2" runat="server" style="width: 1000px; border-top: 1px solid silver; display: normal; overflow: hidden">
                <div id="navigate2" style="width: 490px; float: left; padding-left: 10px; padding-top: 10px; height: 30px; background-color: cornsilk">
                    <a href="Default.aspx">Home</a>&nbsp&nbsp<a href="courselist.aspx">Course</a>&nbsp&nbsp<asp:HyperLink ID="mypage" runat="server" Text="My page" NavigateUrl="user.aspx"></asp:HyperLink>
                </div>
                <div id="account2" style="width: 490px; float: right; text-align: right; padding-right: 10px; padding-top: 10px; height: 30px; background-color: cornsilk">
                    <asp:Label ID="greeting" runat="server" Text="Hello, Shuibi!"></asp:Label>&nbsp&nbsp<asp:LinkButton ID="logout" runat="server" Text="Log out" OnClick="logout_Click"></asp:LinkButton>
                </div>
                <br style="clear: both" />
            </div>
            <div style="width: 1000px; border-top: 1px solid silver; overflow: hidden">
                <div style="width: 485px; float: left; text-align: center; border-right: 1px solid silver; padding-left: 10px; overflow: hidden">
                    <h3>Computer Communications/Networks</h3>
                    <div style="width: 420px; border: 1px solid silver; background-color: seashell">
                        <div style="width: 400px">
                            <a href="course.aspx?id=ec505">EC505 XXXX XXXX XXXX</a>
                        </div>
                        <div style="width: 400px">
                            <a href="course.aspx?id=ec515">EC515 XXXX XXXX XXXX</a>
                        </div>
                        <div style="width: 400px">
                            <a href="course.aspx?id=ec521">EC521 XXXX XXXX XXXX</a>
                        </div>
                        <div style="width: 400px">
                            <a href="course.aspx?id=ec524">EC524 XXXX XXXX XXXX</a>
                        </div>
                        <div style="width: 400px">
                            <a href="course.aspx?id=ec534">EC534 XXXX XXXX XXXX</a>
                        </div>
                        <div style="width: 400px">
                            <a href="course.aspx?id=ec541">EC541 XXXX XXXX XXXX</a>
                        </div>
                        <div style="width: 400px">
                            <a href="course.aspx?id=ec544">EC544 XXXX XXXX XXXX</a>
                        </div>
                        <div style="width: 400px">
                            <a href="course.aspx?id=ec561">EC561 XXXX XXXX XXXX</a>
                        </div>
                        <div style="width: 400px">
                            <a href="course.aspx?id=ec715">EC715 XXXX XXXX XXXX</a>
                        </div>
                        <div style="width: 400px">
                            <a href="course.aspx?id=ec724">EC724 XXXX XXXX XXXX</a>
                        </div>
                        <div style="width: 400px">
                            <a href="course.aspx?id=ec725">EC725 XXXX XXXX XXXX</a>
                        </div>
                        <div style="width: 400px">
                            <a href="course.aspx?id=ec527">EC727 XXXX XXXX XXXX</a>
                        </div>
                        <div style="width: 400px">
                            <a href="course.aspx?id=ec733">EC733 XXXX XXXX XXXX</a>
                        </div>
                        <div style="width: 400px">
                            <a href="course.aspx?id=ec741">EC741 XXXX XXXX XXXX</a>
                        </div>
                        <div style="width: 400px">
                            <a href="course.aspx?id=ec744">EC744 XXXX XXXX XXXX</a>
                        </div>
                        <div style="width: 400px">
                            <a href="course.aspx?id=ec749">EC749 XXXX XXXX XXXX</a>
                        </div>
                    </div>
                    <h3>Software</h3>
                    <div style="width: 420px; border: 1px solid silver; background-color: seashell">
                        <div style="width: 400px">
                            <a href="course.aspx?id=ec504">EC504 XXXX XXXX XXXX</a>
                        </div>
                        <div style="width: 400px">
                            <a href="course.aspx?id=ec511">EC511 XXXX XXXX XXXX</a>
                        </div>
                        <div style="width: 400px">
                            <a href="course.aspx?id=ec512">EC512 XXXX XXXX XXXX</a>
                        </div>
                        <div style="width: 400px">
                            <a href="course.aspx?id=ec521">EC521 XXXX XXXX XXXX</a>
                        </div>
                        <div style="width: 400px">
                            <a href="course.aspx?id=ec527">EC527 XXXX XXXX XXXX</a>
                        </div>
                        <div style="width: 400px">
                            <a href="course.aspx?id=ec535">EC535 XXXX XXXX XXXX</a>
                        </div>
                        <div style="width: 400px">
                            <a href="course.aspx?id=ec544">EC544 XXXX XXXX XXXX</a>
                        </div>
                        <div style="width: 400px">
                            <a href="course.aspx?id=ec712">EC712 XXXX XXXX XXXX</a>
                        </div>
                        <div style="width: 400px">
                            <a href="course.aspx?id=ec730">EC730 XXXX XXXX XXXX</a>
                        </div>
                    </div>
                    <h3>Signal Processing and Communications</h3>
                    <div style="width: 420px; border: 1px solid silver; background-color: seashell">
                        <div style="width: 400px">
                            <a href="course.aspx?id=ec505">EC505 XXXX XXXX XXXX</a>
                        </div>
                        <div style="width: 400px">
                            <a href="course.aspx?id=ec515">EC515 XXXX XXXX XXXX</a>
                        </div>
                        <div style="width: 400px">
                            <a href="course.aspx?id=ec516">EC516 XXXX XXXX XXXX</a>
                        </div>
                        <div style="width: 400px">
                            <a href="course.aspx?id=ec517">EC517 XXXX XXXX XXXX</a>
                        </div>
                        <div style="width: 400px">
                            <a href="course.aspx?id=ec520">EC520 XXXX XXXX XXXX</a>
                        </div>
                        <div style="width: 400px">
                            <a href="course.aspx?id=ec702">EC702 XXXX XXXX XXXX</a>
                        </div>
                        <div style="width: 400px">
                            <a href="course.aspx?id=ec715">EC715 XXXX XXXX XXXX</a>
                        </div>
                        <div style="width: 400px">
                            <a href="course.aspx?id=ec716">EC716 XXXX XXXX XXXX</a>
                        </div>
                        <div style="width: 400px">
                            <a href="course.aspx?id=ec717">EC717 XXXX XXXX XXXX</a>
                        </div>
                        <div style="width: 400px">
                            <a href="course.aspx?id=ec719">EC719 XXXX XXXX XXXX</a>
                        </div>
                        <div style="width: 400px">
                            <a href="course.aspx?id=ec720">EC720 XXXX XXXX XXXX</a>
                        </div>
                    </div>
                    <h3>Solid-State Circuits, Devices and Materials</h3>
                    <div style="width: 420px; border: 1px solid silver; background-color: seashell">
                        <div style="width: 400px">
                            <a href="course.aspx?id=ec571">EC571 XXXX XXXX XXXX</a>
                        </div>
                        <div style="width: 400px">
                            <a href="course.aspx?id=ec574">EC574 XXXX XXXX XXXX</a>
                        </div>
                        <div style="width: 400px">
                            <a href="course.aspx?id=ec575">EC575 XXXX XXXX XXXX</a>
                        </div>
                        <div style="width: 400px">
                            <a href="course.aspx?id=ec577">EC577 XXXX XXXX XXXX</a>
                        </div>
                        <div style="width: 400px">
                            <a href="course.aspx?id=ec578">EC578 XXXX XXXX XXXX</a>
                        </div>
                        <div style="width: 400px">
                            <a href="course.aspx?id=ec579">EC579 XXXX XXXX XXXX</a>
                        </div>
                        <div style="width: 400px">
                            <a href="course.aspx?id=ec580">EC580 XXXX XXXX XXXX</a>
                        </div>
                        <div style="width: 400px">
                            <a href="course.aspx?id=ec582">EC582 XXXX XXXX XXXX</a>
                        </div>
                        <div style="width: 400px">
                            <a href="course.aspx?id=ec770">EC770 XXXX XXXX XXXX</a>
                        </div>
                        <div style="width: 400px">
                            <a href="course.aspx?id=ec771">EC771 XXXX XXXX XXXX</a>
                        </div>
                        <div style="width: 400px">
                            <a href="course.aspx?id=ec772">EC772 XXXX XXXX XXXX</a>
                        </div>
                        <div style="width: 400px">
                            <a href="course.aspx?id=ec774">EC774 XXXX XXXX XXXX</a>
                        </div>
                        <div style="width: 400px">
                            <a href="course.aspx?id=ec775">EC775 XXXX XXXX XXXX</a>
                        </div>
                        <div style="width: 400px">
                            <a href="course.aspx?id=ec777">EC777 XXXX XXXX XXXX</a>
                        </div>
                        <div style="width: 400px">
                            <a href="course.aspx?id=ec582">EC782 XXXX XXXX XXXX</a>
                        </div>
                    </div>
                    <br />
                </div>
                <div style="width: 495px; float: right; text-align: center; padding-left: 0px; overflow: hidden">
                    <h3>Hardware</h3>
                    <div style="width: 420px; border: 1px solid silver; background-color: seashell">
                        <div style="width: 400px">
                            <a href="course.aspx?id=ec513">EC513 XXXX XXXX XXXX</a>
                        </div>
                        <div style="width: 400px">
                            <a href="course.aspx?id=ec527">EC527 XXXX XXXX XXXX</a>
                        </div>
                        <div style="width: 400px">
                            <a href="course.aspx?id=ec535">EC535 XXXX XXXX XXXX</a>
                        </div>
                        <div style="width: 400px">
                            <a href="course.aspx?id=ec551">EC551 XXXX XXXX XXXX</a>
                        </div>
                        <div style="width: 400px">
                            <a href="course.aspx?id=ec561">EC561 XXXX XXXX XXXX</a>
                        </div>
                        <div style="width: 400px">
                            <a href="course.aspx?id=ec571">EC571 XXXX XXXX XXXX</a>
                        </div>
                        <div style="width: 400px">
                            <a href="course.aspx?id=ec580">EC580 XXXX XXXX XXXX</a>
                        </div>
                        <div style="width: 400px">
                            <a href="course.aspx?id=ec582">EC582 XXXX XXXX XXXX</a>
                        </div>
                        <div style="width: 400px">
                            <a href="course.aspx?id=ec713">EC713 XXXX XXXX XXXX</a>
                        </div>
                        <div style="width: 400px">
                            <a href="course.aspx?id=ec749">EC749 XXXX XXXX XXXX</a>
                        </div>
                        <div style="width: 400px">
                            <a href="course.aspx?id=ec752">EC752 XXXX XXXX XXXX</a>
                        </div>
                        <div style="width: 400px">
                            <a href="course.aspx?id=ec753">EC753 XXXX XXXX XXXX</a>
                        </div>
                        <div style="width: 400px">
                            <a href="course.aspx?id=ec757">EC757 XXXX XXXX XXXX</a>
                        </div>
                        <div style="width: 400px">
                            <a href="course.aspx?id=ec772">EC772 XXXX XXXX XXXX</a>
                        </div>
                        <div style="width: 400px">
                            <a href="course.aspx?id=ec782">EC782 XXXX XXXX XXXX</a>
                        </div>
                    </div>
                    <h3>Cyber Security</h3>
                    <div style="width: 420px; border: 1px solid silver; background-color: seashell">
                        <div style="width: 400px">
                            <a href="course.aspx?id=ec504">EC504 XXXX XXXX XXXX</a>
                        </div>
                        <div style="width: 400px">
                            <a href="course.aspx?id=ec521">EC521 XXXX XXXX XXXX</a>
                        </div>
                        <div style="width: 400px">
                            <a href="course.aspx?id=ec541">EC541 XXXX XXXX XXXX</a>
                        </div>
                    </div>
                    <h3>Systems and Control</h3>
                    <div style="width: 420px; border: 1px solid silver; background-color: seashell">
                        <div style="width: 400px">
                            <a href="course.aspx?id=ec501">EC501 XXXX XXXX XXXX</a>
                        </div>
                        <div style="width: 400px">
                            <a href="course.aspx?id=ec505">EC505 XXXX XXXX XXXX</a>
                        </div>
                        <div style="width: 400px">
                            <a href="course.aspx?id=ec517">EC517 XXXX XXXX XXXX</a>
                        </div>
                        <div style="width: 400px">
                            <a href="course.aspx?id=ec524">EC524 XXXX XXXX XXXX</a>
                        </div>
                        <div style="width: 400px">
                            <a href="course.aspx?id=ec701">EC701 XXXX XXXX XXXX</a>
                        </div>
                        <div style="width: 400px">
                            <a href="course.aspx?id=ec702">EC702 XXXX XXXX XXXX</a>
                        </div>
                        <div style="width: 400px">
                            <a href="course.aspx?id=ec710">EC710 XXXX XXXX XXXX</a>
                        </div>
                        <div style="width: 400px">
                            <a href="course.aspx?id=ec724">EC724 XXXX XXXX XXXX</a>
                        </div>
                        <div style="width: 400px">
                            <a href="course.aspx?id=ec734">EC734 XXXX XXXX XXXX</a>
                        </div>
                    </div>
                    <h3>Electromagnetics and Photonics</h3>
                    <div style="width: 420px; border: 1px solid silver; background-color: seashell">
                        <div style="width: 400px">
                            <a href="course.aspx?id=ec560">EC560 XXXX XXXX XXXX</a>
                        </div>
                        <div style="width: 400px">
                            <a href="course.aspx?id=ec563">EC563 XXXX XXXX XXXX</a>
                        </div>
                        <div style="width: 400px">
                            <a href="course.aspx?id=ec566">EC566 XXXX XXXX XXXX</a>
                        </div>
                        <div style="width: 400px">
                            <a href="course.aspx?id=ec568">EC568 XXXX XXXX XXXX</a>
                        </div>
                        <div style="width: 400px">
                            <a href="course.aspx?id=ec569">EC569 XXXX XXXX XXXX</a>
                        </div>
                        <div style="width: 400px">
                            <a href="course.aspx?id=ec570">EC570 XXXX XXXX XXXX</a>
                        </div>
                        <div style="width: 400px">
                            <a href="course.aspx?id=ec573">EC573 XXXX XXXX XXXX</a>
                        </div>
                        <div style="width: 400px">
                            <a href="course.aspx?id=ec591">EC591 XXXX XXXX XXXX</a>
                        </div>
                        <div style="width: 400px">
                            <a href="course.aspx?id=ec707">EC707 XXXX XXXX XXXX</a>
                        </div>
                        <div style="width: 400px">
                            <a href="course.aspx?id=ec731">EC731 XXXX XXXX XXXX</a>
                        </div>
                        <div style="width: 400px">
                            <a href="course.aspx?id=ec760">EC760 XXXX XXXX XXXX</a>
                        </div>
                        <div style="width: 400px">
                            <a href="course.aspx?id=ec762">EC762 XXXX XXXX XXXX</a>
                        </div>
                        <div style="width: 400px">
                            <a href="course.aspx?id=ec763">EC763 XXXX XXXX XXXX</a>
                        </div>
                        <div style="width: 400px">
                            <a href="course.aspx?id=ec764">EC764 XXXX XXXX XXXX</a>
                        </div>
                        <div style="width: 400px">
                            <a href="course.aspx?id=ec765">EC765 XXXX XXXX XXXX</a>
                        </div>
                        <div style="width: 400px">
                            <a href="course.aspx?id=ec770">EC770 XXXX XXXX XXXX</a>
                        </div>
                        <div style="width: 400px">
                            <a href="course.aspx?id=ec773">EC773 XXXX XXXX XXXX</a>
                        </div>
                        <div style="width: 400px">
                            <a href="course.aspx?id=ec777">EC777 XXXX XXXX XXXX</a>
                        </div>
                    </div>
                </div>
                <br style="clear: both" />
            </div>
        </div>
    </form>
</body>
</html>
