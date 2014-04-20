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
    <form id="form1" runat="server" action="course.aspx">
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
                <div id="psReviews" style="padding-left: 10px; padding-right: 10px">
                    <div style="border: 1px solid black; border-radius: 10px; height: 160px; padding: 30px 20px 20px 30px; background-color: #FFFFBF">
                        <div id="profile1" runat="server" style="width: 15%; float: left; height: 150px">
                        </div>
                        <div style="width: 83%; float: right; height: 150px">
                            <div style="height: 35px">
                                <div style="float: left; width: 45%; padding-left: 10px">
                                    <asp:Label runat="server" ID="rcc1" Text="EC501 XXXXXX" />
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
                                    <asp:Label runat="server" ID="rcc2" Text="EC502 XXXXXX" />
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
                                    <asp:Label runat="server" ID="rcc3" Text="EC503 XXXXXX" />
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
            <div runat="server" id="myReview" style="padding: 0px 20px 30px 20px; border-top: 1px solid silver">
                <h3>My Review</h3>
                <div id="myComment" style="padding-left: 10px; padding-right: 10px">
                    <div style="border: 1px solid black; height: 330px; padding: 30px 20px 20px 30px; background-color: #D8E4FA">
                        <div id="profile0" runat="server" style="width: 20%; float: left; height: 200px">
                        </div>
                        <div style="width: 78%; float: right; height: 310px">
                            <textarea id="review" name="review" style="width: 99%; height: 150px;"></textarea>
                            <br />
                            <br />
                            <div>
                                <label style="float: left">Overall:</label>
                                <div style="float: right">
                                    <input type="radio" name="rate0" value="1" /><label>1</label>
                                    &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                                <input type="radio" name="rate0" value="2" /><label>2</label>
                                    &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                                <input type="radio" name="rate0" value="3" /><label>3</label>
                                    &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                                <input type="radio" name="rate0" value="4" /><label>4</label>
                                    &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                                <input type="radio" name="rate0" value="5" /><label>5</label>
                                    &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                                </div>
                            </div>
                            <br />
                            <div>
                                <label style="float: left">Professor:</label>
                                <div style="float: right">
                                    <input type="radio" name="rate1" value="1" /><label>1</label>
                                    &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                                <input type="radio" name="rate1" value="2" /><label>2</label>
                                    &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                                <input type="radio" name="rate1" value="3" /><label>3</label>
                                    &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                                <input type="radio" name="rate1" value="4" /><label>4</label>
                                    &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                                <input type="radio" name="rate1" value="5" /><label>5</label>
                                    &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                                </div>
                            </div>
                            <br />
                            <div>
                                <label style="float: left">Contents:</label>
                                <div style="float: right">
                                    <input type="radio" name="rate2" value="1" /><label>1</label>
                                    &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                                <input type="radio" name="rate2" value="2" /><label>2</label>
                                    &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                                <input type="radio" name="rate2" value="3" /><label>3</label>
                                    &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                                <input type="radio" name="rate2" value="4" /><label>4</label>
                                    &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                                <input type="radio" name="rate2" value="5" /><label>5</label>
                                    &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                                </div>
                            </div>
                            <br />
                            <div>
                                <label style="float: left">Difficulty:</label>
                                <div style="float: right">
                                    <input type="radio" name="rate3" value="1" /><label>1</label>
                                    &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                                <input type="radio" name="rate3" value="2" /><label>2</label>
                                    &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                                <input type="radio" name="rate3" value="3" /><label>3</label>
                                    &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                                <input type="radio" name="rate3" value="4" /><label>4</label>
                                    &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                                <input type="radio" name="rate3" value="5" /><label>5</label>
                                    &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                                </div>
                            </div>
                            <br />
                            <br />
                            <br />
                            <div>
                                <label id="errmsg" style="color: red"></label>
                                <input type="button" onclick="mySubmit()" style="float: right" value="Submit" />
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </form>
    <script>
        function mySubmit()
        {
            var text = document.forms[0].review;
            if (text.value === "") {
                document.getElementById("errmsg").textContent = "Please fill in your review!";
                return;
            }

            var rates = document.forms[0].rate0;
            var txt0 = "";
            var i;
            for (i = 0; i < rates.length; i++)
            {
                if (rates[i].checked)
                    txt0 = txt0 + rates[i].value;
            }
            if (txt0 === "")
            {
                document.getElementById("errmsg").textContent = "Please complete your ratings!";
                return;
            }

            rates = document.forms[0].rate1;
            var txt1 = "";
            for (i = 0; i < rates.length; i++) {
                if (rates[i].checked)
                    txt1 = txt1 + rates[i].value;
            }
            if (txt1 === "") {
                document.getElementById("errmsg").textContent = "Please complete your ratings!";
                return;
            }

            rates = document.forms[0].rate2;
            var txt2 = "";
            for (i = 0; i < rates.length; i++) {
                if (rates[i].checked)
                    txt2 = txt2 + rates[i].value;
            }
            if (txt2 === "") {
                document.getElementById("errmsg").textContent = "Please complete your ratings!";
                return;
            }

            rates = document.forms[0].rate3;
            var txt3 = "";
            for (i = 0; i < rates.length; i++) {
                if (rates[i].checked)
                    txt3 = txt3 + rates[i].value;
            }
            if (txt3 === "") {
                document.getElementById("errmsg").textContent = "Please complete your ratings!";
                return;
            }

            document.getElementById("form1").submit();
        }
    </script>
</body>
</html>
