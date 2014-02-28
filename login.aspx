<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Page Title</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
<%--    <link href="css/jquery.mobile-1.2.1.min.css" rel="stylesheet" type="text/css" />
    <script src="js/jquery-1.8.3.min.js" type="text/javascript"></script>
    <script src="js/jquery.mobile-1.2.1.min.js" type="text/javascript"></script>--%>
    <script type="text/javascript">
        function chat() {
            /*$.ajax({
                type: "POST",
                url: "login.aspx/btnChat_Click1",
                data: "{}",
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: OnSuccess,
                failure: function (response) {
                    alert(response.d);
                }
            });*/
            alert('teste');
        }

    </script>
</head>
<body>
    <form id="form1" runat="server">
    <input id="hdnRoomID" type="hidden" name="hdnRoomID" runat="server" />
    <div data-role="page" id="one">
        <div data-role="header">
            <h1>
                Chat138</h1>
        </div>
        <!-- /header -->
        <div data-role="content">
            <asp:TextBox ID="txtUserName" Width="100%" runat="server"></asp:TextBox>
            <asp:Button ID="Button1" runat="server" Text="Button" onclick="Button1_Click" />
        </div>
        <div data-role="footer" data-theme="d">
            <h4>
                Chat138</h4>
        </div>
        <!-- /footer -->
    </div>
    </form>
</body>
</html>
