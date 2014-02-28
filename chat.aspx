<%@ Page Language="C#" AutoEventWireup="true" CodeFile="chat.aspx.cs" Inherits="chat" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Page Title</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="css/jquery.mobile-1.2.1.min.css" rel="stylesheet" type="text/css" />
    <script src="js/jquery-1.8.3.min.js" type="text/javascript"></script>
    <script src="js/jquery.mobile-1.2.1.min.js" type="text/javascript"></script>
   
</head>
<body onunload="Leave()" onload="document.getElementById('txtMsg').focus();">
    <form id="form1" runat="server">
    <input id="hdnRoomID" type="hidden" name="hdnRoomID" runat="server" />
    <input id="hdnUser" type="hidden" name="hdnUser" runat="server" />
    
    <asp:ScriptManager ID="ScriptManager1" runat="server" EnablePartialRendering="True"
        EnablePageMethods="True">
        <Scripts>
            <asp:ScriptReference Path="js/scripts.js" />
        </Scripts>
    </asp:ScriptManager>
    <div data-role="page" id="one">
        <div data-role="header">
            <h1>
                Chat138</h1>
        </div>
        <!-- /header -->
        <div data-role="content">
           <asp:TextBox runat="server" ReadOnly="true" TextMode="MultiLine" ID="txt" Style="width: 100%;
                height: 260px" Rows="16" Columns="79"></asp:TextBox>&nbsp;&nbsp;
            <asp:TextBox ID="txtMsg" Width="100%" runat="server"></asp:TextBox>
            <%-- <input id="btn" style="visibility: hidden" onclick="cl" type="button"
                value="Enviar" class="btn" />--%>
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
