using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class 学生信息_选课管理_选课成功 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        String s_num = Session["S_num"].ToString();
        String key=Request["key"];
        SqlConnection sqlconnection = new SqlConnection(ConfigurationManager.ConnectionStrings["大作业ConnectionString2"].ToString());
        sqlconnection.Open();
       SqlCommand sqlcommand = new SqlCommand("select 第几节,星期几,课程名 from 选课表 where 课程号='"+ key +"'", sqlconnection);
       SqlDataReader reader = sqlcommand.ExecuteReader();
       string 第几节 = string.Empty;
       string 星期几 = string.Empty;
       string 课程名 = string.Empty; 
       while (reader.Read())
       {
           第几节 = reader["第几节"].ToString();
           星期几 = reader["星期几"].ToString();
           课程名 = reader["课程名"].ToString();
           
       }
       reader.Close(); 
        SqlCommand sqlcommand1 = new SqlCommand("select * from 课表 where 学号= '"+s_num+"' and 第几节='"+第几节+"'",sqlconnection);
        SqlDataReader reader1 = sqlcommand1.ExecuteReader();
        string 星期几1 = string.Empty;
        string 星期几2 = string.Empty;
        string 星期几3 = string.Empty;
        string 星期几4 = string.Empty;
        string 星期几5 = string.Empty;
        string 星期几6 = string.Empty;
        string 星期几7 = string.Empty;
        while (reader1.Read())
        {
            星期几1 = reader1["星期一"].ToString();
            星期几2 = reader1["星期二"].ToString();
            星期几3 = reader1["星期三"].ToString();
            星期几4 = reader1["星期四"].ToString();
            星期几5 = reader1["星期五"].ToString();
            星期几6 = reader1["星期六"].ToString();
            星期几7 = reader1["星期日"].ToString();
        }
        reader1.Close();
        if (星期几.Trim()=="星期一" && 星期几1.Trim()== "")
        {  
            SqlCommand sqlcommand2 = new SqlCommand("update 课表 set 星期一 = '"+课程名+"' where 学号 = '"+s_num+"' and 第几节 = '"+第几节+"' ", sqlconnection);
            sqlcommand2.ExecuteNonQuery(); 
            Response.Write("<script>alert('选课成功!');window.location.href='选课方案.aspx'</script>");
        }
        else if(星期几.Trim()=="星期二" && 星期几2.Trim() == "")
        {
            SqlCommand sqlcommand3 = new SqlCommand("update 课表 set 星期二 = '" + 课程名 + "' where 学号 = '" + s_num + "' and 第几节 = '" + 第几节 + "' ", sqlconnection);
            sqlcommand3.ExecuteNonQuery(); 
           Response.Write("<script>alert('选课成功!');window.location.href='选课方案.aspx'</script>");
        }
        else if (星期几.Trim() == "星期三" && 星期几3.Trim() == "")
        {
            SqlCommand sqlcommand4 = new SqlCommand("update 课表 set 星期三 = '" + 课程名 + "' where 学号 = '" + s_num + "' and 第几节 = '" + 第几节 + "' ", sqlconnection);
            sqlcommand4.ExecuteNonQuery(); 
            Response.Write("<script>alert('选课成功!');window.location.href='选课方案.aspx'</script>");
        }
        else if (星期几.Trim() == "星期四" && 星期几4.Trim() == "")
        {
            SqlCommand sqlcommand5 = new SqlCommand("update 课表 set 星期四 = '" + 课程名 + "' where 学号 = '" + s_num + "' and 第几节 = '" + 第几节 + "' ", sqlconnection);
            sqlcommand5.ExecuteNonQuery(); 
            Response.Write("<script>alert('选课成功!');window.location.href='选课方案.aspx'</script>");
        }
        else if (星期几.Trim() == "星期五" && 星期几5.Trim() == "")
        {
            SqlCommand sqlcommand6 = new SqlCommand("update 课表 set 星期五 = '" + 课程名 + "' where 学号 = '" + s_num + "' and 第几节 = '" + 第几节 + "' ", sqlconnection);
            sqlcommand6.ExecuteNonQuery(); 
            Response.Write("<script>alert('选课成功!');window.location.href='选课方案.aspx'</script>");
        }
        else if (星期几.Trim() == "星期六" && 星期几6.Trim() == "")
        {
            SqlCommand sqlcommand7 = new SqlCommand("update 课表 set 星期六 = '" + 课程名 + "' where 学号 = '" + s_num + "' and 第几节 = '" + 第几节 + "' ", sqlconnection);
            sqlcommand7.ExecuteNonQuery(); 
            Response.Write("<script>alert('选课成功!');window.location.href='选课方案.aspx'</script>");
        }
        else if (星期几.Trim() == "星期日" && 星期几7.Trim() == "")
        {
            SqlCommand sqlcommand8 = new SqlCommand("update 课表 set 星期日 = '" + 课程名 + "' where 学号 = '" + s_num + "' and 第几节 = '" + 第几节 + "' ", sqlconnection);
            sqlcommand8.ExecuteNonQuery(); 
            Response.Write("<script>alert('选课成功!');window.location.href='选课方案.aspx'</script>");
        }
        else
        {
            Response.Write("<script>alert('选课失败!课表中已存在该课程！');window.location.href='选课方案.aspx'</script>");
        }
    }
}