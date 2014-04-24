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
        <div style="width: 1000px; border: 1px solid silver; background-color: white; overflow: auto">
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
            <div style="width: 1000px; border-top: 1px solid silver; overflow: auto">
                <div style="width: 485px; float: left; text-align: center; border-right: 1px solid silver; padding-left: 10px; overflow: auto">
                    <h3>Computer Communications/Networks</h3>
                    <div style="width: 420px; border: 1px solid silver; background-color: seashell">
                        <div style="width: 400px">
                            <a href="course.aspx?id=ec505">EC505 Stochastic Proc</a>
                        </div>
                        <div style="width: 400px">
                            <a href="course.aspx?id=ec521">EC521 Cybersecurity</a>
                        </div>
                        <div style="width: 400px">
                            <a href="course.aspx?id=ec524">EC524 Optimize Theor</a>
                        </div>
                        <div style="width: 400px">
                            <a href="course.aspx?id=ec541">EC541 Comp Comm Ntwks</a>
                        </div>
                        <div style="width: 400px">
                            <a href="course.aspx?id=ec544">EC544 Netwk Phys Wrld</a>
                        </div>
                        <div style="width: 400px">
                            <a href="course.aspx?id=ec561">EC561 Err-Cntrl Codes</a>
                        </div>
                        <div style="width: 400px">
                            <a href="course.aspx?id=ec724">EC724 Adv Optmztn T/M</a>
                        </div>
                    </div>
                    <h3>Software</h3>
                    <div style="width: 420px; border: 1px solid silver; background-color: seashell">
                        <div style="width: 400px">
                            <a href="course.aspx?id=ec504">EC504 Adv Data Struct</a>
                        </div>
                        <div style="width: 400px">
                            <a href="course.aspx?id=ec512">EC512 Clnt-Serv Sftw</a>
                        </div>
                        <div style="width: 400px">
                            <a href="course.aspx?id=ec521">EC521 Cybersecurity</a>
                        </div>
                        <div style="width: 400px">
                            <a href="course.aspx?id=ec527">EC527 Prg Mlticor&Gpu</a>
                        </div>
                        <div style="width: 400px">
                            <a href="course.aspx?id=ec535">EC535 Intro Embed Sys</a>
                        </div>
                        <div style="width: 400px">
                            <a href="course.aspx?id=ec544">EC544 Netwk Phys Wrld</a>
                        </div>
                        <div style="width: 400px">
                            <a href="course.aspx?id=ec730">EC730 Inf/Theor Algor</a>
                        </div>
                    </div>
                    <h3>Signal Processing and Communications</h3>
                    <div style="width: 420px; border: 1px solid silver; background-color: seashell">
                        <div style="width: 400px">
                            <a href="course.aspx?id=ec505">EC505 Stochastic Proc</a>
                        </div>
                        <div style="width: 400px">
                            <a href="course.aspx?id=ec516">EC516 Dig Signal Proc</a>
                        </div>
                        <div style="width: 400px">
                            <a href="course.aspx?id=ec517">EC517 Intr Infor Thry</a>
                        </div>
                        <div style="width: 400px">
                            <a href="course.aspx?id=ec717">EC717 Img Recon&Resto</a>
                        </div>
                        <div style="width: 400px">
                            <a href="course.aspx?id=ec719">EC719 Stat Pat Recogn</a>
                        </div>
                        <div style="width: 400px">
                            <a href="course.aspx?id=ec720">EC720 Dig Video Proc</a>
                        </div>
                    </div>
                    <h3>Solid-State Circuits, Devices and Materials</h3>
                    <div style="width: 420px; border: 1px solid silver; background-color: seashell">
                        <div style="width: 400px">
                            <a href="course.aspx?id=ec571">EC571 Dg Vlsi Cir Des</a>
                        </div>
                        <div style="width: 400px">
                            <a href="course.aspx?id=ec574">EC574 Phy Smcndct Mat</a>
                        </div>
                        <div style="width: 400px">
                            <a href="course.aspx?id=ec575">EC575 Semiconduct Dev</a>
                        </div>
                        <div style="width: 400px">
                            <a href="course.aspx?id=ec577">EC577 E/O/M Prop Mat</a>
                        </div>
                        <div style="width: 400px">
                            <a href="course.aspx?id=ec578">EC578 Fabric Tech Ic</a>
                        </div>
                        <div style="width: 400px">
                            <a href="course.aspx?id=ec579">EC579 Nano/Mic Dev Te</a>
                        </div>
                        <div style="width: 400px">
                            <a href="course.aspx?id=ec580">EC580 An Vlsi Cir Des</a>
                        </div>
                        <div style="width: 400px">
                            <a href="course.aspx?id=ec582">EC582 Rf/Anlg Ic Des</a>
                        </div>
                        <div style="width: 400px">
                            <a href="course.aspx?id=ec770">EC770 Int Optoelects</a>
                        </div>
                        <div style="width: 400px">
                            <a href="course.aspx?id=ec771">EC771 Ga As Devices</a>
                        </div>
                        <div style="width: 400px">
                            <a href="course.aspx?id=ec772">EC772 Vlsi Gr Des Prj</a>
                        </div>
                        <div style="width: 400px">
                            <a href="course.aspx?id=ec774">EC774 Qnt Str&Pho Dev</a>
                        </div>
                        <div style="width: 400px">
                            <a href="course.aspx?id=ec582">EC782 Rf/Anlog Ic Des</a>
                        </div>
                    </div>
                    <br />
                </div>
                <div style="width: 495px; float: right; text-align: center; padding-left: 0px; overflow: auto">
                    <h3>Hardware</h3>
                    <div style="width: 420px; border: 1px solid silver; background-color: seashell">
                        <div style="width: 400px">
                            <a href="course.aspx?id=ec513">EC513 Comp Architect</a>
                        </div>
                        <div style="width: 400px">
                            <a href="course.aspx?id=ec527">EC527 Prg Mlticor&Gpu</a>
                        </div>
                        <div style="width: 400px">
                            <a href="course.aspx?id=ec535">EC535 Intro Embed Sys</a>
                        </div>
                        <div style="width: 400px">
                            <a href="course.aspx?id=ec551">EC551 Adv Dig Des Ver</a>
                        </div>
                        <div style="width: 400px">
                            <a href="course.aspx?id=ec561">EC561 Err-Cntrl Codes</a>
                        </div>
                        <div style="width: 400px">
                            <a href="course.aspx?id=ec571">EC571 Dg Vlsi Cir Des</a>
                        </div>
                        <div style="width: 400px">
                            <a href="course.aspx?id=ec580">EC580 An Vlsi Cir Des</a>
                        </div>
                        <div style="width: 400px">
                            <a href="course.aspx?id=ec582">EC582 Rf/Anlg Ic Des</a>
                        </div>
                        <div style="width: 400px">
                            <a href="course.aspx?id=ec772">EC772 Vlsi Gr Des Prj</a>
                        </div>
                        <div style="width: 400px">
                            <a href="course.aspx?id=ec782">EC782 Rf/Anlog Ic Des</a>
                        </div>
                    </div>
                    <h3>Cyber Security</h3>
                    <div style="width: 420px; border: 1px solid silver; background-color: seashell">
                        <div style="width: 400px">
                            <a href="course.aspx?id=ec504">EC504 Adv Data Struct</a>
                        </div>
                        <div style="width: 400px">
                            <a href="course.aspx?id=ec521">EC521 Cybersecurity</a>
                        </div>
                        <div style="width: 400px">
                            <a href="course.aspx?id=ec541">EC541 Comp Comm Ntwks</a>
                        </div>
                    </div>
                    <h3>Systems and Control</h3>
                    <div style="width: 420px; border: 1px solid silver; background-color: seashell">
                        <div style="width: 400px">
                            <a href="course.aspx?id=ec501">EC501 Dyn System Thry</a>
                        </div>
                        <div style="width: 400px">
                            <a href="course.aspx?id=ec505">EC505 Stochastic Proc</a>
                        </div>
                        <div style="width: 400px">
                            <a href="course.aspx?id=ec517">EC517 Intr Infor Thry</a>
                        </div>
                        <div style="width: 400px">
                            <a href="course.aspx?id=ec524">EC524 Optimize Theor</a>
                        </div>
                        <div style="width: 400px">
                            <a href="course.aspx?id=ec710">EC710 Dynamic Prog</a>
                        </div>
                        <div style="width: 400px">
                            <a href="course.aspx?id=ec724">EC724 Adv Optmztn T/M</a>
                        </div>
                    </div>
                    <h3>Electromagnetics and Photonics</h3>
                    <div style="width: 420px; border: 1px solid silver; background-color: seashell">
                        <div style="width: 400px">
                            <a href="course.aspx?id=ec560">EC560 Intro Photonics</a>
                        </div>
                        <div style="width: 400px">
                            <a href="course.aspx?id=ec568">EC568 Optcl Fib Waveg</a>
                        </div>
                        <div style="width: 400px">
                            <a href="course.aspx?id=ec570">EC570 Lasers&Applctns</a>
                        </div>
                        <div style="width: 400px">
                            <a href="course.aspx?id=ec573">EC573 Solar Enrgy Sys</a>
                        </div>
                        <div style="width: 400px">
                            <a href="course.aspx?id=ec591">EC591 Photonics Lab 1</a>
                        </div>
                        <div style="width: 400px">
                            <a href="course.aspx?id=ec707">EC707 Radr Rmote Sens</a>
                        </div>
                        <div style="width: 400px">
                            <a href="course.aspx?id=ec762">EC762 Quantum Optics</a>
                        </div>
                        <div style="width: 400px">
                            <a href="course.aspx?id=ec765">EC765 BME Op+biophotn</a>
                        </div>
                        <div style="width: 400px">
                            <a href="course.aspx?id=ec770">EC770 Int Optoelects</a>
                        </div>
                        <div style="width: 400px">
                            <a href="course.aspx?id=ec773">EC773 Adv Opt Microsc</a>
                        </div>
                        <div style="width: 400px">
                            <a href="course.aspx?id=ec777">EC777 Nano-Optics</a>
                        </div>
                    </div>
                </div>
                <br style="clear: both" />
            </div>
        </div>
    </form>
</body>
</html>
