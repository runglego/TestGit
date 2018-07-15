<%@ Page Language="C#" AutoEventWireup="true" CodeFile="学生信息1.aspx.cs" Inherits="管理员_个人信息1" %>

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
        <form id="Form1" runat="server">
      <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
              DataKeyNames="学号" DataSourceID="SqlDataSource1" Width="1250px" 
            Font-Size="Large">
          <Columns>
              <asp:BoundField DataField="学号" HeaderText="学号" ReadOnly="True" 
                  SortExpression="学号" />
              <asp:BoundField DataField="姓名" HeaderText="姓名" SortExpression="姓名" />
              <asp:BoundField DataField="密码" HeaderText="密码" SortExpression="密码" />
              <asp:BoundField DataField="学院" HeaderText="学院" SortExpression="学院" />
              <asp:BoundField DataField="专业" HeaderText="专业" SortExpression="专业" />
              <asp:BoundField DataField="班级" HeaderText="班级" SortExpression="班级" />
              <asp:BoundField DataField="籍贯" HeaderText="籍贯" SortExpression="籍贯" />
              <asp:BoundField DataField="民族" HeaderText="民族" SortExpression="民族" />
              <asp:BoundField DataField="电话" HeaderText="电话" SortExpression="电话" />
              <asp:BoundField DataField="性别" HeaderText="性别" SortExpression="性别" />
              <asp:CommandField ShowEditButton="True" />
              <asp:CommandField ShowDeleteButton="True" />
          </Columns>
          </asp:GridView>    
          <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
              ConnectionString="<%$ ConnectionStrings:大作业ConnectionString12 %>" 
              DeleteCommand="DELETE FROM [学号] WHERE [学号] = @学号" 
              InsertCommand="INSERT INTO [学号] ([学号], [姓名], [密码], [学院], [专业], [班级], [籍贯], [民族], [电话], [性别]) VALUES (@学号, @姓名, @密码, @学院, @专业, @班级, @籍贯, @民族, @电话, @性别)" 
              SelectCommand="SELECT * FROM [学号]" 
              UpdateCommand="UPDATE [学号] SET [姓名] = @姓名, [密码] = @密码, [学院] = @学院, [专业] = @专业, [班级] = @班级, [籍贯] = @籍贯, [民族] = @民族, [电话] = @电话, [性别] = @性别 WHERE [学号] = @学号">
              <DeleteParameters>
                  <asp:Parameter Name="学号" Type="String" />
              </DeleteParameters>
              <InsertParameters>
                  <asp:Parameter Name="学号" Type="String" />
                  <asp:Parameter Name="姓名" Type="String" />
                  <asp:Parameter Name="密码" Type="String" />
                  <asp:Parameter Name="学院" Type="String" />
                  <asp:Parameter Name="专业" Type="String" />
                  <asp:Parameter Name="班级" Type="String" />
                  <asp:Parameter Name="籍贯" Type="String" />
                  <asp:Parameter Name="民族" Type="String" />
                  <asp:Parameter Name="电话" Type="String" />
                  <asp:Parameter Name="性别" Type="String" />
              </InsertParameters>
              <UpdateParameters>
                  <asp:Parameter Name="姓名" Type="String" />
                  <asp:Parameter Name="密码" Type="String" />
                  <asp:Parameter Name="学院" Type="String" />
                  <asp:Parameter Name="专业" Type="String" />
                  <asp:Parameter Name="班级" Type="String" />
                  <asp:Parameter Name="籍贯" Type="String" />
                  <asp:Parameter Name="民族" Type="String" />
                  <asp:Parameter Name="电话" Type="String" />
                  <asp:Parameter Name="性别" Type="String" />
                  <asp:Parameter Name="学号" Type="String" />
              </UpdateParameters>
          </asp:SqlDataSource>
<asp:FormView ID="FormView1" runat="server" DataKeyNames="学号" 
            DataSourceID="SqlDataSource1" Font-Size="Large">
    <EditItemTemplate>
        学号:
        <asp:Label ID="学号Label1" runat="server" Text='<%# Eval("学号") %>' />
        <br />
        姓名:
        <asp:TextBox ID="姓名TextBox" runat="server" Text='<%# Bind("姓名") %>' />
        <br />
        密码:
        <asp:TextBox ID="密码TextBox" runat="server" Text='<%# Bind("密码") %>' />
        <br />
        学院:
        <asp:TextBox ID="学院TextBox" runat="server" Text='<%# Bind("学院") %>' />
        <br />
        专业:
        <asp:TextBox ID="专业TextBox" runat="server" Text='<%# Bind("专业") %>' />
        <br />
        班级:
        <asp:TextBox ID="班级TextBox" runat="server" Text='<%# Bind("班级") %>' />
        <br />
        籍贯:
        <asp:TextBox ID="籍贯TextBox" runat="server" Text='<%# Bind("籍贯") %>' />
        <br />
        民族:
        <asp:TextBox ID="民族TextBox" runat="server" Text='<%# Bind("民族") %>' />
        <br />
        电话:
        <asp:TextBox ID="电话TextBox" runat="server" Text='<%# Bind("电话") %>' />
        <br />
        性别:
        <asp:TextBox ID="性别TextBox" runat="server" Text='<%# Bind("性别") %>' />
        <br />
        <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" 
            CommandName="Update" Text="更新" />
        &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" 
            CausesValidation="False" CommandName="Cancel" Text="取消" />
    </EditItemTemplate>
    <InsertItemTemplate>
        学号:
        <asp:TextBox ID="学号TextBox" runat="server" Text='<%# Bind("学号") %>' />
        <br />
        姓名:
        <asp:TextBox ID="姓名TextBox" runat="server" Text='<%# Bind("姓名") %>' />
        <br />
        密码:
        <asp:TextBox ID="密码TextBox" runat="server" Text='<%# Bind("密码") %>' />
        <br />
        学院:
        <asp:TextBox ID="学院TextBox" runat="server" Text='<%# Bind("学院") %>' />
        <br />
        专业:
        <asp:TextBox ID="专业TextBox" runat="server" Text='<%# Bind("专业") %>' />
        <br />
        班级:
        <asp:TextBox ID="班级TextBox" runat="server" Text='<%# Bind("班级") %>' />
        <br />
        籍贯:
        <asp:TextBox ID="籍贯TextBox" runat="server" Text='<%# Bind("籍贯") %>' />
        <br />
        民族:
        <asp:TextBox ID="民族TextBox" runat="server" Text='<%# Bind("民族") %>' />
        <br />
        电话:
        <asp:TextBox ID="电话TextBox" runat="server" Text='<%# Bind("电话") %>' />
        <br />
        性别:
        <asp:TextBox ID="性别TextBox" runat="server" Text='<%# Bind("性别") %>' />
        <br />
        <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" 
            CommandName="Insert" Text="插入" />
        &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" 
            CausesValidation="False" CommandName="Cancel" Text="取消" />
    </InsertItemTemplate>
    <%--<ItemTemplate>
        学号:
        <asp:Label ID="学号Label" runat="server" Text='<%# Eval("学号") %>' />
        <br />
        姓名:
        <asp:Label ID="姓名Label" runat="server" Text='<%# Bind("姓名") %>' />
        <br />
        密码:
        <asp:Label ID="密码Label" runat="server" Text='<%# Bind("密码") %>' />
        <br />
        学院:
        <asp:Label ID="学院Label" runat="server" Text='<%# Bind("学院") %>' />
        <br />
        专业:
        <asp:Label ID="专业Label" runat="server" Text='<%# Bind("专业") %>' />
        <br />
        班级:
        <asp:Label ID="班级Label" runat="server" Text='<%# Bind("班级") %>' />
        <br />
        籍贯:
        <asp:Label ID="籍贯Label" runat="server" Text='<%# Bind("籍贯") %>' />
        <br />
        民族:
        <asp:Label ID="民族Label" runat="server" Text='<%# Bind("民族") %>' />
        <br />
        电话:
        <asp:Label ID="电话Label" runat="server" Text='<%# Bind("电话") %>' />
        <br />
        性别:
        <asp:Label ID="性别Label" runat="server" Text='<%# Bind("性别") %>' />
        <br />
        <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" 
            CommandName="Edit" Text="编辑" />
        &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" 
            CommandName="Delete" Text="删除" />
        &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" 
            CommandName="New" Text="新建" />
    </ItemTemplate>--%>
    <ItemTemplate>
         <asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="新建" Font-Size="Larger" />
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
