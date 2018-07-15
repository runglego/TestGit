using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class 学生信息_个人信息 : System.Web.UI.Page                                     
{
    protected void Page_Load(object sender, EventArgs e)
    {
        String s_num = Session["S_num"].ToString();
        string sqlconnstr = ConfigurationManager.ConnectionStrings["大作业ConnectionString2"].ConnectionString;
        DataSet ds = new DataSet();
        using (SqlConnection sqlconn = new SqlConnection(sqlconnstr))
        {
            SqlDataAdapter sqld = new SqlDataAdapter("select * from 学号 where 学号='"+s_num+"'", sqlconn);
            sqld.Fill(ds, "tab学号");
        }
        DataList1.DataSource = ds.Tables["tab学号"].DefaultView;
        DataList1.DataBind();
    }  
}