<%@ Page Language="C#" AutoEventWireup="true" CodeFile="student.aspx.cs" Inherits="contest_student" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body  style="background-image:url(image/s3.png);background-repeat:no-repeat"  >
    <form id="form1" runat="server" >
    <div>
        <h2><font color="purple">欢迎来到学生教务系统界面</font>              
        </h2>
        <asp:Label ID="Label2" runat="server" Text=""></asp:Label><br /><br />
        <asp:gridview id="dg" runat="server"></asp:gridview><br />
        <br />学科名称：<asp:TextBox ID="TextBox1" runat="server" Width="150" OnTextChanged="TextBox1_TextChanged"></asp:TextBox><br /><br />
        <asp:Label ID="Label1" runat="server" Text=""></asp:Label><br /><br />
        <asp:Label ID="Message" runat="server" Text=""></asp:Label><br /><br />
        <asp:Button ID="Button1" runat="server" Text="查询成绩" OnClick="Button1_Click" />&nbsp;
        <asp:Button ID="Button2" runat="server" Text="查询均分" OnClick="Button2_Click" />&nbsp;
        <asp:Button ID="Button3" runat="server" Text="查询排名" OnClick="Button3_Click" />
        <br /><br />
        <br />
    </div>
    </form>
</body>
</html>
