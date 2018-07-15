using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class 学生信息_学生成绩_学生全部成绩 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        String s_num = Session["S_num"].ToString();
        string sqlconnstr = ConfigurationManager.ConnectionStrings["大作业ConnectionString2"].ConnectionString;
        DataSet ds = new DataSet();
        using (SqlConnection sqlconn = new SqlConnection(sqlconnstr))
        {
            SqlDataAdapter sqld = new SqlDataAdapter("select * from 学生全部成绩 where 学号 = '"+s_num+"'", sqlconn);
            sqld.Fill(ds, "tab学生全部成绩");
        }
        DataList1.DataSource = ds.Tables["tab学生全部成绩"].DefaultView;
        DataList1.DataBind();
    }
}