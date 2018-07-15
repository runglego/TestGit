<%@ Page Language="C#" AutoEventWireup="true" CodeFile="教师注册.aspx.cs" Inherits="教师注册" %>

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
            <h1>注册</h1>
            <form id="Form1" action="" method="post" runat="server">
               <asp:TextBox ID="T_num" runat="server" class="username" placeholder="请输入您的职工号！"></asp:TextBox>
                 <asp:TextBox ID="T_password" runat="server" class="password" placeholder="请输入您的密码！" TextMode="Password"></asp:TextBox>
                 <asp:TextBox ID="pwd" runat="server" class="password" placeholder="请确认您的密码！" TextMode="Password"></asp:TextBox>
                 <asp:TextBox ID="name" runat="server" class="username" placeholder="请输入您的姓名！"></asp:TextBox>
                 <asp:TextBox ID="xueyuan" runat="server" class="username" placeholder="请输入您的学院！"></asp:TextBox>
                 <asp:TextBox ID="zhicheng" runat="server" class="username" placeholder="请输入您的职称！"></asp:TextBox>
                 <asp:TextBox ID="sex" runat="server" class="username" placeholder="请输入您的性别！"></asp:TextBox>
                 <asp:TextBox ID="tel" runat="server" class="username" placeholder="请输入您的电话！"></asp:TextBox>
                 <asp:TextBox ID="minzu" runat="server" class="username" placeholder="请输入您的民族！"></asp:TextBox>
                 <asp:TextBox ID="jiguan" runat="server" class="username" placeholder="请输入您的籍贯！"></asp:TextBox>
                 
                <asp:Button ID="Button1" runat="server" Text="提交" OnClick="注册"  />
            
            <asp:RequiredFieldValidator id="Validator1" runat="Server"  ControlToValidate="T_num"   
        ErrorMessage="学号必须输入" Display="Static"></asp:RequiredFieldValidator>
        <asp:RequiredFieldValidator id="RequiredFieldValidator1" runat="Server"  ControlToValidate="T_password"   
        ErrorMessage="密码必须输入" Display="Static"></asp:RequiredFieldValidator>
        <asp:RequiredFieldValidator id="RequiredFieldValidator2" runat="Server"  ControlToValidate="pwd"   
        ErrorMessage="确认密码必须输入" Display="Static"></asp:RequiredFieldValidator>
        <asp:CompareValidator id="CV" ControlToValidate="pwd"  ControlToCompare="T_password" Type="String"  
           Operator="Equal"  Display="static" runat="server"></asp:CompareValidator>
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
