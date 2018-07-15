<%@ Page Language="C#" AutoEventWireup="true" CodeFile="选课公告1.aspx.cs" Inherits="管理员_选课公告1" %>

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
          <p style="font-size: large"><a href="../../学生登录.aspx">注销</a>
        </header>
        <form runat="server">
   <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            DataKeyNames="段落" DataSourceID="SqlDataSource1" Font-Size="Large" Width="1200">
       <Columns>
           <asp:BoundField DataField="段落" HeaderText="段落" ReadOnly="True" 
               SortExpression="段落" />
           <asp:BoundField DataField="句子" HeaderText="句子" SortExpression="句子" />
           <asp:CommandField ShowEditButton="True" />
           <asp:CommandField ShowDeleteButton="True" />
       </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:大作业ConnectionString24 %>" 
            DeleteCommand="DELETE FROM [选课公告] WHERE [段落] = @段落" 
            InsertCommand="INSERT INTO [选课公告] ([段落], [句子], [序号]) VALUES (@段落, @句子, @序号)" 
            SelectCommand="SELECT * FROM [选课公告]" 
            UpdateCommand="UPDATE [选课公告] SET [句子] = @句子, [序号] = @序号 WHERE [段落] = @段落">
            <DeleteParameters>
                <asp:Parameter Name="段落" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="段落" Type="String" />
                <asp:Parameter Name="句子" Type="String" />
                <asp:Parameter Name="序号" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="句子" Type="String"  />
                <asp:Parameter Name="序号" Type="String" />
                <asp:Parameter Name="段落" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
<asp:FormView ID="FormView1" runat="server" DataKeyNames="段落" 
            DataSourceID="SqlDataSource1" Font-Size="Large" Width="1200">
    <EditItemTemplate>
        段落:
        <asp:Label ID="段落Label1" runat="server" Text='<%# Eval("段落") %>'  />
        <br />
        句子:
        <asp:TextBox ID="句子TextBox" runat="server" Text='<%# Bind("句子") %>' />
        <br />
        序号:
        <asp:TextBox ID="序号TextBox" runat="server" Text='<%# Bind("序号") %>' />
        <br />
        <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" 
            CommandName="Update" Text="更新" />
        &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" 
            CausesValidation="False" CommandName="Cancel" Text="取消" />
    </EditItemTemplate>
    <InsertItemTemplate>
        段落:
        <asp:TextBox ID="段落TextBox" runat="server" Text='<%# Bind("段落") %>' />
        <br />
        句子:
        <asp:TextBox ID="句子TextBox" runat="server" Text='<%# Bind("句子") %>' />
        <br />
        <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" 
            CommandName="Insert" Text="插入" Font-Size="Large" />
        &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" 
            CausesValidation="False" CommandName="Cancel" Text="取消" />
    </InsertItemTemplate>
    <%--<ItemTemplate>
        段落:
        <asp:Label ID="段落Label" runat="server" Text='<%# Eval("段落") %>' />
        <br />
        句子:
        <asp:Label ID="句子Label" runat="server" Text='<%# Bind("句子") %>' />
        <br />
        序号:
        <asp:Label ID="序号Label" runat="server" Text='<%# Bind("序号") %>' />
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
              CommandName="New" Text="新建" Font-Size="Larger" />
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
