using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class 管理员_学位课绩点 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        String s_num = TextBox1.Text;
        SqlConnection sqlconnection = new SqlConnection(ConfigurationManager.ConnectionStrings["大作业ConnectionString2"].ToString());
        sqlconnection.Open();
        SqlCommand sqlcommand = new SqlCommand("select 学号,学分,绩点 from 学生全部成绩 where 学号 ='" + s_num + "'", sqlconnection);
        SqlDataReader reader = sqlcommand.ExecuteReader(CommandBehavior.CloseConnection);
        string s = string.Empty;
        string p = string.Empty;
        string q = string.Empty;
        double d3 = 0;
        double d1 = 0;
        double d2 = 0;
        double d4 = 0;
        double d5 = 0;
        while (reader.Read())
        {
            q = reader["学号"].ToString();
            if (q.Trim() != "")
            {
                s = reader["学分"].ToString();
                d1 = Convert.ToDouble(s);
                d4 = d4 + d1;
                p = reader["绩点"].ToString();
                d2 = Convert.ToDouble(p);
                d3 += d1 * d2;
                绩点.Text = Convert.ToString(d3 / d4);
            }
            else
            {
                绩点.Text = Convert.ToString(d5);
            }
        }
    }
}