<%@ Page Language="C#" AutoEventWireup="true" CodeFile="t_inquire.aspx.cs" Inherits="contest_t_inquire" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body   style="background-image:url(image/s1.png);background-repeat:no-repeat"  >
    <form id="form1" runat="server">
    <div>
    <h2 >
        <font color="orange">
        欢迎来到学生成绩查询系统</font>
    </h2>
        <asp:gridview id="dg" runat="server"></asp:gridview> <br />
        查询科目：<asp:TextBox ID="TextBox1" runat="server" Width="100" OnTextChanged="TextBox1_TextChanged"></asp:TextBox><br /><br />
        <asp:Label ID="Label1" runat="server" Text=""></asp:Label><br /><br />
        <asp:Button ID="Button1" runat="server" Text="单科查询" OnClick="Button1_Click" />&nbsp;&nbsp;
        <asp:Button ID="Button3" runat="server" Text="单科排名" OnClick="Button3_Click" /><br /><br />
        <asp:Button ID="Button2" runat="server" Text="综合查询" OnClick="Button2_Click" />&nbsp;&nbsp;
        <asp:Button ID="Button4" runat="server" Text="综合排名" OnClick="Button4_Click" />
        <br /><br />
        <br /><br />
    </div>
    </form>
</body>
</html>
