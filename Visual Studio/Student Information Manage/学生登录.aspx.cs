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
    protected void 学生登录(object sender, EventArgs e)
    {
        string S_num = Request["S_num"].ToString();
        string S_password = Request["S_password"].ToString();
        Session["S_num"] = S_num;
        this.Log(S_num, S_password);
    }
    public void Log(string S_num, string S_password)
    {
        SqlConnection sqlconnection = new SqlConnection(ConfigurationManager.ConnectionStrings["大作业ConnectionString2"].ToString());
        try
        {

            sqlconnection.Open();
            SqlCommand sqlcommand = new SqlCommand("select * from 学号 where 学号='" + S_num + "'and 密码 = '" + S_password + "'", sqlconnection);
            SqlDataReader reader = sqlcommand.ExecuteReader(CommandBehavior.CloseConnection);
            string S_name = string.Empty;
            string S_pwd = string.Empty;
            while (reader.Read())
            {
                S_name = reader["学号"].ToString();
                S_pwd = reader["密码"].ToString();
            }
            if (S_num!="" && S_password!="" && S_name.Trim() == S_num.Trim() && S_pwd.Trim() == S_password.Trim())
            {
                reader.Close();
                sqlconnection.Close();
                Response.Redirect("学生主页.aspx");
            }
            else
            {
                Response.Write("<script>alert('Login error!');window.location.href='学生登录.aspx'</script>");

            }

        }
        catch (Exception ea)
        {
            Response.Write("<script>alert('catch!');</script>");
        }
    }

}