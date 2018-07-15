using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class 注册试用 : System.Web.UI.Page
{
    protected void 注册(object sender, EventArgs e)
    {
        string num =S_num.Text.ToString();
        string password =S_password.Text.ToString();
        string name1 = name.Text.ToString();
        string xueyuan1 = xueyuan.Text.ToString();
        string zhuanye1 = zhuanye.Text.ToString();
        string banji1 = banji.Text.ToString();
        string address1 = address.Text.ToString();
        string minzu1 = minzu.Text.ToString();
        string tel1 = tel.Text.ToString();
        string sex1 = sex.Text.ToString();
        SqlConnection sqlconnection = new SqlConnection(ConfigurationManager.ConnectionStrings["大作业ConnectionString2"].ToString());
        sqlconnection.Open();
        SqlCommand sqlcommand = new SqlCommand("insert into 学号(学号,密码,姓名,学院,专业,班级,籍贯,民族,电话,性别) values(@nu,@pw,@name,@xueyuan,@zhuanye,@banji,@jiguan,@minzu,@dianhua,@xingbie) ", sqlconnection);
        sqlcommand.Parameters.AddWithValue("nu", num);
        sqlcommand.Parameters.AddWithValue("pw", password);
        sqlcommand.Parameters.AddWithValue("name", name1);
        sqlcommand.Parameters.AddWithValue("xueyuan", xueyuan1);
        sqlcommand.Parameters.AddWithValue("zhuanye", zhuanye1);
        sqlcommand.Parameters.AddWithValue("banji", banji1);
        sqlcommand.Parameters.AddWithValue("jiguan", address1);
        sqlcommand.Parameters.AddWithValue("minzu", minzu1);
        sqlcommand.Parameters.AddWithValue("dianhua", tel1);
        sqlcommand.Parameters.AddWithValue("xingbie", sex1);
        sqlcommand.ExecuteNonQuery();
        Response.Write("<script>alert('注册成功!');window.location.href='学生登录.aspx'</script>");
        sqlcommand.Dispose();
        sqlconnection.Dispose();
    }
}