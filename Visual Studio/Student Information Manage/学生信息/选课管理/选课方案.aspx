<%@ Page Language="C#" AutoEventWireup="true" CodeFile="选课方案.aspx.cs" Inherits="学生信息_选课管理_选课方案" %>

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
         <p style="font-size: large">欢迎来到教务系统&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p>
          <p style="font-size: large"><a href="../../学生登录.aspx">注销</a>
        </header>
        <form id="Form1" runat="server">
        <asp:DataList ID="DataList1" runat="server" Height="300" 
          >
    <ItemTemplate>
    <table runat="server">
    <tr>
    <td width="600"><%#Eval("课程号") %></td>
    <td width="600"><%#Eval("课程名") %></td>
    <td width="600"><%#Eval("第几节") %></td>
    <td width="600"><%#Eval("星期几") %></td>
    <td width="600"><%#Eval("上课地点") %></td>
    <td width="600"><%#Eval("学时") %></td>
    <td width="600"><%#Eval("学分") %></td>
    <td width="600"><%#Eval("授课老师") %></td>
    <td width="300"><a href='选课成功.aspx?key=<%#Eval("课程号") %>' style="color: #FF0000">选课</a></td>
    </tr>
        </table>
    </ItemTemplate>
    </asp:DataList>
    </form>
        
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
