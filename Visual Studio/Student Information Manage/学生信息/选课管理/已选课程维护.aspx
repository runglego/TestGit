<%@ Page Language="C#" AutoEventWireup="true" CodeFile="已选课程维护.aspx.cs" Inherits="学生信息_选课管理_已选课程维护" %>

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
                    <a href="已选课程维护.aspx"">已选课程维护</a>
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
        <form runat="server">
     <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            DataKeyNames="第几节,学号" DataSourceID="SqlDataSource1" Width="1200px" Font-Size="Large">
         <Columns>
             <asp:BoundField DataField="第几节" HeaderText="第几节" ReadOnly="True" 
                 SortExpression="第几节" />
             <asp:BoundField DataField="星期一" HeaderText="星期一" SortExpression="星期一" />
             <asp:BoundField DataField="星期二" HeaderText="星期二" SortExpression="星期二" />
             <asp:BoundField DataField="星期三" HeaderText="星期三" SortExpression="星期三" />
             <asp:BoundField DataField="星期四" HeaderText="星期四" SortExpression="星期四" />
             <asp:BoundField DataField="星期五" HeaderText="星期五" SortExpression="星期五" />
             <asp:BoundField DataField="星期六" HeaderText="星期六" SortExpression="星期六" />
             <asp:BoundField DataField="星期日" HeaderText="星期日" SortExpression="星期日" />
             <asp:BoundField DataField="学号" HeaderText="学号" ReadOnly="True" 
                 SortExpression="学号" />
             <asp:CommandField ShowEditButton="True" />
         </Columns>
        </asp:GridView>   
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:大作业ConnectionString15 %>" 
            DeleteCommand="DELETE FROM [课表] WHERE [第几节] = @第几节 AND [学号] = @学号" 
            InsertCommand="INSERT INTO [课表] ([第几节], [星期一], [星期二], [星期三], [星期四], [星期五], [星期六], [星期日], [学号]) VALUES (@第几节, @星期一, @星期二, @星期三, @星期四, @星期五, @星期六, @星期日, @学号)" 
            SelectCommand="SELECT * FROM [课表] WHERE ([学号] = @学号)" 
            
            UpdateCommand="UPDATE [课表] SET [星期一] = @星期一, [星期二] = @星期二, [星期三] = @星期三, [星期四] = @星期四, [星期五] = @星期五, [星期六] = @星期六, [星期日] = @星期日 WHERE [第几节] = @第几节 AND [学号] = @学号">
            <DeleteParameters>
                <asp:Parameter Name="第几节" Type="String" />
                <asp:Parameter Name="学号" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="第几节" Type="String" />
                <asp:Parameter Name="星期一" Type="String" />
                <asp:Parameter Name="星期二" Type="String" />
                <asp:Parameter Name="星期三" Type="String" />
                <asp:Parameter Name="星期四" Type="String" />
                <asp:Parameter Name="星期五" Type="String" />
                <asp:Parameter Name="星期六" Type="String" />
                <asp:Parameter Name="星期日" Type="String" />
                <asp:Parameter Name="学号" Type="String" />
            </InsertParameters>
            <SelectParameters>
                <asp:SessionParameter Name="学号" SessionField="s_num" Type="String" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="星期一" Type="String" />
                <asp:Parameter Name="星期二" Type="String" />
                <asp:Parameter Name="星期三" Type="String" />
                <asp:Parameter Name="星期四" Type="String" />
                <asp:Parameter Name="星期五" Type="String" />
                <asp:Parameter Name="星期六" Type="String" />
                <asp:Parameter Name="星期日" Type="String" />
                <asp:Parameter Name="第几节" Type="String" />
                <asp:Parameter Name="学号" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
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
