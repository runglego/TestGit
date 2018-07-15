<%@ Page Language="C#" AutoEventWireup="true" CodeFile="学生登录.aspx.cs" Inherits="登录" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
 <head>

        <meta charset="utf-8">
        <title>登录(Login)</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="">
        <meta name="author" content="">

        <!-- CSS -->
        <link rel="stylesheet" href="src/css/reset.css">
        <link rel="stylesheet" href="src/css/supersized.css">
        <link rel="stylesheet" href="src/css/style.css">

        <!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
        <!--[if lt IE 9]>
            <script src="assets/js/html5.js"></script>
        <![endif]-->

    </head>

    <body>

        <div class="page-container">
            <h1>学生登录</h1>
            <form action="" method="post" runat=server>
               <asp:TextBox ID="S_num" runat="server" class="username" placeholder="请输入您的用户名！"></asp:TextBox>
                 <asp:TextBox ID="S_password" runat="server" class="password" placeholder="请输入您的密码！" TextMode="Password"></asp:TextBox>
                <asp:Button ID="Button1" runat="server" Text="登录" onclick="学生登录"  Width="382px" />
            </form>
        </div>
        <ul id="supersized" class="quality" style="visibility: visible;">
        <li class="slide-0 prevslide"><a target="_blank">
        <img src="assets/img/1.jpg" style="width: 1346px; left: 0px; top: -89px; height: 753.7600000000001px;">
        </a>
        </li>
        <li class="slide-1 activeslide" style="visibility: visible; opacity: 1;">
        <a target="_blank">
        <img src="assets/img/2.jpg" style="width: 1346px; left: 0px; top: -88.5px; height: 753.7600000000001px;">
        </a>
        </li>
        <li class="slide-2">
        <a target="_blank">
        <img src="assets/img/3.jpg" style="width: 1346px; height: 753.7600000000001px; left: 0px; top: -89px;">
        </a>
        </li>
        </ul>
	
        <!-- Javascript -->
        <script src="src/js/jquery-1.8.2.min.js" ></script>
        <script src="src/js/supersized.3.2.7.min.js" ></script>
        <script src="src/js/supersized-init.js" ></script>
        <script src="src/js/scripts.js" ></script>

    </body>
</html>
