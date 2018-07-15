<%@ Page Language="C#" AutoEventWireup="true" CodeFile="grade.aspx.cs" Inherits="contest_grade" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body   style="background-image:url(image/g1.png);background-repeat:no-repeat";>
    <form id="form1" runat="server">
    <div>
        信息显示：<asp:gridview id="dg" runat="server"></asp:gridview>
        
       <font align="center"> 学号：<asp:TextBox ID="TextBox1" runat="server" OnTextChanged="TextBox1_TextChanged" Width="100"></asp:TextBox><br />
        姓名：<asp:TextBox ID="TextBox2" runat="server" OnTextChanged="TextBox2_TextChanged" Width="100" ></asp:TextBox><br />
        语文：<asp:TextBox ID="TextBox3" runat="server" OnTextChanged="TextBox3_TextChanged" Width="100"></asp:TextBox><br />
        数学：<asp:TextBox ID="TextBox4" runat="server" OnTextChanged="TextBox4_TextChanged" Width="100"></asp:TextBox><br />
        英语：<asp:TextBox ID="TextBox5" runat="server" OnTextChanged="TextBox5_TextChanged" Width="100"></asp:TextBox><br />
        理综：<asp:TextBox ID="TextBox6" runat="server" OnTextChanged="TextBox6_TextChanged" Width="100"></asp:TextBox>  </font><br />
        <!--总分：<asp:TextBox ID="TextBox7" runat="server" Width="70" OnTextChanged="TextBox7_TextChanged"></asp:TextBox>-->
        <br />
        <asp:Button ID="Button1" runat="server" Text="提交" OnClick="Button1_Click" />
        <asp:Button ID="Button2" runat="server" Text="显示" OnClick="Button2_Click" style="height: 21px" />
        <asp:Button ID="Button3" runat="server" Text="完成" OnClick="Button3_Click" />
    </div>
    </form>
    
</body>
</html>
