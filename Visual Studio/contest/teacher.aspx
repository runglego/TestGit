<%@ Page Language="C#" AutoEventWireup="true" CodeFile="teacher.aspx.cs" Inherits="contest_teacher" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body  style="background-image:url(image/t1.png)">
    <form id="form1" runat="server">
    <div>
    <h1><font color="purple">欢迎来到教职工界面</font></h1>
        <asp:Label ID="Label1" runat="server" Text="" align="center" ></asp:Label><br /><br />
        <asp:Button ID="Button1" runat="server" Text="录入" PostBackUrl="~/contest/grade.aspx" OnClick="Button1_Click" /><br /><br />
        <asp:Button ID="Button2" runat="server" Text="查询" PostBackUrl="~/contest/t_inquire.aspx" OnClick="Button2_Click" />
    </div>
    </form>
</body>
</html>
