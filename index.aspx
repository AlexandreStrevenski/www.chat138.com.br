<%@ Page Language="C#" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="index" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Page Title</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="css/jquery.mobile-1.2.1.min.css" rel="stylesheet" type="text/css" />
    <script src="js/jquery-1.8.3.min.js" type="text/javascript"></script>
    <script src="js/jquery.mobile-1.2.1.min.js" type="text/javascript"></script>
</head>
<body>
    <form id="form1" runat="server" action="index.aspx">
    <div data-role="page" id="one">
        <div data-role="header">
            <h1>
                Chat138</h1>
        </div>
        <!-- /header -->
        <div data-role="content">
            <ul data-role="listview">
                <li runat="server" id="alvorada"></li>
                <li><a href="login.aspx?rid=2">Cachoerinha</a></li>
                <li><a href="login.aspx?rid=3">Canoas</a></li>
                <li><a href="login.aspx?rid=4">Esteio</a></li>
                <li><a href="login.aspx?rid=5">Gravataí</a></li>
                <li><a href="login.aspx?rid=6">Novo Hamburgo</a></li>
                <li><a href="login.aspx?rid=7">Porto Alegre</a></li>
                <li><a href="login.aspx?rid=8">Sapucaia</a></li>
                <li><a href="login.aspx?rid=9">São Leopoldo</a></li>
            </ul>
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
