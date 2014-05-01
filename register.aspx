<%@ Page Language="C#" AutoEventWireup="true" CodeFile="register.aspx.cs" Inherits="register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="StyleSheet.css" rel="stylesheet" type="text/css" />
    <title>Registration</title>
</head>
<body>
    <form id="registration" runat="server" action="confirm.aspx">
        <div style="width: 1000px; border: 1px solid silver; background-color: white">
            <div id="logo" runat="server" style="width: 1000px; height: 150px">
                <img src="image/logo.jpg" alt="logo" />
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
            <div id="info" style="padding: 30px 30px 30px 30px; border-top: 1px solid silver; overflow: hidden; text-align: center">
                <h3>Register</h3>
                <div style="width: 800px; border: 1px solid silver; background-color: seashell; padding: 20px">
                    <div style="width: 650px; overflow:hidden">
                        <div style="float: left">
                            <div style="text-align: right; height: 30px">
                                <label>Username:&nbsp&nbsp</label>
                            </div>
                            <div style="text-align: right; height: 30px">
                                <label>Password:&nbsp&nbsp</label>
                            </div>
                            <div style="text-align: right; height: 30px">
                                <label>Confirm Password:&nbsp&nbsp</label>
                            </div>
                            <div style="text-align: right; height: 30px">
                                <label>E-mail:&nbsp&nbsp</label>
                            </div>
                            <div style="text-align: right; height: 30px">
                                <label>Specialization:&nbsp&nbsp</label>
                            </div>
                        </div>
                        <div style="float: left">
                            <div style="text-align: left; height: 30px">
                                <input type="text" runat="server" id="username" name="username" />
                            </div>
                            <div style="text-align: left; height: 30px">
                                <input type="password" id="psw" name="psw" />
                            </div>
                            <div style="text-align: left; height: 30px">
                                <input type="password" id="confirmpsw" name="confirmpsw" />
                            </div>
                            <div style="text-align: left; height: 30px">
                                <input type="text" id="email" name="email" />
                                <label>@bu.edu</label>
                            </div>
                            <div style="text-align: left; height: 30px">
                                <select id="spec" name="spec">
                                    <option value="1">Computer Communications/Networks</option>
                                    <option value="2">Software</option>
                                    <option value="3">Hardware</option>
                                    <option value="4">Cyber Security</option>
                                    <option value="5">Systems and Control</option>
                                    <option value="6">Signal Processing and Communications</option>
                                    <option value="7">Electromagnetics and Photonics</option>
                                    <option value="8">Solid-State Circuits, Devices and Materials</option>
                                </select>
                            </div>
                        </div>
                        <div style="float:left">
                            <img src="image/default.png" alt="profile" width="120" />
                            <br />
                            &nbsp&nbsp&nbsp&nbsp
                            <asp:Button runat="server" Text="Upload" />
                        </div>
                        <br style="clear: both" />
                        <br />
                    </div>
                    <div style="width: 550px">
                        <select size="10" id="allcrs" style="width: 250px; float: left">
                            <option value="501">EC501 Dyn System Thry</option>
                            <option value="504">EC504 Adv Data Struct</option>
                            <option value="505">EC505 Stochastic Proc</option>
                            <option value="512">EC512 Clnt-Serv Sftw</option>
                            <option value="513">EC513 Comp Architect</option>
                            <option value="514">EC514 Simulation</option>
                            <option value="516">EC516 Dig Signal Proc</option>
                            <option value="517">EC517 Intr Infor Thry</option>
                            <option value="521">EC521 Cybersecurity</option>
                            <option value="524">EC524 Optimize Theor</option>
                            <option value="527">EC527 Prg Mlticor&Gpu</option>
                            <option value="533">EC533 Adv Dscrt Math</option>
                            <option value="535">EC535 Intro Embed Sys</option>
                            <option value="541">EC541 Comp Comm Ntwks</option>
                            <option value="543">EC543 Sustain Pow Sys</option>
                            <option value="544">EC544 Netwk Phys Wrld</option>
                            <option value="551">EC551 Adv Dig Des Ver</option>
                            <option value="560">EC560 Intro Photonics</option>
                            <option value="561">EC561 Err-Cntrl Codes</option>
                            <option value="568">EC568 Optcl Fib Waveg</option>
                            <option value="570">EC570 Lasers&Applctns</option>
                            <option value="571">EC571 Dg Vlsi Cir Des</option>
                            <option value="573">EC573 Solar Enrgy Sys</option>
                            <option value="574">EC574 Phy Smcndct Mat</option>
                            <option value="575">EC575 Semiconduct Dev</option>
                            <option value="577">EC577 E/O/M Prop Mat</option>
                            <option value="578">EC578 Fabric Tech Ic</option>
                            <option value="579">EC579 Nano/Mic Dev Te</option>
                            <option value="580">EC580 an Vlsi Cir Des</option>
                            <option value="582">EC582 Rf/Anlg Ic Des</option>
                            <option value="583">EC583 Pow Elec En Sys</option>
                            <option value="591">EC591 Photonics Lab 1</option>
                            <option value="707">EC707 Radr Rmote Sens</option>
                            <option value="710">EC710 Dynamic Prog</option>
                            <option value="717">EC717 Img Recon&Resto</option>
                            <option value="719">EC719 Stat Pat Recogn</option>
                            <option value="720">EC720 Dig Video Proc</option>
                            <option value="724">EC724 Adv Optmztn T/M</option>
                            <option value="730">EC730 Inf/Theor Algor</option>
                            <option value="745">EC745 Nanomedicine</option>
                            <option value="762">EC762 Quantum Optics</option>
                            <option value="765">EC765 BME Op+biophotn</option>
                            <option value="770">EC770 Int Optoelects</option>
                            <option value="771">EC771 Ga As Devices</option>
                            <option value="772">EC772 Vlsi Gr Des Prj</option>
                            <option value="773">EC773 Adv Opt Microsc</option>
                            <option value="774">EC774 Qnt Str&Pho Dev</option>
                            <option value="777">EC777 Nano-Optics</option>
                            <option value="782">EC782 Rf/Anlog Ic Des</option>
                        </select>&nbsp
               
                   

                        <div style="float: left">
                            <br />
                            <br />
                            <br />
                            &nbsp
                   
                       

                            <button type="button" onclick="addCourse()">></button><br />
                            <br />
                            &nbsp
                   
                       

                            <button type="button" onclick="rmCourse()"><</button>
                        </div>
                        <select size="10" id="crses" name="crses" style="width: 250px">
                        </select>
                    </div>
                    <br />
                    <div style="text-align: center">
                        <label id="errmsg" style="color: red"></label>
                    </div>
                    <br />
                    <div style="width: 70px">
                        <input type="button" value="Submit" onclick="mySubmit()" />
                        <input type="hidden" id="slctcrs" name="selection" value="" />
                    </div>
                </div>
            </div>
        </div>
    </form>
    <script>
        function addCourse() {
            var items = document.getElementById("allcrs");
            var index = items.selectedIndex;
            if (index === -1) {
                document.getElementById("errmsg").innerHTML = "Please select a course to add.";
                return;
            }
            document.getElementById("errmsg").innerHTML = "";

            var crs = items.options.item(index);
            var newItem = document.getElementById("crses");
            if (newItem.options.length > 7) {
                document.getElementById("errmsg").innerHTML = "You couldn't have selected over 8 courses!";
                return;
            }
            document.getElementById("errmsg").innerHTML = "";

            newItem.options.add(crs);
        }

        function rmCourse() {
            var items = document.getElementById("crses");
            var index = items.selectedIndex;
            if (index === -1) {
                document.getElementById("errmsg").innerHTML = "Please select a course to remove.";
                return;
            }
            document.getElementById("errmsg").innerHTML = "";

            var crs = items.options.item(index);
            var newItem = document.getElementById("allcrs");

            newItem.options.add(crs);
        }

        function mySubmit() {
            if (document.getElementById("username").value === "") {
                document.getElementById("errmsg").innerHTML = "Please enter a username.";
                return;
            }

            if (document.getElementById("psw").value === "") {
                document.getElementById("errmsg").innerHTML = "Please enter a password.";
                return;
            }

            if (document.getElementById("confirmpsw").value === "") {
                document.getElementById("errmsg").innerHTML = "Please confirm your password.";
                return;
            }

            if (document.getElementById("confirmpsw").value != document.getElementById("psw").value) {
                document.getElementById("errmsg").innerHTML = "Please reconfirm your password.";
                return;
            }

            if (document.getElementById("email").value === "") {
                document.getElementById("errmsg").innerHTML = "Please enter your email.";
                return;
            }

            var len = document.getElementById("crses").options.length;
            if (len === 0) {
                document.getElementById("errmsg").innerHTML = "Please add your courses.";
                return;
            }
            document.getElementById("errmsg").innerHTML = "";

            var i;
            var temp = document.getElementById("slctcrs");
            for (i = 0; i < len; i++) {
                temp.value += document.getElementById("crses").options[i].value;
            }

            document.getElementById("registration").submit();
        }
    </script>
</body>
</html>
