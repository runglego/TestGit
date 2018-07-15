<%@ Page Language="C#" AutoEventWireup="true" CodeFile="航海学院1.aspx.cs" Inherits="管理员_航海学院1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
  <meta charset="utf-8" />
  <title>教务系统</title>
  <meta name="description" content="app, web app, responsive, admin dashboard, admin, flat, flat ui, ui kit, off screen nav" />
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />
  <link rel="stylesheet" href="../src/css/bootstrap.css" type="text/css" />
  <link rel="stylesheet" href="../src/css/animate.css" type="text/css" />
  <link rel="stylesheet" href="../src/css/font-awesome.min.css" type="text/css" />
  <link rel="stylesheet" href="../src/css/font.css" type="text/css" cache="false" />
  <link rel="stylesheet" href="../src/css/plugin.css" type="text/css" />
  <link rel="stylesheet" href="../src/css/app.css" type="text/css" />
  <!--[if lt IE 9]>
    <script src="js/ie/respond.min.js" cache="false"></script>
    <script src="js/ie/html5.js" cache="false"></script>
    <script src="js/ie/fix.js" cache="false"></script>
  <![endif]-->
</head>
<body>
  <section class="hbox stretch">
    <!-- .aside -->
    <aside class="bg-primary aside-sm" id="nav">
      <section class="vbox">
        <header class="dker nav-bar nav-bar-fixed-top">
          <a class="btn btn-link visible-xs" data-toggle="class:nav-off-screen" data-target="#nav">
            <i class="fa fa-bars"></i>
          </a>
          <a href="#" class="active" data-toggle="fullscreen" style="font-size: large">加油！<br /><br /></a>
          <a class="btn btn-link visible-xs" data-toggle="class:show" data-target=".nav-user">
            <i class="fa fa-comment-o"></i>
          </a>
        </header>
        <section>
          
          <!-- nav -->
          <nav class="nav-primary hidden-xs">
            <ul class="nav">
              <li class="active">
                <a href="学生信息1.aspx">
                  <i class="fa fa-eye" ></i>
                  <span>学生信息</span>
                </a>
              </li>
              <li class="dropdown-submenu">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown" >
                  <i class="fa fa-flask"></i>
                  <span>教师信息</span>
                </a>
                <ul class="dropdown-menu">                 
                  <li>
                    <a href="航海学院1.aspx">航海学院</a>
                  </li>
                  <li>
                    <a href="信息科学技术学院1.aspx">信息科学技术学院</a>
                  </li>
                  <li>
                    <a href="装备学院1.aspx">装备运输与海洋学院</a>
                  </li>
                  <li>
                    <a href="交管学院1.aspx">交通运输管理学院</a>
                  </li>
                  <li>
                    <a href="外国语学院1.aspx">外国语学院</a>
                  </li>
                  <li>
                    <a href="人文学院1.aspx">人文学院</a>
                  </li>
                   <li>
                    <a href="物理系1.aspx">物理系</a>
                  </li>
                </ul>
              </li>
              <li class="dropdown-submenu">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                  <i class="fa fa-file-text"></i>
                  <span>选课管理</span>
                </a>
                <ul class="dropdown-menu">                
                  <li>
                    <a href="选课公告1.aspx">选课公告</a>                    
                  </li>
                  <li>
                    <a href="选课方案1.aspx">选课方案</a>              
                  </li>
                  <li>
                    <a href="学期课表1.aspx">学期课表</a>
                  </li>  
                </ul>
              </li>
              <li class="dropdown-submenu">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                  <i class="fa fa-file-text"></i>
                  <span>学生成绩</span>
                </a>
                <ul class="dropdown-menu">                
                  <li>
                    <a href="学生全部成绩1.aspx">学生全部成绩</a>
                  </li>
                  <li>
                    <a href="学位课绩点1.aspx">学位课绩点</a>
                  </li>
                </ul>
              </li>
            </ul>
          </nav>
          <!-- / nav -->
          <!-- note -->
          <!-- / note -->
        </section>
        <footer class="footer bg-gradient hidden-xs">
          <a href="modal.lockme.html" data-toggle="ajaxModal" class="btn btn-sm btn-link m-r-n-xs pull-right">
            <i class="fa fa-power-off"></i>
          </a>
          <a href="#nav" data-toggle="class:nav-vertical" class="btn btn-sm btn-link m-l-n-sm">
            <i class="fa fa-bars"></i>
          </a>
        </footer>
      </section>
    </aside>
    <!-- /.aside -->
    <!-- .vbox -->
    <section id="content">
      <section class="vbox">
        <header class="header bg-white b-b">
          <p style="font-size: large">欢迎来到教务系统&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p>
          <p style="font-size: large"><a href="管理员登录.aspx">注销</a>
        </header>

 <form runat="server">     
<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        DataKeyNames="姓名,职工号" DataSourceID="SqlDataSource1" PageSize="20" 
     Width="1000px" Font-Size="Large">
      <Columns>
        <asp:BoundField DataField="姓名" HeaderText="姓名" ReadOnly="True" 
            SortExpression="姓名" />
        <asp:BoundField DataField="职工号" HeaderText="职工号" ReadOnly="True" 
            SortExpression="职工号" />
        <asp:BoundField DataField="年龄" HeaderText="年龄" SortExpression="年龄" />
        <asp:BoundField DataField="学院" HeaderText="学院" SortExpression="学院" />
        <asp:BoundField DataField="职位" HeaderText="职位" SortExpression="职位" />
        <asp:BoundField DataField="性别" HeaderText="性别" SortExpression="性别" />
        <asp:BoundField DataField="民族" HeaderText="民族" SortExpression="民族" />
        <asp:CommandField ShowEditButton="True" />
        <asp:CommandField ShowDeleteButton="True" />
    </Columns>
    </asp:GridView>
   
      <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:大作业ConnectionString3 %>" 
        DeleteCommand="DELETE FROM [航海学院] WHERE [姓名] = @姓名 AND [职工号] = @职工号" 
        InsertCommand="INSERT INTO [航海学院] ([姓名], [职工号], [年龄], [学院], [职位], [性别], [民族]) VALUES (@姓名, @职工号, @年龄, @学院, @职位, @性别, @民族)" 
        SelectCommand="SELECT * FROM [航海学院]" 
        UpdateCommand="UPDATE [航海学院] SET [年龄] = @年龄, [学院] = @学院, [职位] = @职位, [性别] = @性别, [民族] = @民族 WHERE [姓名] = @姓名 AND [职工号] = @职工号">
          <DeleteParameters>
              <asp:Parameter Name="姓名" Type="String" />
              <asp:Parameter Name="职工号" Type="String" />
          </DeleteParameters>
          <InsertParameters>
              <asp:Parameter Name="姓名" Type="String" />
              <asp:Parameter Name="职工号" Type="String" />
              <asp:Parameter Name="年龄" Type="String" />
              <asp:Parameter Name="学院" Type="String" />
              <asp:Parameter Name="职位" Type="String" />
              <asp:Parameter Name="性别" Type="String" />
              <asp:Parameter Name="民族" Type="String" />
          </InsertParameters>
          <UpdateParameters>
              <asp:Parameter Name="年龄" Type="String" />
              <asp:Parameter Name="学院" Type="String" />
              <asp:Parameter Name="职位" Type="String" />
              <asp:Parameter Name="性别" Type="String" />
              <asp:Parameter Name="民族" Type="String" />
              <asp:Parameter Name="姓名" Type="String" />
              <asp:Parameter Name="职工号" Type="String" />
          </UpdateParameters>
    </asp:SqlDataSource>
 <asp:FormView ID="FormView1" runat="server" DataKeyNames="姓名,职工号" 
        DataSourceID="SqlDataSource1" Width="500px" Font-Size="Large">
        <EditItemTemplate>
            姓名:
            <asp:Label ID="姓名Label1" runat="server" Text='<%# Eval("姓名") %>' />
            <br />
            职号:
            <asp:Label ID="职工号Label1" runat="server" Text='<%# Eval("职工号") %>' />
            <br />
            年龄:
            <asp:TextBox ID="年龄TextBox" runat="server" Text='<%# Bind("年龄") %>' />
            <br />
            学院:
            <asp:TextBox ID="学院TextBox" runat="server" Text='<%# Bind("学院") %>' />
            <br />
            职位:
            <asp:TextBox ID="职位TextBox" runat="server" Text='<%# Bind("职位") %>' />
            <br />
            性别:
            <asp:TextBox ID="性别TextBox" runat="server" Text='<%# Bind("性别") %>' />
            <br />
            民族:
            <asp:TextBox ID="民族TextBox" runat="server" Text='<%# Bind("民族") %>' />
            <br />
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" 
                CommandName="Update" Text="更新" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" 
                CausesValidation="False" CommandName="Cancel" Text="取消" />
        </EditItemTemplate>
        <InsertItemTemplate>
            姓名:
            <asp:TextBox ID="姓名TextBox" runat="server" Text='<%# Bind("姓名") %>' />
            <br />
            职工号:
            <asp:TextBox ID="职工号TextBox" runat="server" Text='<%# Bind("职工号") %>' />
            <br />
            年龄:
            <asp:TextBox ID="年龄TextBox" runat="server" Text='<%# Bind("年龄") %>' />
            <br />
            学院:
            <asp:TextBox ID="学院TextBox" runat="server" Text='<%# Bind("学院") %>' />
            <br />
            职位:
            <asp:TextBox ID="职位TextBox" runat="server" Text='<%# Bind("职位") %>' />
            <br />
            性别:
            <asp:TextBox ID="性别TextBox" runat="server" Text='<%# Bind("性别") %>' />
            <br />
            民族:
            <asp:TextBox ID="民族TextBox" runat="server" Text='<%# Bind("民族") %>' />
            <br />
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" 
                CommandName="Insert" Text="插入" />
            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" 
                CausesValidation="False" CommandName="Cancel" Text="取消" />
        </InsertItemTemplate>
        <%--<ItemTemplate>
            姓名:
            <asp:Label ID="姓名Label" runat="server" Text='<%# Eval("姓名") %>' />
            <br />
            职工号:
            <asp:Label ID="职工号Label" runat="server" Text='<%# Eval("职工号") %>' />
            <br />
            年龄:
            <asp:Label ID="年龄Label" runat="server" Text='<%# Bind("年龄") %>' />
            <br />
            学院:
            <asp:Label ID="学院Label" runat="server" Text='<%# Bind("学院") %>' />
            <br />
            职位:
            <asp:Label ID="职位Label" runat="server" Text='<%# Bind("职位") %>' />
            <br />
            性别:
            <asp:Label ID="性别Label" runat="server" Text='<%# Bind("性别") %>' />
            <br />
            民族:
            <asp:Label ID="民族Label" runat="server" Text='<%# Bind("民族") %>' />
            <br />
            <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" 
                CommandName="Edit" Text="编辑" />
            &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" 
                CommandName="Delete" Text="删除" />
            &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" 
                CommandName="New" Text="新建" />
        </ItemTemplate>--%>
        <ItemTemplate>
         <asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" 
                CommandName="New" Text="新建" Font-Size="Large" />
        </ItemTemplate>
    </asp:FormView>
    </form> 
      </section>
      <a href="#" class="hide nav-off-screen-block" data-toggle="class:nav-off-screen" data-target="#nav"></a>
    </section>
    <!-- /.vbox -->
  </section>
	<script src="../src/js/jquery.min.js"></script>
  <!-- Bootstrap -->
  <script src="../src/js/bootstrap.js"></script>
  <!-- Sparkline Chart -->
  <script src="../src/js/charts/sparkline/jquery.sparkline.min.js"></script>
  <!-- App -->
  <script src="../src/js/app.js"></script>
  <script src="../src/js/app.plugin.js"></script>
  <script src="../src/js/app.data.js"></script>  
</body>
</html>
