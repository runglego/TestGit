using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class 教师注册 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void 注册(object sender, EventArgs e)
    {
        string num = T_num.Text.ToString();
        string password = T_password.Text.ToString();
        string name1 = name.Text.ToString();
        string xueyuan1 = xueyuan.Text.ToString();
        string zhicheng1 = zhicheng.Text.ToString();
        string sex1 = sex.Text.ToString();
        string tel1 = tel.Text.ToString();
        string minzu1 = minzu.Text.ToString();
        string jiguan1 = jiguan.Text.ToString();
        SqlConnection sqlconnection = new SqlConnection(ConfigurationManager.ConnectionStrings["大作业ConnectionString2"].ToString());
        sqlconnection.Open();
        SqlCommand sqlcommand = new SqlCommand("insert into 教师(职工号,密码,姓名,学院,职称,性别,电话,民族,籍贯) values(@nu,@pw,@name,@xueyuan,@zhicheng,@sex,@dianhua,@minzu,@jiguan) ", sqlconnection);
        sqlcommand.Parameters.AddWithValue("nu", num);
        sqlcommand.Parameters.AddWithValue("pw", password);
        sqlcommand.Parameters.AddWithValue("name", name1);
        sqlcommand.Parameters.AddWithValue("xueyuan", xueyuan1);
        sqlcommand.Parameters.AddWithValue("zhicheng", zhicheng1);
        sqlcommand.Parameters.AddWithValue("sex", sex1);
        sqlcommand.Parameters.AddWithValue("dianhua", tel1);
        sqlcommand.Parameters.AddWithValue("minzu", minzu1);
        sqlcommand.Parameters.AddWithValue("jiguan", jiguan1);
        sqlcommand.ExecuteNonQuery();
        Response.Write("<script>alert('注册成功!');window.location.href='教师登录.aspx'</script>");
        sqlcommand.Dispose();
        sqlconnection.Dispose();
    }
}