<%@ Page Language="C#" AutoEventWireup="true" CodeFile="reviews.aspx.cs" Inherits="reviews" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div id="psReviews" runat="server" style="padding-left: 10px; padding-right: 10px">
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
    </form>
</body>
</html>
