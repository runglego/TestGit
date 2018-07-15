using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class 登录 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void 教师登录(object sender, EventArgs e)
    {
        string T_num = Request["T_num"].ToString();
        string T_password = Request["T_password"].ToString();
        Session["T_num"] = T_num;
        this.Log(T_num, T_password);
    }
    public void Log(string T_num, string T_password)
    {
        SqlConnection sqlconnection = new SqlConnection(ConfigurationManager.ConnectionStrings["大作业ConnectionString2"].ToString());
        try
        {

            sqlconnection.Open();
            SqlCommand sqlcommand = new SqlCommand("select * from 教师 where 职工号='" + T_num + "'and 密码 = '" + T_password + "'", sqlconnection);
            SqlDataReader reader = sqlcommand.ExecuteReader(CommandBehavior.CloseConnection);
            string T_name = string.Empty;
            string T_pwd = string.Empty;
            while (reader.Read())
            {
                T_name = reader["学号"].ToString();
                T_pwd = reader["密码"].ToString();
            }
            if (T_num != "" && T_password != "" && T_name.Trim() == T_num.Trim() && T_pwd.Trim() == T_password.Trim())
            {
                reader.Close();
                sqlconnection.Close();
                Response.Redirect("教师主页.aspx");
            }
            else
            {
                Response.Write("<script>alert('Login error!');</script>");

            }

        }
        catch (Exception ea)
        {
            Response.Write("<script>alert('catch!');window.location.href='教师登录.aspx'</script>");
        }
    }

}