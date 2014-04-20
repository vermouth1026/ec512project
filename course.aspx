<%@ Page Language="C#" AutoEventWireup="true" CodeFile="course.aspx.cs" Inherits="course" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title></title>
    <link href="StyleSheet.css" rel="stylesheet" type="text/css" />
    <script>
        function loadNextPage() {
            var xmlhttp;
            if (window.XMLHttpRequest) {
                xmlhttp = new XMLHttpRequest();
            }
            else {
                xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
            }
            xmlhttp.onreadystatechange = function () {
                if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
                    document.getElementById("profile1").innerHTML = "<a href=\"Default.aspx\">Home</a>";//xmlhttp.responseText;
                }
            }
            xmlhttp.open("GET", "Default.aspx", true);
            xmlhttp.send();
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
            <div style="width: 940px; border-top: 1px solid silver; border-bottom: 1px solid silver; height: 350px; padding: 30px 30px 30px 30px">
                <div style="width: 416px; height: 246px; float: left; padding: 10px 10px 10px 10px; border: 2px solid black">
                    <asp:Label runat="server" ID="num" Font-Size="XX-Large">EC512</asp:Label>
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
                <div style="width: 480px; height: 270px; float: right">
                    <div style="float: left; width: 178px; height: 268px; background-color: tomato; border: 1px solid white; text-align: center">
                        <br />
                        <br />
                        <br />
                        <br />
                        <asp:Label ID="score0" runat="server" Font-Size="32" ForeColor="white" Width="178px">TOTAL<br />5.0</asp:Label>
                    </div>
                    <div style="float: left; width: 290px; height: 270px">
                        <div style="float: left; width: 288px; height: 88px; background-color: orange; border: 1px solid white; text-align: center">
                            <br />
                            <asp:Label ID="score1" runat="server" Font-Size="24" ForeColor="white" Width="298px">Professor: 5.0</asp:Label>
                        </div>
                        <div style="float: left; width: 288px; height: 88px; background-color: deepskyblue; border: 1px solid white; text-align: center">
                            <br />
                            <asp:Label ID="score2" runat="server" Font-Size="24" ForeColor="white" Width="298px">Contents: 5.0</asp:Label>
                        </div>
                        <div style="float: left; width: 288px; height: 88px; background-color: seagreen; border: 1px solid white; text-align: center">
                            <br />
                            <asp:Label ID="score3" runat="server" Font-Size="24" ForeColor="white" Width="298px">Difficulty: 5.0</asp:Label>
                        </div>
                    </div>
                </div>
                <br style="clear: both" />
                <div style="width: 100%; padding-top: 25px; padding-bottom: 25px" id="description">Description goes here.</div>
            </div>
            <div id="reviews" style="padding-left: 20px; padding-right: 20px; height: 800px">
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

                </div>
                <div style="padding-left: 10px">
                    <button type="button" id="next" onclick="loadNextPage()">Next Page</button>
                </div>
                <br />
            </div>
            <div id="myReview" style="padding: 0px 20px 30px 20px; border-top: 1px solid silver">
                <h3>My Review</h3>
                <div id="myComment" style="padding-left: 10px; padding-right: 10px">
                    <div style="border: 1px solid black; height: 380px; padding: 30px 20px 20px 30px; background-color: #D8E4FA">
                        <div id="profile0" runat="server" style="width: 20%; float: left; height: 200px">
                        </div>
                        <div style="width: 78%; float: right; height: 360px">
                            <asp:TextBox ID="review" runat="server" Height="150px" Width="99%" TextMode="MultiLine"></asp:TextBox>
                            <br />
                            <br />
                            <div>
                                <label style="float: left; font-size: x-large">Overall:</label>
                                <div style="float: right">
                                    <asp:RadioButton runat="server" GroupName="rate0" Text="1" Font-Size="X-Large"></asp:RadioButton>
                                    &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                                <asp:RadioButton runat="server" GroupName="rate0" Text="2" Font-Size="X-Large"></asp:RadioButton>
                                    &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                                <asp:RadioButton runat="server" GroupName="rate0" Text="3" Font-Size="X-Large"></asp:RadioButton>
                                    &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                                <asp:RadioButton runat="server" GroupName="rate0" Text="4" Font-Size="X-Large"></asp:RadioButton>
                                    &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                                <asp:RadioButton runat="server" GroupName="rate0" Text="5" Font-Size="X-Large"></asp:RadioButton>
                                    &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                                </div>
                            </div>
                            <br />
                            <br />
                            <div>
                                <label style="float: left; font-size: x-large">Professor:</label>
                                <div style="float: right">
                                    <asp:RadioButton runat="server" GroupName="rate1" Text="1" Font-Size="X-Large"></asp:RadioButton>
                                    &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                                <asp:RadioButton runat="server" GroupName="rate1" Text="2" Font-Size="X-Large"></asp:RadioButton>
                                    &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                                <asp:RadioButton runat="server" GroupName="rate1" Text="3" Font-Size="X-Large"></asp:RadioButton>
                                    &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                                <asp:RadioButton runat="server" GroupName="rate1" Text="4" Font-Size="X-Large"></asp:RadioButton>
                                    &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                                <asp:RadioButton runat="server" GroupName="rate1" Text="5" Font-Size="X-Large"></asp:RadioButton>
                                    &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                                </div>
                            </div>
                            <br />
                            <br />
                            <div>
                                <label style="float: left; font-size: x-large">Contents:</label>
                                <div style="float: right">
                                    <asp:RadioButton runat="server" GroupName="rate2" Text="1" Font-Size="X-Large"></asp:RadioButton>
                                    &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                                <asp:RadioButton runat="server" GroupName="rate2" Text="2" Font-Size="X-Large"></asp:RadioButton>
                                    &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                                <asp:RadioButton runat="server" GroupName="rate2" Text="3" Font-Size="X-Large"></asp:RadioButton>
                                    &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                                <asp:RadioButton runat="server" GroupName="rate2" Text="4" Font-Size="X-Large"></asp:RadioButton>
                                    &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                                <asp:RadioButton runat="server" GroupName="rate2" Text="5" Font-Size="X-Large"></asp:RadioButton>
                                    &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                                </div>
                            </div>
                            <br />
                            <br />
                            <div>
                                <label style="float: left; font-size: x-large">Difficulty:</label>
                                <div style="float: right">
                                    <asp:RadioButton runat="server" GroupName="rate3" Text="1" Font-Size="X-Large"></asp:RadioButton>
                                    &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                                <asp:RadioButton runat="server" GroupName="rate3" Text="2" Font-Size="X-Large"></asp:RadioButton>
                                    &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                                <asp:RadioButton runat="server" GroupName="rate3" Text="3" Font-Size="X-Large"></asp:RadioButton>
                                    &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                                <asp:RadioButton runat="server" GroupName="rate3" Text="4" Font-Size="X-Large"></asp:RadioButton>
                                    &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                                <asp:RadioButton runat="server" GroupName="rate3" Text="5" Font-Size="X-Large"></asp:RadioButton>
                                    &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                                </div>
                            </div>
                            <br /><br /><br />
                            <div>
                                <label id="errmsg" style="color: red"></label>
                                <button type="submit" id="submit" style="float:right">Submit</button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
