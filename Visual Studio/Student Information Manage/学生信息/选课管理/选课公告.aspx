<%@ Page Language="C#" AutoEventWireup="true" CodeFile="选课公告.aspx.cs" Inherits="学生信息_选课管理_选课公告" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
  <meta charset="utf-8" />
  <title>教务系统</title>
  <meta name="description" content="app, web app, responsive, admin dashboard, admin, flat, flat ui, ui kit, off screen nav" />
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />
  <link rel="stylesheet" href="../../src/css/bootstrap.css" type="text/css" />
  <link rel="stylesheet" href="../../src/css/animate.css" type="text/css" />
  <link rel="stylesheet" href="../../src/css/font-awesome.min.css" type="text/css" />
  <link rel="stylesheet" href="../../src/css/font.css" type="text/css" cache="false" />
  <link rel="stylesheet" href="../../src/css/plugin.css" type="text/css" />
  <link rel="stylesheet" href="../../src/css/app.css" type="text/css" />
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
                <a href="../个人信息.aspx">
                  <i class="fa fa-eye" ></i>
                  <span>个人信息</span>
                </a>
              </li>
              <li class="dropdown-submenu">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown" >
                  <i class="fa fa-flask"></i>
                  <span>教师信息</span>
                </a>
                <ul class="dropdown-menu">                 
                  <li>
                    <a href="../航海学院.aspx">航海学院</a>
                  </li>
                  <li>
                    <a href="../信息科学技术学院.aspx">信息科学技术学院</a>
                  </li>
                  <li>
                    <a href="../装备学院.aspx">装备运输与海洋学院</a>
                  </li>
                  <li>
                    <a href="../交管学院.aspx">交通运输管理学院</a>
                  </li>
                  <li>
                    <a href="../外国语学院.aspx">外国语学院</a>
                  </li>
                  <li>
                    <a href="../人文学院.aspx">人文学院</a>
                  </li>
                   <li>
                    <a href="../物理系.aspx">物理系</a>
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
                    <a href="选课公告.aspx">选课公告</a>                    
                  </li>
                  <li>
                    <a href="选课方案.aspx">选课方案</a>              
                  </li>
                  <li>
                    <a href="已选课程维护.aspx">已选课程维护</a>
                  </li>
                  <li>
                    <a href="学期课表.aspx">学期课表</a>
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
                    <a href="../学生成绩/学生全部成绩.aspx">学生全部成绩</a>
                  </li>
                  <li>
                    <a href="../学生成绩/学位课绩点.aspx">学位课绩点</a>
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
          <p style="font-size: large">欢迎来到教务系统</p>
          <form id="Form1" runat="server">
           <asp:Button ID="Button1" runat="server" Text="注销" PostBackUrl="~/学生登录.aspx"></asp:Button>
           </form>
        </header>
        <p align="center" style="font-size: xx-large">
        教务系统中选课操作步骤
        </p>
        <%--<p style="font-size: x-large" align="left">第一步：点击左侧的“选课方案”菜单，进入默认“本学期计划课程”页面，在该页面可以查看到本学期的方案课程列表。注意：因体育课课程号相同，所选项目在选课限制说明体现。</p>
         <asp:Image ID="Image1" runat="server" ImageUrl="~/图片1.png"></asp:Image>
         <p style="font-size: x-large">第二步：在想要选修的课程前面的多选框中点击，点击右下角的“确定”按钮，系统弹出“选课成功”的提示，并且所选课程前面的多选框消失。</p>
         <asp:Image ID="Image2" runat="server" ImageUrl="~/图片2.png"></asp:Image>
         <p style="font-size: x-large">第三步：点击左侧菜单“已选课程维护”，查看成功选中的课程。</p>
         <asp:Image ID="Image3" runat="server" ImageUrl="~/图片3.png"></asp:Image>
         <p style="font-size: x-large">第四步：如果需要退选，点击左侧菜单“已选课程删除”，在相应的课程名称前面点击“删除”字样。系统弹出对话框，点击“确定”，完成退选课程。</p>
         <asp:Image ID="Image4" runat="server" ImageUrl="~/图片4.png"></asp:Image>
         <p style="font-size: x-large">点击左侧菜单“未选中，已删除课程”，可以看到退选的课程记录。</p>--%>
<asp:DataList ID="DataList1" runat="server" DataKeyField="段落" 
        DataSourceID="SqlDataSource1">
    <ItemTemplate>
        <asp:Label ID="段落Label" runat="server" Text='<%# Eval("段落") %>' Font-Size="Larger" />
        <asp:Label ID="句子Label" runat="server" Text='<%# Eval("句子") %>' Font-Size="Larger" />
        <br /><br />
<asp:Image ID="Image1" runat="server" src='../../1_p.png'></asp:Image>
    </ItemTemplate>
    </asp:DataList>

      <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:大作业ConnectionString20 %>" 
        SelectCommand="SELECT * FROM [选课公告]"></asp:SqlDataSource>

      </section>
      <a href="#" class="hide nav-off-screen-block" data-toggle="class:nav-off-screen" data-target="#nav"></a>
    </section>
    <!-- /.vbox -->
  </section>
	<script src="../../src/js/jquery.min.js"></script>
  <!-- Bootstrap -->
  <script src="../../src/js/bootstrap.js"></script>
  <!-- Sparkline Chart -->
  <script src="../../src/js/charts/sparkline/jquery.sparkline.min.js"></script>
  <!-- App -->
  <script src="../../src/js/app.js"></script>
  <script src="../../src/js/app.plugin.js"></script>
  <script src="../../src/js/app.data.js"></script>  
</body>
</html>
