<%@ Page Language="C#" AutoEventWireup="true" CodeFile="主页.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server" >
 <meta name="description" content="app, web app, responsive, admin dashboard, admin, flat, flat ui, ui kit, off screen nav" />
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />
  <link rel="stylesheet" href="src/css/bootstrap.css" type="text/css" />
  <link rel="stylesheet" href="src/css/animate.css" type="text/css" />
  <link rel="stylesheet" href="src/css/font-awesome.min.css" type="text/css" />
  <link rel="stylesheet" href="src/css/font.css" type="text/css" cache="false" />
  <link rel="stylesheet" href="src/css/plugin.css" type="text/css" />
  <link rel="stylesheet" href="src/css/app.css" type="text/css" />
<style type="text/css" >
body
{
    background-image:url(背景图片.jpg); background-repeat:no-repeat; background-position:inherit; 
}
    </style>
    <title>大作业</title>
</head>
<body>
    <form id="form1" runat="server">
    <div style="font-size: xx-large; font-family: 华文楷体; text-align: center;">
    欢迎来到大连海事大学<br />
        <asp:Image ID="Image1" runat="server" ImageUrl="~/2.jpg" /><br />
    <table align="center">
    <tr>
       学汇百川<br />
       德济四海<br /><br />
    </tr>
    <tr>
    <td>
    <asp:Button ID="Button1" runat="server" Text="学生注册" PostBackUrl="学生注册.aspx" />
    </td>
    <td>
    <asp:Button ID="Button4" runat="server" Text="教师注册" PostBackUrl="教师注册.aspx" />
    </td>
    </tr>
    <tr>
    <td>
    <asp:Button ID="Button2" runat="server" Text="学生登录" PostBackUrl="学生登录.aspx" />
    </td>
     <td>
    <asp:Button ID="Button3" runat="server" Text="教师登录" PostBackUrl="教师登录.aspx" />
    </td>
    </tr>
    <tr>
    
     <asp:Button ID="Button5" runat="server" Text="管理员登录" PostBackUrl="~/管理员/管理员登录.aspx" />

    </tr>
    </table>
    </div>
        </form>
    <%--<section class="hbox stretch">
       <nav class="nav-primary hidden-xs">
            <ul class="nav">
             <li class="dropdown-submenu">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown" >
                  <i class="fa fa-flask"></i>
                  <span>教师信息</span>
                </a>
                <ul class="dropdown-menu">                 
                  <li>
                    <a href="学生信息/航海学院.aspx">航海学院</a>
                  </li>
                  <li>
                    <a href="学生信息/信息科学技术学院.aspx">信息科学技术学院</a>
                  </li>
                  </ul>
              </li>
            </ul>
        </nav>
    </section>


     <!-- /.vbox -->
  </section>
	<script src="src/js/jquery.min.js"></script>
  <!-- Bootstrap -->
  <script src="src/js/bootstrap.js"></script>
  <!-- Sparkline Chart -->
  <script src="src/js/charts/sparkline/jquery.sparkline.min.js"></script>
  <!-- App -->
  <script src="src/js/app.js"></script>
  <script src="src/js/app.plugin.js"></script>
  <script src="src/js/app.data.js"></script>  --%>  
</body>
</html>
