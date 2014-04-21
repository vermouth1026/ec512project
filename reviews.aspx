<%@ Page Language="C#" AutoEventWireup="true" CodeFile="reviews.aspx.cs" Inherits="reviews" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div id="psReviews">
            <div id="review1" runat="server" style="border: 1px solid silver; border-radius: 10px; height: 160px; padding: 30px 20px 20px 30px; background-color: seashell">
                <div id="profile1" runat="server" style="width: 15%; float: left; height: 150px">
                </div>
                <div style="width: 83%; float: right; height: 150px">
                    <div style="height: 35px">
                        <div style="float: left; width: 45%; padding-left: 10px">
                            <asp:Label runat="server" ID="rcc1" Text="EC501 XXXXXX" />
                        </div>
                        <div style="float: right; width: 45%; text-align: right">
                            <asp:Label runat="server" ID="rcs1_0" BorderColor="silver" BorderStyle="Solid" BorderWidth="1px" BackColor="Tomato" ForeColor="White">&nbsp Total: 5 &nbsp</asp:Label>
                            <asp:Label runat="server" ID="rcs1_1" BorderColor="silver" BorderStyle="Solid" BorderWidth="1px" BackColor="Orange" ForeColor="White">&nbsp Prof: 5 &nbsp</asp:Label>
                            <asp:Label runat="server" ID="rcs1_2" BorderColor="silver" BorderStyle="Solid" BorderWidth="1px" BackColor="deepskyblue" ForeColor="White">&nbsp Cont: 5 &nbsp</asp:Label>
                            <asp:Label runat="server" ID="rcs1_3" BorderColor="silver" BorderStyle="Solid" BorderWidth="1px" BackColor="seagreen" ForeColor="White">&nbsp Hard: 5 &nbsp</asp:Label>
                        </div>
                    </div>
                    <div style="text-align: left; border: 1px solid silver; height: 100px; padding: 10px 10px 10px 10px; background-color: white">
                        <asp:Label runat="server" ID="comment1">Lorem ipsum onsectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat.</asp:Label>
                    </div>
                </div>
            </div>
            <br />
            <div id="review2" runat="server" style="border: 1px solid silver; border-radius: 10px; height: 160px; padding: 30px 20px 20px 30px; background-color: seashell">
                <div id="profile2" runat="server" style="width: 15%; float: left; height: 150px">
                </div>
                <div style="width: 83%; float: right; height: 150px">
                    <div style="height: 35px">
                        <div style="float: left; width: 45%; padding-left: 10px">
                            <asp:Label runat="server" ID="rcc2" Text="EC502 XXXXXX" />
                        </div>
                        <div style="float: right; width: 45%; text-align: right">
                            <asp:Label runat="server" ID="rcs2_0" BorderColor="silver" BorderStyle="Solid" BorderWidth="1px" BackColor="Tomato" ForeColor="White">&nbsp Total: 5 &nbsp</asp:Label>
                            <asp:Label runat="server" ID="rcs2_1" BorderColor="silver" BorderStyle="Solid" BorderWidth="1px" BackColor="Orange" ForeColor="White">&nbsp Prof: 5 &nbsp</asp:Label>
                            <asp:Label runat="server" ID="rcs2_2" BorderColor="silver" BorderStyle="Solid" BorderWidth="1px" BackColor="deepskyblue" ForeColor="White">&nbsp Cont: 5 &nbsp</asp:Label>
                            <asp:Label runat="server" ID="rcs2_3" BorderColor="silver" BorderStyle="Solid" BorderWidth="1px" BackColor="seagreen" ForeColor="White">&nbsp Hard: 5 &nbsp</asp:Label>
                        </div>
                    </div>
                    <div style="text-align: left; border: 1px solid silver; height: 100px; padding: 10px 10px 10px 10px; background-color: white">
                        <asp:Label runat="server" ID="comment2">Lorem ipsum onsectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat.</asp:Label>
                    </div>
                </div>
            </div>
            <br />
            <div id="review3" runat="server" style="border: 1px solid silver; border-radius: 10px; height: 160px; padding: 30px 20px 20px 30px; background-color: seashell">
                <div id="profile3" runat="server" style="width: 15%; float: left; height: 150px">
                </div>
                <div style="width: 83%; float: right; height: 150px">
                    <div style="height: 35px">
                        <div style="float: left; width: 45%; padding-left: 10px">
                            <asp:Label runat="server" ID="rcc3" Text="EC503 XXXXXX" />
                        </div>
                        <div style="float: right; width: 45%; text-align: right">
                            <asp:Label runat="server" ID="rcs3_0" BorderColor="silver" BorderStyle="Solid" BorderWidth="1px" BackColor="Tomato" ForeColor="White">&nbsp Total: 5 &nbsp</asp:Label>
                            <asp:Label runat="server" ID="rcs3_1" BorderColor="silver" BorderStyle="Solid" BorderWidth="1px" BackColor="Orange" ForeColor="White">&nbsp Prof: 5 &nbsp</asp:Label>
                            <asp:Label runat="server" ID="rcs3_2" BorderColor="silver" BorderStyle="Solid" BorderWidth="1px" BackColor="deepskyblue" ForeColor="White">&nbsp Cont: 5 &nbsp</asp:Label>
                            <asp:Label runat="server" ID="rcs3_3" BorderColor="silver" BorderStyle="Solid" BorderWidth="1px" BackColor="seagreen" ForeColor="White">&nbsp Hard: 5 &nbsp</asp:Label>
                        </div>
                    </div>
                    <div style="text-align: left; border: 1px solid silver; height: 100px; padding: 10px 10px 10px 10px; background-color: white">
                        <asp:Label runat="server" ID="comment3">Lorem ipsum onsectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat.</asp:Label>
                    </div>
                </div>
            </div>
            <input type="hidden" id="pgNum" name="pgNum" value="" runat="server" />
            <input type="hidden" id="corner" name="corner" value="" runat="server" />
            <br style="clear: both" />

        </div>
    </form>
</body>
</html>
